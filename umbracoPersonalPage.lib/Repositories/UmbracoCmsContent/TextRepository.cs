using umbracoPersonalPage.lib.Models.UmbracoCmsContent;
using umbracoPersonalPage.lib.Util;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Umbraco.Core.Models.PublishedContent;
using Umbraco.Web;

namespace umbracoPersonalPage.lib.Repositories.UmbracoCmsContent
{
    public class TextRepository 
    {
        public const int TextId_Sk = 1073;
        public const int TextId_En = 1103;

        public static Text GetFromUmbraco(UmbracoHelper umbraco)
        {
            string currentId = CurrentLang.GetCurrentCultureId();

            IPublishedContent content = umbraco.Content(currentId == CurrentLang.CultureId_En ? TextId_En : TextId_Sk);
            return content == null ? null : new Text(content);
        }
    }
}
