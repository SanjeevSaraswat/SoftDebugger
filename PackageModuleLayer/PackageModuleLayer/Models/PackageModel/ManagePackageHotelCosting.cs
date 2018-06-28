using BusinessModels.PackageBusinessModel;
using ConnectorAPI;
using Newtonsoft.Json;
using SoftLoggerAPI;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PackageModuleLayer.Models.PackageModel
{
    public class ManagePackageHotelCosting
    {
        private AsyncLogger _logger = null;
        public ManagePackageHotelCosting()
        {
            _logger = new AsyncLogger();
            _logger.FileCollector = "Listener.Models.PackageModel.ManagePackageHotelCosting";
            _logger.addMessage = new System.Collections.Specialized.NameValueCollection();
        }

        public bool UpdatePackageHotelCosting(List<HotelCosting> objHotelCosting)
        {
            bool status = false;
            try
            {
                _logger.addMessage.Add("UpdatePackageHotelCosting", "UpdatePackageHotelCosting Method is going to Execute");
                string CurrencyCode = System.Configuration.ConfigurationManager.AppSettings["CompanyCurrency"].ToString();
                //Before updating hotel costing remove existing costing for that package
                if (objHotelCosting!=null && objHotelCosting.Count>0)
                {
                    _logger.addMessage.Add("UpdatePackageHotelCosting", "Before updating hotel costing remove existing costing for that package is going to Execute");
                    Dictionary<string, object> objparamlist = new Dictionary<string, object>();
                    _logger.addMessage.Add("CompanyID", objHotelCosting[0].CompanyID);
                    objparamlist.Add("CompanyID", objHotelCosting[0].CompanyID);

                    _logger.addMessage.Add("PackageCode", objHotelCosting[0].PackageCode);
                    objparamlist.Add("PackageCode", objHotelCosting[0].PackageCode);

                    _logger.addMessage.Add("PackageLanguage", objHotelCosting[0].PackageLanguage.ToString());
                    objparamlist.Add("PackageLanguage", objHotelCosting[0].PackageLanguage.ToString());
                    _logger.addMessage.Add("UpdatePackageHotelCosting", "FSP_deletePkgHotelCosting procedure is going to execute to remove existing hotel costing for the same package.");
                    IConnector objConnector = new Connector();
                    status = objConnector.ExecuteNonQuery("PackageModule", "FSP_deletePkgHotelCosting", objparamlist);

                    if (status)
                    {
                        _logger.addMessage.Add("UpdatePackageHotelCosting", "FSP_deletePkgHotelCosting procedure executed successfully.");
                        foreach (var item in objHotelCosting)
                        {
                            objparamlist = new Dictionary<string, object>();
                            _logger.addMessage.Add("CompanyID", item.CompanyID);
                            objparamlist.Add("CompanyID", item.CompanyID);

                            _logger.addMessage.Add("PackageCode", item.PackageCode);
                            objparamlist.Add("PackageCode", item.PackageCode);

                            _logger.addMessage.Add("HID", item.id.ToString());
                            objparamlist.Add("HID", item.id.ToString());

                            _logger.addMessage.Add("RoomType", item.RoomType);
                            objparamlist.Add("RoomType", item.RoomType);

                            _logger.addMessage.Add("HotelName", item.HotelName);
                            objparamlist.Add("HotelName", item.HotelName);

                            _logger.addMessage.Add("HotelCityName", item.HotelCityName);
                            objparamlist.Add("HotelCityName", item.HotelCityName);

                            _logger.addMessage.Add("AdultCost", item.AdultCost.ToString());
                            objparamlist.Add("AdultCost", item.AdultCost);

                            _logger.addMessage.Add("ChildCost", item.ChildCost.ToString());
                            objparamlist.Add("ChildCost", item.ChildCost);

                            _logger.addMessage.Add("CurrencyCode", CurrencyCode);
                            objparamlist.Add("CurrencyCode", CurrencyCode);

                            _logger.addMessage.Add("PackageLanguage", item.PackageLanguage.ToString());
                            objparamlist.Add("PackageLanguage", item.PackageLanguage);


                            //IConnector objConnector = new Connector();
                            status = objConnector.ExecuteNonQuery("PackageModule", "FSP_InsertPkgHotelCosting", objparamlist);
                        }
                    }

                }
                else
                {
                    _logger.addMessage.Add("UpdatePackageHotelCosting", "No costing available for update");
                }
                _logger.addMessage.Add("UpdatePackageHotelCosting", "Package Hotel costing updated successfully");
            }
            catch (Exception ex)
            {
                AsyncLogger.LogEventVwr("UpdatePackageHotelCosting", ex.ToString(), ex.StackTrace);
                _logger.ExceptionError = true;
                _logger.addMessage.Add("UpdatePackageHotelCosting", "Error during Update Package hotel costing Method Execution:" + ex.ToString());
            }
            finally
            {               
                AsyncLogger.LogMessage(_logger);

            }
            return status;
        }

        /// <summary>
        /// Get Hotel Saved Costing info for package pecific
        /// </summary>
        /// <param name="objHotelCosting"></param>
        /// <returns></returns>
        public List<HotelCosting> GetPackageHotelCosting(HotelCostingRequest objHotelCostingRequest)
        {
            List<HotelCosting> objlstHotelCosting = null;

            try
            {
                _logger.addMessage.Add("UpdatePackageHotelCosting", "Package Hotel costing updated successfully");

                Dictionary<string, object> objparamlist = new Dictionary<string, object>();
                _logger.addMessage.Add("CompanyID", objHotelCostingRequest.CompanyID);
                objparamlist.Add("CompanyID", objHotelCostingRequest.CompanyID);

                _logger.addMessage.Add("PackageCode", objHotelCostingRequest.PackageCode);
                objparamlist.Add("PackageCode", objHotelCostingRequest.PackageCode);

                _logger.addMessage.Add("PackageLanguage", objHotelCostingRequest.PackageLanguage);
                objparamlist.Add("PackageLanguage", objHotelCostingRequest.PackageLanguage);
                IConnector objConnector = new Connector();
                DataTable dtPackageHotelCosting = objConnector.ExecuteDataTable("PackageModule", "FSP_GetPkgHotelCosting", objparamlist);
                _logger.addMessage.Add("GetHotelCosting", "Package costing fetch Successfully");
                if (dtPackageHotelCosting.Rows.Count > 0)
                {
                    objlstHotelCosting = new List<HotelCosting>();

                    for (int i = 0; i < dtPackageHotelCosting.Rows.Count; i++)
                    {
                        HotelCosting objHotelCosting = new HotelCosting();
                        objHotelCosting.CompanyID = objHotelCostingRequest.CompanyID;
                        objHotelCosting.PackageCode = objHotelCostingRequest.PackageCode;
                        objHotelCosting.Currency = dtPackageHotelCosting.Rows[i]["Currency"].ToString();
                        objHotelCosting.AdultCost = Convert.ToDouble(dtPackageHotelCosting.Rows[i]["AdultCost"]);
                        objHotelCosting.ChildCost = Convert.ToDouble(dtPackageHotelCosting.Rows[i]["ChildCost"]);
                        objHotelCosting.HotelCityName = dtPackageHotelCosting.Rows[i]["HotelCityName"].ToString();
                        objHotelCosting.HotelName = dtPackageHotelCosting.Rows[i]["HotelName"].ToString();
                        objHotelCosting.RoomType = dtPackageHotelCosting.Rows[i]["RoomType"].ToString();
                        objHotelCosting.PackageLanguage = dtPackageHotelCosting.Rows[i]["PackageLanguage"].ToString();
                        objHotelCosting.id = Convert.ToInt16(dtPackageHotelCosting.Rows[i]["id"]);
                        objlstHotelCosting.Add(item: objHotelCosting);
                    }
                    _logger.addMessage.Add("GetHotelCosting", "GetHotelCosting Method result" + JsonConvert.SerializeObject(objlstHotelCosting));

                }
                else
                {
                    _logger.addMessage.Add("GetHotelCosting", "No Package Hotel Costing find for Package Code=" + objHotelCostingRequest.PackageCode);

                }


            }
            catch (Exception ex)
            {
                AsyncLogger.LogEventVwr("UpdatePackageHotelCosting", ex.ToString(), ex.StackTrace);
                _logger.ExceptionError = true;
                _logger.addMessage.Add("GetHotelCosting", "Error during get Package hotel costing Method Execution:" + ex.ToString());
            }
            finally
            {
                AsyncLogger.LogMessage(_logger);

            }
            return objlstHotelCosting;
        }

    }
}
