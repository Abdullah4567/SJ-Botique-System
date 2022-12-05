using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SJ_Botique_System.GUI
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string Id = (Session["userId"]?.ToString())?.Trim();
            string roleName = (Session["roleName"]?.ToString())?.Trim();
            if (String.IsNullOrEmpty(Id) || roleName!="Customer")
            {
                // Dont want to Show it on Sign Up Page
                btnLogout.Visible = false;
                btnUser.Visible = false;
                homeButton.Visible = false;
            }
        }
        protected void LinkButton12_Click(object sender, EventArgs e)
        {
            Response.Redirect("CreatedBy.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("Login.aspx");
        }

        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            Response.Redirect("ShowProfile.aspx");
        }

        protected void btnHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("DisplayProducts.aspx");
        }
    }
}