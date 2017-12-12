using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DiabatesManagement.Domain
{
    public class PubIdItem
    {

        public esearchresult esearchresult { get; set; }

        public PubIdItem()
        {
            esearchresult = new esearchresult();
        }
    }

    public class esearchresult
    {
        public List<string> idlist { get; set; }

        public esearchresult()
        {
            idlist = new List<string>();
        }
    }
}
