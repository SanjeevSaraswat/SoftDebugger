using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessModels.PackageBusinessModel
{
    public class PackageCostingRequestBridgeModel
    {
        private string _companyID;
        private string _tokenID;
        private string _packageCode;
        private string _packageLanguage;
        private RequestTo _requestTo;

        public string CompanyID { get => _companyID; set => _companyID = value; }

        public string TokenID { get => _tokenID; set => _tokenID = value; }

        public string PackageCode { get => _packageCode; set => _packageCode = value; }

        public string PackageLanguage { get => _packageLanguage; set => _packageLanguage = value; }

        public RequestTo RequestTo { get => _requestTo; set => _requestTo = value; }
    }

    public class HotelCosting
    {
        private double _childCost;
        private double _adultCost;
        private string _packageCode;
        private string _hotelName;
        private string _hotelCityName;
        private int _id;
        private string _currency;
        private string _companyID;
        private string _packageLanguage;
        private string _roomType;

        public string RoomType { get => _roomType; set => _roomType = value; }
        public string PackageLanguage { get => _packageLanguage; set => _packageLanguage = value; }
        [Required]
        public string PackageCode { get => _packageCode; set => _packageCode = value; }
        [Required]
        public string HotelName { get => _hotelName; set => _hotelName = value; }
        [Required]
        public string HotelCityName { get => _hotelCityName; set => _hotelCityName = value; }
        [Required]
        public double AdultCost { get => _adultCost; set => _adultCost = value; }
        [Required]
        public double ChildCost { get => _childCost; set => _childCost = value; }
        [Required]
        public int id { get => _id; set => _id = value; }
        [Required]
        [StringLength(maximumLength: 3)]
        public string Currency { get => _currency; set => _currency = value; }
        [Required]
        public string CompanyID { get => _companyID; set => _companyID = value; }
    }


    public class HotelCostingRequest
    {
        private string _PackageCode;

        private string _PackageLanguage;

        private string _CompanyID;

        public string PackageCode { get => _PackageCode; set => _PackageCode = value; }

        public string PackageLanguage { get => _PackageLanguage; set => _PackageLanguage = value; }

        public string CompanyID { get => _CompanyID; set => _CompanyID = value; }

    }
    public enum RequestTo
    {
        AddCosing=1,
        UpdateCosting
    }
}
