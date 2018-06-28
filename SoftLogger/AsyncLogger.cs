
using System;
using System.Collections.Specialized;
using System.Configuration;
using System.Diagnostics;
using System.Text;
using System.Threading.Tasks;
using System.Xml;
using System.Xml.Linq;

namespace SoftLoggerAPI
{
    public class AsyncLogger
    {
        private const string V = "Listner";
        private static object _synRoot = new object();

        public NameValueCollection addMessage { get; set; }
        /// <summary>
        /// Send Value true if you want to send email at time of exception
        /// </summary>
        public bool ExceptionError { get; set; }
        public string FileCollector { get; set; }
        public static void LogMessage(AsyncLogger Logger,string TokenID="",string AssemblyName= "Listener")
        {
            if (!Logger.ExceptionError)
            {
                Logger.ExceptionError = Convert.ToBoolean(System.Configuration.ConfigurationManager.AppSettings["ExceptionErrorMail"]);
            }
            StringBuilder strlog = new StringBuilder();
            NameValueCollection LoggerCollection = null;
            if (Logger != null)
            {
                LoggerCollection = Logger.addMessage;


                Task.Factory.StartNew(() =>
                {
                    lock (_synRoot)
                    {
                        var doc = new XDocument();
                        try
                        {
                            if (LoggerCollection != null)
                            {
                                var i = 0;
                                foreach (var item in LoggerCollection.AllKeys)
                                {
                                    doc.Add(new XElement("ApiLog",
                             new XElement("Request", item.ToString().Replace(" ", "") + "" + i++ + ""),
                             new XElement("Response", XDocument.Parse(Convert.ToString(LoggerCollection["" + item + ""])).Root)));
                                }
                            }
                            strlog.Append(doc.ToString());
                        }
                        catch (XmlException)
                        {
                          
                            foreach (var item in LoggerCollection.AllKeys)
                            {
                                strlog.Append(item.ToString().Replace(" ", "") + "  :  " + Convert.ToString(LoggerCollection["" + item + ""]) + Environment.NewLine);
                            }
                        }
                        if (Logger.ExceptionError)
                        {
                            SendMail.SendMail objSendMail = new SendMail.SendMail();
                            bool status = objSendMail.SendMailtoUser("Sanjeev02Saraswat@Yandex.com", "Exception Error", strlog.ToString(), "", true);
                            if (status)
                            {
                                SoftLogger.WriteLogImmediate("Error Mail Send Successfully", Logger.FileCollector, "Listener");
                            }
                        }
                        SoftLogger.WriteLogImmediate(strlog.ToString(), Logger.FileCollector, AssemblyName);
                    }
                });

            }

        }

        public static void LogEventVwr(string logerrorName,string ErrorMessage,string StackTrace="")
        {
            
                EventLog objEventLog = new EventLog();
                string sourceName = V;
                string logName = logerrorName;
                if (!(EventLog.SourceExists(sourceName)))
                {
                    EventLog.CreateEventSource(sourceName, logName);
                }
                objEventLog.Source = sourceName;
                string message = String.Format("Message: {0} \n StackTrace:{1} \n Date/ Time: {2}", ErrorMessage, StackTrace, DateTime.Now.ToString());
                objEventLog.WriteEntry(message, EventLogEntryType.Error);
            
        }
    }
}

