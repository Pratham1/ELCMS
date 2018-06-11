using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(ELCMS.Startup))]
namespace ELCMS
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
