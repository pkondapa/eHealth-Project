using DiabatesManagement.DL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DiabetesManagement.BL
{
    public class EheatlhBl
    {
        /// <summary>
        /// Gets the word suggestion list for given query
        /// </summary>
        /// <param name="query"></param>
        /// <returns></returns>
        public List<string> GetQueryWordsSuggestions(string query)
        {
            return new EHealthContext().GetQueryWordsSuggestions(query);
        }

        /// <summary>
        /// GetScientificWord
        /// </summary>
        /// <param name="word"></param>
        /// <returns></returns>
        public string GetScientificWord(string word)
        {
            return new EHealthContext().GetScientificWord(word);
        }

        /// <summary>
        /// GetNewsTapeContent
        /// </summary>
        /// <returns></returns>
        public DataTable GetNewsTapeContent()
        {
            return new EHealthContext().GetNewsTapeContent();
        }

     
    }
}
