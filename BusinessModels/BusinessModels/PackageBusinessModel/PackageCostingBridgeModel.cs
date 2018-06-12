using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessModels.PackageBusinessModel
{
    public class PackageCostingRequestBridgeModel
    {
        public string CompanyID { get; set; }

        public string TokenID { get; set; }

        public string PackageCode { get; set; }

        public string PackageLanguage { get; set; }

        public RequestTo RequestTo { get; set; }
    }

    public class HotelCosting
    {
        public string PackageCode { get; set; }

        public string HotelName { get; set; }

        public string HotelCity { get; set; }

        public double AdultCost { get; set; }

        public double ChildCost { get; set; }
    }

   public enum RequestTo
    {
        AddCosing,
        UpdateCosting
    }
}
