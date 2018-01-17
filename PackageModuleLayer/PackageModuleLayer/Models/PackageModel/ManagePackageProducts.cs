using PackageBusinessModel.Models;
using SoftLoggerAPI;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PackageModuleLayer.Models.PackageModel
{
    class ManagePackageProducts
    {
        private AsyncLogger _logger = null;
        public ManagePackageProducts()
        {
            _logger = new AsyncLogger();
            _logger.FileCollector = "Listener.Models.PackageModel.ManagePackageProducts";
            _logger.addMessage = new System.Collections.Specialized.NameValueCollection();
        }

        internal List<PackageProduct> GetAvailableProducts(string CompanyID,string TokenID)
        {
            try
            {
                _logger.addMessage.Add("GetAvailableProducts", "GetAvailableProducts Method is going to Execute");
                Dictionary<string, object> objparamlist = new Dictionary<string, object>();
                _logger.addMessage.Add("CompanyID", CompanyID);
                objparamlist.Add("CompanyID", CompanyID);

                _logger.addMessage.Add("TokenID", TokenID);
                objparamlist.Add("TokenID", TokenID);


            }
            catch (Exception ex)
            {

                throw;
            }
            return null;
        }

    }
}
