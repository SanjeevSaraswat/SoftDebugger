using Newtonsoft.Json;
using SoftLoggerAPI;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;

namespace CurrencyConvertor
{
    public class CurrencyManager : ICurrencyManager
    {

        private AsyncLogger _logger = null;
        public CurrencyManager()
        {
            _logger = new AsyncLogger();
            _logger.FileCollector = "CurrencyConvertor.CurrencyManager";
            _logger.addMessage = new System.Collections.Specialized.NameValueCollection();
        }
        public string GetRoeRate(string BaseCurrency, string SupplierCurrency)
        {
            string path;
            try
            {
                if (System.Configuration.ConfigurationManager.AppSettings.AllKeys.Contains("CurrencyManagementType") && System.Configuration.ConfigurationManager.AppSettings["CurrencyManagementType"].ToString().ToUpper() == "FILE")
                {
                    _logger.addMessage.Add("CurrencyManagementType", "File");
                    if (System.Configuration.ConfigurationManager.AppSettings.AllKeys.Contains("CurrencyROEPath"))
                    {
                        path = System.Configuration.ConfigurationManager.AppSettings["CurrencyROEPath"].ToString();
                        _logger.addMessage.Add("CurrencyROEPath", path);
                        _logger.addMessage.Add("Base Currency", BaseCurrency);
                        _logger.addMessage.Add("Supplier Currency", SupplierCurrency);
                        string LangConversion = "";
                        string mapPath = System.Web.HttpContext.Current.Server.MapPath(@"~/App_Data/" + BaseCurrency + ".json");
                        if (!File.Exists(mapPath))
                        {
                            _logger.addMessage.Add("CurrencyROEPath", "No Currency File Available For this Base Currency.");
                            _logger.ExceptionError = true;
                            return null;
                        }
                        using (StreamReader r = new StreamReader(mapPath))
                        {
                            LangConversion = r.ReadToEnd();
                        }
                        List<CurrencyManagement> objAllList = JsonConvert.DeserializeObject<List<CurrencyManagement>>(LangConversion);
                        IEnumerable<string> objCurrencyManagement = objAllList.Where(m => m.CurrencyCode == SupplierCurrency).Select(m => m.ROE);
                        foreach (var item in objCurrencyManagement)
                        {
                            return item;
                        }
                    }
                    else
                    {
                        _logger.addMessage.Add("CurrencyROEPath", "Kindly configure CurrencyROEPath in Web.Config..If it is not there!!!!");
                        _logger.ExceptionError = true;

                        throw new Exception("Kindly configure CurrencyROEPath in Web.Config..If it is not there!!!!");
                        // Key doesn't exist
                    }
                }
                else
                {
                    _logger.addMessage.Add("CurrencyROEPath", "Kindly configure CurrencyROEPath in Web.Config..If it is not there!!!!");
                    _logger.ExceptionError = true;

                    throw new Exception("Kindly configure CurrencyROEPath in Web.Config..If it is not there!!!!");
                    // Key doesn't e
                }

            }
            catch (Exception ex)
            {
                _logger.addMessage.Add("GetRoeRate", "Error during Get Roe Method Execution :" + ex.ToString());

                _logger.ExceptionError = true;
            }
            finally
            {
                AsyncLogger.LogMessage(_logger, "", "CurrencyManager");

            }
            return null;
        }
    }

    public class CurrencyManagement
    {

        public string CurrencyCode { get; set; }

        public string CurrencyName { get; set; }

        public string ROE { get; set; }
    }
}
