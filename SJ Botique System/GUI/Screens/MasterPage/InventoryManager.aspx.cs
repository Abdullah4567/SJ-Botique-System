using SJ_Botique_System.App_Start;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SJ_Botique_System.GUI.Screens.MasterPage
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            StringBuilder query = new StringBuilder();


            query.Clear();
            query.Append($"SELECT Id, Policy_Type,Description FROM [Policy]");
            var result = DbUtility.GetDataTable(query.ToString());
            GridView2.AutoGenerateColumns = false;
            GridView2.DataSource = result;
            GridView2.DataBind();

        }
        protected void cmdView_Click(object sender, EventArgs e)
        {

            int rowind = ((GridViewRow)(sender as Control).NamingContainer).RowIndex;
            int Id_to_del = Convert.ToInt32(GridView2.Rows[rowind].Cells[0].Text);
            StringBuilder query = new StringBuilder();


            query.Clear();
            query.Append($"DELETE FROM [Policy] WHERE Id='" + Id_to_del + "'");
            var result = DbUtility.GetDataTable(query.ToString());
            GridView2.AutoGenerateColumns = false;
            GridView2.DataSource = result;
            GridView2.DataBind();
            query.Clear();
            query.Append($"Select * FROM [Policy]");
            result = DbUtility.GetDataTable(query.ToString());
            GridView2.AutoGenerateColumns = false;
            GridView2.DataSource = result;
            GridView2.DataBind();


        }
        protected void Add_policy(object sender, EventArgs e)
        {

           string type= policy_type.SelectedValue;

            string myStringFromTheInput = myTextBox.Value;

            if (myStringFromTheInput == "")
            {
                FailturePolicy.Text = "Please Enter Valid Data";
                SuccessPolicy.Text = "";
            }
            else
            {
                StringBuilder query = new StringBuilder();
                query.Clear();
                query.Append($"insert into [Policy] values('"+type+"','"+myStringFromTheInput+"')" );

                var result = DbUtility.GetDataTable(query.ToString());
                GridView2.AutoGenerateColumns = false;
                GridView2.DataSource = result;
                GridView2.DataBind();

                query.Clear();
                query.Append($"Select * FROM [Policy]");
                result = DbUtility.GetDataTable(query.ToString());
                GridView2.AutoGenerateColumns = false;
                GridView2.DataSource = result;
                SuccessPolicy.Text = "New Policy Added";
                FailturePolicy.Text = "";
                GridView2.DataBind();
                myTextBox.Value = "";

            }

        }


    }
}