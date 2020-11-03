using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(NewLanguage.Startup))]
namespace NewLanguage
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
