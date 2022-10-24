using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace umbracoPersonalPage.lib.Util
{
    public class ConfigurationUtil
    {
        public const string LoginFormId = "umbracoPersonalPage.LoginFormId";
        public const string AfterLoginFormId = "umbracoPersonalPage.AfterLoginFormId";
        public const string AfterPasswordResetFormId = "umbracoPersonalPage.AfterPasswordResetFormId";


        public static int GetPageId(string pageKey)
        {
            return int.Parse(ConfigurationManager.AppSettings[pageKey]);
        }

        public static string GetCfgValue(string cfgKey)
        {
            return ConfigurationManager.AppSettings[cfgKey];
        }
    }
}
