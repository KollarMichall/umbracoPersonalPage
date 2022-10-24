using umbracoPersonalPage.lib.Util;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace umbracoPersonalPage.lib
{
    public class UmbracoPersonalPageApp : Umbraco.Web.UmbracoApplication
    {
        public override void Init()
        {
            base.Init();
            TranslateUtil.RegisterTranslations();
        }
    }
}
