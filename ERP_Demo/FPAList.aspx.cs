﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ERP_Demo
{
    public partial class FPAList : System.Web.UI.Page
    {
        ConnectionStringSettings settings = ConfigurationManager.ConnectionStrings["PbplasticsConnectionString"];

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                PopulateGridview();
            }
        }

        void PopulateGridview()
        {
            try
            {
                DataTable dtbl = new DataTable();
                using (SqlConnection sqlCon = new SqlConnection(settings.ToString()))
                {
                    sqlCon.Open();
                    SqlDataAdapter sqlDa = new SqlDataAdapter("SELECT * FROM fpa", sqlCon);
                    sqlDa.Fill(dtbl);
                }
                if (dtbl.Rows.Count > 0)
                {
                    fpaGridView.DataSource = dtbl;
                    fpaGridView.DataBind();
                }
                else
                {
                    dtbl.Rows.Add(dtbl.NewRow());
                    fpaGridView.DataSource = dtbl;
                    fpaGridView.DataBind();
                    fpaGridView.Rows[0].Cells.Clear();
                    fpaGridView.Rows[0].Cells.Add(new TableCell());
                    fpaGridView.Rows[0].Cells[0].ColumnSpan = dtbl.Columns.Count;
                    fpaGridView.Rows[0].Cells[0].Text = "No Data Found ..!";
                    fpaGridView.Rows[0].Cells[0].HorizontalAlign = HorizontalAlign.Center;
                }
            }
            catch(Exception ex)
            {
                lblSuccessMessage.Text = "";
                lblErrorMessage.Text = ex.Message;
            }
        }

        protected void fpaGridView_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            fpaGridView.PageIndex = e.NewPageIndex;
            PopulateGridview();
        }
    }
}