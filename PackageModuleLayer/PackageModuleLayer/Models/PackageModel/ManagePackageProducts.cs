using ConnectorAPI;
using PackageBusinessModel.Models;
using PackageModule.Utilities;
using SoftLoggerAPI;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PackageModuleLayer.Models.PackageModel
{
  public  class ManagePackageProducts
    {
        private AsyncLogger _logger = null;
        public ManagePackageProducts()
        {
            _logger = new AsyncLogger();
            _logger.FileCollector = "Listener.Models.PackageModel.ManagePackageProducts";
            _logger.addMessage = new System.Collections.Specialized.NameValueCollection();
        }

        public string GetAvailableProducts(string CompanyID,string LanguageCode)
        {
            try
            {
                _logger.addMessage.Add("GetAvailableProducts", "GetAvailableProducts Method is going to Execute");
                Dictionary<string, object> objparamlist = new Dictionary<string, object>();
                _logger.addMessage.Add("CompanyID", CompanyID);
                objparamlist.Add("CompanyID", CompanyID);

                _logger.addMessage.Add("LanguageCode", LanguageCode);
                objparamlist.Add("LanguageCode", LanguageCode);
                IConnector objConnector = new Connector();
                DataTable dtPackageProductList = objConnector.ExecuteDataTable("PackageModule", "FSP_GetAvailableProductForPackage", objparamlist);
                _logger.addMessage.Add("GetAvailableProducts", "Get Package product successfully");

                string JSONResult = CommonUtility.GetDataTableToJSON(dtPackageProductList);
                _logger.addMessage.Add("GetAvailableProducts", "Converted JSON Result" + JSONResult);
                return JSONResult;

            }
            catch (Exception ex)
            {

                throw;
            }
            return null;
        }

    }
}
