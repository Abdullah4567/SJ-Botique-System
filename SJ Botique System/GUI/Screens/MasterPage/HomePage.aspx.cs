using SJ_Botique_System.App_Start;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SJ_Botique_System.GUI.Screens.Master_Page
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            StringBuilder query = new StringBuilder();

            query.Append($"SELECT Id, Name, Description FROM ROLE");

            var result = DbUtility.GetDataTable(query.ToString());
        }
        protected void LinkButton13_Click(object sender, EventArgs e)
        { 
          Response.Redirect("Login.aspx");
        }
    }
}