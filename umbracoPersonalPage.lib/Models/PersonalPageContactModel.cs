using dufeksoft.lib.Mail;
using dufeksoft.lib.Model;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using umbracoPersonalPage.lib.Util;

namespace umbracoPersonalPage.lib.Models
{
    public class PersonalPageContactModel
    {
        [RequiredCurrentLang("Models/PersonalPageContactModel", "Priezvisko a meno musí byť zadané")]
        [DisplayCurrentLang("Models/PersonalPageContactModel", "Priezvisko a meno")]
        public string Name { get; set; }
        [EmailCurrentLang("Models/PersonalPageContactModel", "Neplatný e-mail")]
        [RequiredCurrentLang("Models/PersonalPageContactModel", "E-mail musí byť zadaný")]
        [Display(Name = "E-mail")]
        public string Email { get; set; }
        [RequiredCurrentLang("Models/PersonalPageContactModel", "Text správy musí byť zadaný")]
        [DisplayCurrentLang("Models/PersonalPageContactModel", "Text správy")]
        public string Text { get; set; }

        [DisplayCurrentLang("Models/PersonalPageContactModel", "Heslo")]
        public string Password { get; set; }
        [DisplayCurrentLang("Models/PersonalPageContactModel", "Potvrdenie hesla ")]
        public string ConfirmPassword { get; set; }

        public bool SendContactRequest()
        {
            List<TextTemplateParam> paramList = new List<TextTemplateParam>();
            paramList.Add(new TextTemplateParam("NAME", this.Name));
            paramList.Add(new TextTemplateParam("EMAIL", this.Email));
            paramList.Add(new TextTemplateParam("TEXT", this.Text));

            // Odoslanie uzivatelovi
            PersonalPageMailer.SendMailTemplate(
                "Vaša správa",
                TextTemplate.GetTemplateText("ContactSendSuccess_Sk", paramList),
                this.Email, null);

            return true;
        }
    }
}

