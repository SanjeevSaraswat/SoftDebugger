using BusinessModels.PackageBusinessModel;
using SoftLoggerAPI;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PackageModuleLayer.Models.PackageModel
{
  public  class ManagePackageHotelCosting
    {
        private AsyncLogger _logger = null;
        public ManagePackageHotelCosting()
        {
            _logger = new AsyncLogger();
            _logger.FileCollector = "Listener.Models.PackageModel.ManagePackageHotelCosting";
            _logger.addMessage = new System.Collections.Specialized.NameValueCollection();
        }

        public bool UpdatePackageHotelCosting(HotelCosting objHotelCosting)
        {

            try
            {

            }
            catch (Exception ex)
            {

                throw;
            }
            finally
            {

            }
            return false;
        }

    }
}
