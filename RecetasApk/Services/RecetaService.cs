using RecetasApk.Models;
using RecetasApk.Data;
using System.Text.Json;

namespace RecetasApk.Services
{
    public class RecetaService
    {
        private readonly RecetaDatabase? _database;

        public RecetaService(RecetaDatabase database)
        {
            _database = database ?? throw new ArgumentNullException(nameof(database));
        }

        public Task<List<Receta>> GetRecetasAsync() => _database!.GetRecetasAsync();
        public Task<Receta> GetRecetaAsync(int id) => _database!.GetRecetaAsync(id);
        public Task<int> SaveRecetaAsync(Receta receta) => _database!.SaveRecetaAsync(receta);
        public Task<int> DeleteRecetaAsync(Receta receta) => _database!.DeleteRecetaAsync(receta);
              

        public async Task ExportarRecetasAsync()
        {
            try
            {
                // Obtener todas las recetas desde la base de datos
                var recetas = await _database!.GetRecetasAsync();

                // Serializar la lista de recetas a JSON
                string json = JsonSerializer.Serialize(recetas, new JsonSerializerOptions
                {
                    WriteIndented = true // Para hacerlo más legible
                });

                // Definir la ruta donde guardar el archivo (almacenamiento interno de la app)
                var filePath = Path.Combine(FileSystem.AppDataDirectory, "recetas_backup.json");
                //var filePath = Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.Desktop), "recetas_backup.json");

                // Guardar el archivo en el almacenamiento interno
                await File.WriteAllTextAsync(filePath, json);
                Console.WriteLine($"Backup creado en: {filePath}");

                // Si la app se ejecuta en Android, copiar el archivo a la carpeta de Descargas para facilitar el acceso al usuario
#if ANDROID
                try
                {
                    // Utilizamos Android.OS.Environment para obtener la ruta pública de Descargas
                    var downloadsPath = Android.OS.Environment.GetExternalStoragePublicDirectory(Android.OS.Environment.DirectoryDownloads).AbsolutePath;
                    var exportPath = Path.Combine(downloadsPath, "recetas_backup.json");

                    // Copiar (o sobrescribir) el archivo en la carpeta de Descargas
                    File.Copy(filePath, exportPath, true);
                    Console.WriteLine($"Backup copiado a: {exportPath}");
                }
                catch (Exception ex)
                {
                    Console.WriteLine($"Error al copiar el backup a la carpeta de Descargas: {ex.Message}");
                }
#endif
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Error al exportar recetas: {ex.Message}");
            }
        }


        //Importar Base de Datos
        public async Task ImportarRecetasAsync(string filePath)
        {
            try
            {
                // Leer el contenido del archivo JSON
                string json = await File.ReadAllTextAsync(filePath);

                // Deserializar las recetas, permitiendo que se ignore la diferencia en mayúsculas/minúsculas
                var recetas = JsonSerializer.Deserialize<List<Receta>>(json, new JsonSerializerOptions
                {
                    PropertyNameCaseInsensitive = true
                });

                if (recetas != null)
                {
                    foreach (var receta in recetas)
                    {
                        // Resetear el Id para que se inserte como nueva receta
                        receta.Id = 0;
                        // Guardar cada receta en la base de datos
                        await _database!.SaveRecetaAsync(receta);
                        Console.WriteLine($"Receta guardada: {receta.Nombre}");
                    }

                    Console.WriteLine("Importación completada.");
                }
                else
                {
                    Console.WriteLine("No se encontraron datos válidos en el archivo.");
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Error al importar recetas: {ex.Message}");
            }
        }
    }
}
