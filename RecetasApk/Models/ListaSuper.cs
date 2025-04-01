using SQLite;
using System.Text.Json;
using System.Text.Json.Serialization;

namespace RecetasApk.Models
{
    [Table("ListaDeCompras")]
    public class ListaSuper
    {
        [PrimaryKey, AutoIncrement]
        public int Id { get; set; }

        // Se almacena en la base de datos como JSON.
        public string ItemsJson { get; set; } = "[]";

        // Campo privado para almacenar la colección en memoria.
        private List<ItemLista>? _items;

        [Ignore]
        public List<ItemLista> Items
        {
            get
            {
                if (_items == null)
                {
                    _items = JsonSerializer.Deserialize<List<ItemLista>>(ItemsJson) ?? new List<ItemLista>();
                }
                return _items;
            }
            set
            {
                _items = value;
                ItemsJson = JsonSerializer.Serialize(_items);
            }
        }
    }
}
