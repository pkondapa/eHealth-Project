using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DiabatesManagement.DL
{
    public class EHealthContext
    {
        public List<string> GetQueryWordsSuggestions(string query)
        {
            using (SqlConnection conn = new SqlConnection())
            {
                conn.ConnectionString = ConfigurationManager
                        .ConnectionStrings["eHealth"].ConnectionString;
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.CommandText = "select word from tbl_WordMaster where " +
                    "word like @SearchText + '%'";
                    cmd.Parameters.AddWithValue("@SearchText", query);
                    cmd.Connection = conn;
                    conn.Open();
                    List<string> words = new List<string>();
                    using (SqlDataReader sdr = cmd.ExecuteReader())
                    {
                        while (sdr.Read())
                        {
                            words.Add(sdr["word"].ToString());
                        }
                    }
                    conn.Close();
                    return words;
                }
            }
        }

        public DataTable GetNewsTapeContent()
        {
            using (SqlConnection conn = new SqlConnection())
            {
                conn.ConnectionString = ConfigurationManager
                        .ConnectionStrings["eHealth"].ConnectionString;
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.CommandText = "SELECT TOP 1000 [Id],[Title],[URL],[Content],[PublishedDate] FROM[eHealth].[dbo].[tbl_MediaMaster] ORDER BY PublishedDate DESC";
                 // cmd.Parameters.AddWithValue("@SearchText", query);
                    cmd.Connection = conn;
                    SqlDataAdapter sqa = new SqlDataAdapter(cmd);
                    DataSet ds = new DataSet();
                    sqa.Fill(ds);
                    return ds.Tables[0];
                }
            }
        }

        public string GetScientificWord(string word)
        {
            using (SqlConnection conn = new SqlConnection())
            {
                conn.ConnectionString = ConfigurationManager
                        .ConnectionStrings["eHealth"].ConnectionString;
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.CommandText = @"
select Scientific_Name  from[dbo].[tbl_SKeyWordMaster] where[Id] = (select top 1  SKeywordId from[dbo].[tbl_WordMaster] where " +
                    "word like @SearchText + '%')";
                    cmd.Parameters.AddWithValue("@SearchText", word);
                    cmd.Connection = conn;
                    conn.Open();
                    string sWord = "";
                    using (SqlDataReader sdr = cmd.ExecuteReader())
                    {
                        while (sdr.Read())
                        {
                            sWord=sdr["Scientific_Name"].ToString();
                        }
                    }
                    conn.Close();
                    return sWord;
                }
            }
        }
    }
}
