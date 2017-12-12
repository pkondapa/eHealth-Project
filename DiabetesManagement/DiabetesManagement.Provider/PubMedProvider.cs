using DiabatesManagement.Domain;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Web;


namespace DiabetesManagement.Provider
{
   public class PubMedProvider:ContentProvider
    {
        #region Constants

        public static string _pubMedSearchQueryUrl = "https://eutils.ncbi.nlm.nih.gov/entrez/eutils/esearch.fcgi?db=pubmed&retmode=json&term={0}";
        public static string _pubMedIdQueryUrl = "https://eutils.ncbi.nlm.nih.gov/entrez/eutils/efetch.fcgi?db=pubmed&retmode=text&rettype=abstract&id={0}";
        #endregion
        public List<ResultItem> Load(string sWord)
        {
           var resultIds = GetPubData(string.Format(_pubMedSearchQueryUrl, sWord));
           var resultdata = JsonConvert.DeserializeObject<PubIdItem>(resultIds);
            List<ResultItem> lstItemResult = new List<ResultItem>();
            foreach (var id in resultdata.esearchresult.idlist)
            {
                string itemUrl = @"https://eutils.ncbi.nlm.nih.gov/entrez/eutils/efetch.fcgi?db=pubmed&retmode=text&rettype=abstract&id=" + id;
                var resultContent = GetPubData(string.Format(itemUrl));
                lstItemResult.Add(new ResultItem { Title = resultContent.Substring(0, 200),   Content = resultContent.Substring(200, resultContent.Length - 200), SourceUrl = itemUrl, SourceFrom = "PubMed" });
            }
            return GetMinimumResult(lstItemResult);
        }

        public string GetPubData(string url)
        {
            //https://eutils.ncbi.nlm.nih.gov/entrez/eutils/efetch.fcgi?db=pubmed&retmode=text&rettype=abstract&id=26012122
            //https://www.ncbi.nlm.nih.gov/pubmed/?term=2+diabetes

            //IMP http://www.fredtrotter.com/2014/11/14/hacking-on-the-pubmed-api/
            var client = new System.Net.Http.HttpClient();
            //client.BaseAddress = ;
            client.DefaultRequestHeaders.Accept.Clear();
            client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
            // https://eutils.ncbi.nlm.nih.gov/entrez/eutils/esearch.fcgi?db=pubmed&retmode=json&term=diabates

            //Step#1 get all ids for the current term

            var response = client.GetAsync(new Uri(url)).Result;
            if (response.IsSuccessStatusCode)
            {
                //   product = await response.Content.ReadAsAsync<Product>();
                var result2 = response.Content.ReadAsStringAsync().Result;
                return result2;
            }

            return "";

        }
    }
}
