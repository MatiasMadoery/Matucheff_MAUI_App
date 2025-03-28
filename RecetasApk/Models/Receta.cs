using SQLite;

namespace RecetasApk.Models
{
    [Table("Recetas")]
    public class Receta
    {
        [PrimaryKey, AutoIncrement]
        public int Id { get; set; }
        public string Nombre { get; set; } = string.Empty;
        public string Ingredientes  { get; set; } = string.Empty;
        public string Instrucciones {  get; set; } = string.Empty;
    }
}
