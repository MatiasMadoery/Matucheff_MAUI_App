using RecetasApk.Models;
using RecetasApk.Data;

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
    }
}
