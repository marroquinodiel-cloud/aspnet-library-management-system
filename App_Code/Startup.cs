using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Bug2Bug.Startup))]
namespace Bug2Bug
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
