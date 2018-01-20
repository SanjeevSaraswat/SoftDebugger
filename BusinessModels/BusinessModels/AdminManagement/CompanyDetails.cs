using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessModels.AdminManagement
{
    /// <summary>
    /// This class will contain all the details about Company
    /// </summary>
  public  class CompanyDetails
    {

        [Required]
        [MaxLength(2)]
        public string CompanyID { get; set; }

        [Required]
        [MaxLength(500)]
        public string CompanyName { get; set; }

        [Required]
        [MaxLength(500)]
        public string CompanyAddress { get; set; }
        [Required]
        [MaxLength(2)]
        public string Country { get; set; }
        [Required]
        [MaxLength(3)]
        public string CurrencyCode { get; set; }
        [Required]
        [MaxLength(5)]
        public string DefaultLanguage { get; set; }

        [Required]
        [DataType(DataType.EmailAddress)]
        public string CompanyEmail { get; set; }

        [Required]
        [DataType(DataType.PhoneNumber)]
        public string Phone { get; set; }

        public string FAX { get; set; }

        [Required]
        [DataType(DataType.PostalCode)]
        public string CompanyPostalCode { get; set; }


        public string CompanyWebsite { get; set; }

        public string CompanyTANNumber { get; set; }

        public string CompanyPANNumber { get; set; }

        public string CompanyLogoURL { get; set; }
    }
}
