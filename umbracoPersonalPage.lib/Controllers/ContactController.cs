using umbracoPersonalPage.lib.Models;
using umbracoPersonalPage.lib.Util;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.Mvc;
using Umbraco.Web.Mvc;

namespace umbracoPersonalPage.lib.Controllers
{
    [PluginController("PersonalPage")]
    public class ContactController : _BaseController
    {
        
        public ActionResult Index()
        {
            return View("ContactForm", new PersonalPageContactModel());
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult HandleFormSubmit(PersonalPageContactModel model)
        {
            if (ModelState.IsValid)
            {
                if (!new ApiKeyValidator().IsValid(model.Password, model.ConfirmPassword))
                {
                    ModelState.AddModelError("", CurrentLang.GetText("Controllers/ContactController", "Musíte označiť, že nie ste robot."));
                }
            }

            if (!ModelState.IsValid)
            {
                return CurrentUmbracoPage();
            }

            TempData["success"] = model.SendContactRequest();

            return RedirectToCurrentUmbracoPage();
        }
    }
}
