using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace umbracoPersonalPage.lib.Models
{
    public class VzdelanieModel
    {
        public string ZakladnaSkola;
        public string StrednaSkola;
        public string VysokaSkola;
        public KurzyModel ZoznamKurzov;


        public VzdelanieModel()

        {
            ZoznamKurzov = new KurzyModel();
        }
    }
}
