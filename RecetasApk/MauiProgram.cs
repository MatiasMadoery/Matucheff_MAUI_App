using Microsoft.Extensions.Logging;
using RecetasApk.Data;
using RecetasApk.Services;
using System.IO;
using Microsoft.Maui.Storage;

namespace RecetasApk
{
    public static class MauiProgram
    {
        public static MauiApp CreateMauiApp()
        {
            var builder = MauiApp.CreateBuilder();
            builder
                .UseMauiApp<App>()                
                .ConfigureFonts(fonts =>
                {
                    fonts.AddFont("OpenSans-Regular.ttf", "OpenSansRegular");
                });


            builder.Services.AddMauiBlazorWebView();
    		builder.Services.AddBlazorWebViewDeveloperTools();
    		builder.Logging.AddDebug();

            //Configurar ruta y registrar la base de datos y el servicio
            string dbPath = Path.Combine(FileSystem.AppDataDirectory, "Recetas.db3");

            //Eliminar la base de datos existente(para desarrollo)
            //if (File.Exists(dbPath))
            //{
            //    File.Delete(dbPath);
            //    Console.WriteLine("La base de datos ha sido eliminada.");
            //}

            builder.Services.AddSingleton<RecetaDatabase>(s => new RecetaDatabase(dbPath));
            builder.Services.AddSingleton<RecetaService>();
            builder.Services.AddSingleton<ListaSuperDataBase>(s => new ListaSuperDataBase(dbPath));
            builder.Services.AddSingleton<ListaSuperService>();
            return builder.Build();
        }
    }
}
