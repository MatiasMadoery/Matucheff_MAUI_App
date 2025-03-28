using Microsoft.Extensions.Logging;
using RecetasApk.Data;
using RecetasApk.Services;

namespace RecetasApk
{
    public static class MauiProgram
    {
        public static MauiApp CreateMauiApp()
        {
            var builder = MauiApp.CreateBuilder();
            builder
                .UseMauiApp<App>()
                //.UseMauiBlazorWebView()
                .ConfigureFonts(fonts =>
                {
                    fonts.AddFont("OpenSans-Regular.ttf", "OpenSansRegular");
                });

            builder.Services.AddMauiBlazorWebView();

#if DEBUG
    		builder.Services.AddBlazorWebViewDeveloperTools();
    		builder.Logging.AddDebug();
#endif
            //Configurar ruta y registrar la base de datos y el servicio
            string dbPath = Path.Combine(FileSystem.AppDataDirectory, "Recetas.db3");
            builder.Services.AddSingleton<RecetaDatabase>(s => new RecetaDatabase(dbPath));
            builder.Services.AddSingleton<RecetaService>();
            return builder.Build();
        }
    }
}
