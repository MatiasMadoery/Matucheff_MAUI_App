using SQLite;
using RecetasApk.Models;

namespace RecetasApk.Data
{
    public class RecetaDatabase
    {
        private readonly SQLiteAsyncConnection? _database;

        public RecetaDatabase(string dbPath)
        {
            _database = new SQLiteAsyncConnection(dbPath);
            _database.CreateTableAsync<Receta>().Wait();
        }

        //Operaciones CRUD

        public Task<List<Receta>> GetRecetasAsync()
        {
            return _database!.Table<Receta>().ToListAsync();
        }

        public Task<Receta> GetRecetaAsync(int id)
        {
            return _database!.Table<Receta>()
                .FirstOrDefaultAsync(r => r.Id == id);
        }

        public Task<int> SaveRecetaAsync(Receta receta)
        {
            //Si ya existe (Id != de 0) actualiza sino inserta
            return receta.Id != 0
                ? _database!.UpdateAsync(receta)
                : _database!.InsertAsync(receta);
        }
        public Task<int> DeleteRecetaAsync(Receta receta) 
        {
            return _database!.DeleteAsync(receta);
        }
    }
}
