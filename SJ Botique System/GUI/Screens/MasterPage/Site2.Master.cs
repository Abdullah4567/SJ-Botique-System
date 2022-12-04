using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SJ_Botique_System.GUI.Screens.MasterPage
{
    public partial class Site2 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {


        }
        protected void LinkButton12_Click(object sender, EventArgs e)
        {
            Response.Redirect("CreatedBy.aspx");
        }
        protected void workShift(object sender, EventArgs e)
        {
            Response.Redirect("FloorManager.aspx?type=workShift");
        }
    }
}