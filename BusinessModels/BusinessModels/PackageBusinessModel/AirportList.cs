using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessModels.PackageBusinessModel
{
   public class AirportList
    {
        public string CompanyID { get; set; }
        public string AirportCode { get; set; }
        public string AirportCity { get; set; }
        public string AirportCountry { get; set; }

        public string AirportText { get; set; }
        public string Language { get; set; }
        public string AirportName { get; set; }
        public string query { get; set; }
    }
}
