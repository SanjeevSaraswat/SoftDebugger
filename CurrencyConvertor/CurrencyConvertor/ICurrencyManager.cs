using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CurrencyConvertor
{
   public interface ICurrencyManager
    {
        string GetRoeRate(string BaseCurrency,string SupplierCurrency);
    }
}
