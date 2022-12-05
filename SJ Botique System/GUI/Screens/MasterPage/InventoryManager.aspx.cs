using SJ_Botique_System.App_Start;
using SJ_Botique_System.Entities;
using System;
using System.Collections.Generic;
using System.Data;
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
        protected void ShowData()
        {
            StringBuilder query = new StringBuilder();
            List<Policy> Collection = new List<Policy>();
            query.Clear();
            query.Append($"SELECT Id, Policy_Type,Description FROM [Policy]");
            var result = DbUtility.GetDataTable(query.ToString());
            foreach (DataRow row in result.Rows)
            {
                int Id = Convert.ToInt32(row["Id"]);
                string Type = row["Policy_Type"].ToString();
                string Description = row["Description"].ToString();
                if(Type=="Inventory Policy")
                {
                    Collection.Add(new InventoryPolicy(Id, Description));
                }
                else
                {
                    // Discount Policy
                    Collection.Add(new DiscountPolicy(Id, Description));
                }
            }
            GridView2.DataSource = result;
            GridView2.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string Id = (Session["userId"]?.ToString())?.Trim();
                if (String.IsNullOrEmpty(Id))
                {
                    Response.Redirect("Login.aspx");
                }
                else
                {
                    string Path = Request.QueryString["from"]; // Use of Query String 
                    if (Path == "PolicyButton")
                    {
                        InventoryManagerContent.Visible = true;
                        ShowData();
                    }
                }
            }

        }
        protected void cmdView_Click(object sender, EventArgs e)
        {

            int rowind = ((GridViewRow)(sender as Control).NamingContainer).RowIndex;
            int Id_to_del = Convert.ToInt32(GridView2.Rows[rowind].Cells[0].Text);
            StringBuilder query = new StringBuilder();


            query.Clear();
            query.Append($"DELETE FROM [Policy] WHERE Id='" + Id_to_del + "'");
            var result = DbUtility.GetDataTable(query.ToString());
            //GridView2.AutoGenerateColumns = false;
            GridView2.DataSource = result;
            GridView2.DataBind();
            query.Clear();
            query.Append($"Select * FROM [Policy]");
            result = DbUtility.GetDataTable(query.ToString());
            //GridView2.AutoGenerateColumns = false;
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