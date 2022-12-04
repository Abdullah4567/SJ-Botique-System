using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Text;
using System.Web.UI;
using System.Web.UI.WebControls;
using SJ_Botique_System.App_Start;

namespace SJ_Botique_System.GUI.Screens.MasterPage
{
    public partial class ShowProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            StringBuilder query = new StringBuilder();
            // Code for User Profile
            query.Clear();
            query.Append($"SELECT U.Name,Age,Email,Contact,U.Address, User_Role.id as RoleId, R.Name From [User] U ");
            query.Append("join User_Role on U.Id=User_Role.U_ID join [Role] R on User_Role.Role_Id = R.Id where U.Id = 1");
            var result = DbUtility.GetDataTable(query.ToString());
            int RoleId = (int)result.Rows[0]["RoleId"];

            query.Clear();
            query.Append($"select  P.Name, P.Description from Role_Permission PR join Permission P on PR.Permission_id=P.Id where PR.Role_id= {RoleId}");
            result = DbUtility.GetDataTable(query.ToString());
            GridView2.AutoGenerateColumns = false;
            GridView2.DataSource = result;
            GridView2.DataBind();
        }
    }
}