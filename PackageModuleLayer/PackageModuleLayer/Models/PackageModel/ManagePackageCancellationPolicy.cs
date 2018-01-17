using ConnectorAPI;
using PackageBusinessModel.Models;
using SoftLoggerAPI;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PackageModuleLayer.Models.PackageModel
{
  public  class ManagePackageCancellationPolicy
    {
        private AsyncLogger _logger = null;
        public ManagePackageCancellationPolicy()
        {
            _logger = new AsyncLogger();
            _logger.FileCollector = "Listener.Models.PackageModel.ManagePackageCancellationPolicy";
            _logger.addMessage = new System.Collections.Specialized.NameValueCollection();
        }

        public void InsertPackageCancellationPolicy(PackageDetails objPackageCancellationPolicy)
        {
            try
            {
                _logger.addMessage.Add("InsertPackageCancellationPolicy", "InsertPackageCancellationPolicy Method is going to Execute");
                Dictionary<string, object> objparamlist = new Dictionary<string, object>();

                _logger.addMessage.Add("CompanyID", objPackageCancellationPolicy.CompanyID);
                objparamlist.Add("CompanyID", objPackageCancellationPolicy.CompanyID);

                _logger.addMessage.Add("PackageCode", objPackageCancellationPolicy.BasicPackageDetails.PackageCode.ToString());
                objparamlist.Add("PackageCode", objPackageCancellationPolicy.BasicPackageDetails.PackageCode);

                _logger.addMessage.Add("PackageViewFormat", objPackageCancellationPolicy.PackageCancellationPolicy.ViewFormat.ToString());
                objparamlist.Add("ViewFormat", objPackageCancellationPolicy.PackageCancellationPolicy.ViewFormat);

                _logger.addMessage.Add("CancellationPolicyText", objPackageCancellationPolicy.PackageCancellationPolicy.CancellationPolicyText.ToString());
                objparamlist.Add("CancellationPolicyText", objPackageCancellationPolicy.PackageCancellationPolicy.CancellationPolicyText);
                IConnector objConnector = new Connector();
                bool status = objConnector.ExecuteNonQuery("PackageModule", "FSP_InsertCancellationPolicy", objparamlist);
                _logger.addMessage.Add("InsertPackageCancellationPolicy", "Cancellation policy inserted or updated successfully");

            }
            catch (Exception ex)
            {
                _logger.addMessage.Add("InsertPackageCancellationPolicy", "Error during Insert Package Cancellation Policy Method Execution:" + ex.ToString());
            }
            finally
            {
                AsyncLogger.LogMessage(_logger);
            }
        }

    }
}
