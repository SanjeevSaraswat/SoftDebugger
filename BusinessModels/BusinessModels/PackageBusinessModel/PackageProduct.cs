﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PackageBusinessModel.Models
{
   public class PackageProduct
    {
        public string CompanyID { get; set; }
        public string ProductCode { get; set; }

        public string ProductName { get; set; }
    }

    public class PackageCancellationPolicy
    {
        [Required]
        [MaxLength(2)]
        public string CompanyID { get; set; }

        [Required]
        public string PackageCode { get; set; }

        [Required]
        public string CancellationPolicyText { get; set; }

        [Required]
        public string ViewFormat { get; set; }
    }
}
