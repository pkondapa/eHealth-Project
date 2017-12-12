using DiabatesManagement.Domain;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DiabetesManagement.Provider
{
    /// <summary>
    /// 
    /// </summary>
    public abstract class ContentProvider
    {

        public List<ResultItem> GetMinimumResult(List<ResultItem> result)
        {
            #pragma warning disable CS0618 // Type or member is obsolete
                        int sizeLimit = Convert.ToInt32(System.Configuration.ConfigurationSettings.AppSettings["ContentProviderResultSizeLimit"].ToString());
            #pragma warning restore CS0618 // Type or member is obsolete
            if (result.Count > 0 && result.Count > sizeLimit)
                return result.Take(sizeLimit).ToList();
            else
                return result;
        }

    }

}
