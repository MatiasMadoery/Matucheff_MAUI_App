using RecetasApk.Data;
using RecetasApk.Models;

namespace RecetasApk.Services
{
    public class ListaSuperService
    {
        private readonly ListaSuperDataBase? _database;

        public ListaSuperService(ListaSuperDataBase database)
        {
            _database = database ?? throw new ArgumentNullException(nameof(database));
        }

        public Task<List<ListaSuper>> GetListasSuperAsync() => _database!.GetListasSuperAsync();
        public Task<ListaSuper> GetListaSuperAsync(int id) => _database!.GetListaSuperAsync(id);
        public Task<int> SaveListaSuperAsync(ListaSuper listaSuper) => _database!.SaveListaSuperAsync(listaSuper);
        public Task<int> DeleteListaSuperAsync(ListaSuper listaSuper) => _database!.DeleteListaSuperAsync(listaSuper);
    }
}
