using DiabetesManagement.BL;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DiabetesManagement
{
    public partial class Dashboard : System.Web.UI.Page
    {
        public DataTable dtNewsTape { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

               
            }
            dtNewsTape = new EheatlhBl().GetNewsTapeContent();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            BindData(txtSearch.Text);
            hfCustomerId.Value = txtSearch.Text; 
        }

        public void BindData(string query)
        {
            grdContentResult.Visible = true;

            var sWord = new EheatlhBl().GetScientificWord(query);
            var result = ContentManager.GetContent(sWord);
            grdContentResult.DataSource = result;
            grdContentResult.DataBind();
        }

        protected void grdContentResult_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grdContentResult.PageIndex = e.NewPageIndex;
            BindData(hfCustomerId.Value);
            //grdContentResult.DataBind();
        }
    }
}