using DiabatesManagement.Domain;
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;

namespace DiabetesManagement.Provider
{
   public class AdaProvider:ContentProvider
    {

        public List<ResultItem> Load(string sWord)
        {

            var amaResult = GetData(@"http://google.diabetes.org/search?q=" + sWord);
            var dtAMAResultSet = BuildDataTableFromXml("dtAMAResultSet", amaResult.ToString());
            List<ResultItem> lstItemResult = new List<ResultItem>();
            foreach (DataRow item in dtAMAResultSet.Tables["R"].Rows)
            {
                lstItemResult.Add(new ResultItem { Title = item["T"].ToString(), Content = item["S"].ToString(),  SourceUrl = item["UE"].ToString(),SourceFrom= "American Diabetes Association" });
            }
            return GetMinimumResult(lstItemResult);
        }

        private string GetData(string url)
        {
            var client = new System.Net.Http.HttpClient();
           
            client.DefaultRequestHeaders.Accept.Clear();
            client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));


            var response = client.GetAsync(new Uri(url)).Result;
            if (response.IsSuccessStatusCode)
            {
                var result = response.Content.ReadAsStringAsync().Result;
                return result;
            }

            return string.Empty;
        }

        public static DataSet BuildDataTableFromXml(string Name, string XMLString)
        {
            StringReader theReader = new StringReader(XMLString);
            DataSet theDataSet = new DataSet();
            theDataSet.ReadXml(theReader);
            return theDataSet;
        }

    }
}
