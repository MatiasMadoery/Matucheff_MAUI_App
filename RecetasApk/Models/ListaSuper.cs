using SQLite;

namespace RecetasApk.Models
{

    [Table("Lista De Compras")]
    public class ListaSuper
    {
        [PrimaryKey, AutoIncrement]
        public int Id { get; set; }
        public string Lista { get; set; } = string.Empty;
    
    }
}
