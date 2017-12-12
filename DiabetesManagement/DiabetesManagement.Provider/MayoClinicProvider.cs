using DiabatesManagement.Domain;
using HtmlAgilityPack;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Net;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;


namespace DiabetesManagement.Provider
{
    public class MayoClinicProvider : ContentProvider
    {

        public List<ResultItem> Load(string sWord)
        {

            var amaResult = GetDataAndFormat(@"https://www.mayoclinic.org/search/search-results?q=" + sWord);

            return GetMinimumResult(amaResult);
        }



        private List<ResultItem> GetDataAndFormat(string url)
        {
            var client = new WebClient();
            var response = new HtmlWeb().Load(url);

            StringBuilder sb = new StringBuilder();

            var parsedValues = response.DocumentNode.SelectNodes("//ol[@class='navlist']/li")
                                                .Select(r =>
                                                {
                                                    var linkNode = r.SelectSingleNode(".//a");
                                                    var h3 = r.SelectSingleNode(".//h3");
                                                    var p = r.SelectSingleNode(".//p");
                                                    return new ResultItem()
                                                    {
                                                        Title = h3.InnerText,
                                                        SourceUrl = linkNode.GetAttributeValue("href", ""),
                                                        Content = p.InnerText,
                                                         SourceFrom="Mayo Clinic"
                                                    };
                                                }
                                                );

            return parsedValues.ToList();
        }



    }
}
