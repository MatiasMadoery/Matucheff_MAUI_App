using RecetasApk.Models;
using SQLite;

namespace RecetasApk.Data
{
    public class ListaSuperDataBase
    {
        private readonly SQLiteAsyncConnection? _database;

        public ListaSuperDataBase(string dbPath)
        {
            _database = new SQLiteAsyncConnection(dbPath);
            _database.CreateTableAsync<ListaSuper>().Wait();
        }

        //Operaciones CRUD

        public Task<List<ListaSuper>> GetListasSuperAsync()
        {
            return _database!.Table<ListaSuper>().ToListAsync();
        }

        public Task<ListaSuper> GetListaSuperAsync(int id)
        {
            return _database!.Table<ListaSuper>()
                .FirstOrDefaultAsync(r => r.Id == id);
        }

        public Task<int> SaveListaSuperAsync(ListaSuper listaSuper)
        {
            //Si ya existe (Id != de 0) actualiza sino inserta
            return listaSuper.Id != 0
                ? _database!.UpdateAsync(listaSuper)
                : _database!.InsertAsync(listaSuper);
        }
        public Task<int> DeleteListaSuperAsync(ListaSuper listaSuper)
        {
            return _database!.DeleteAsync(listaSuper);
        }

    }
}
