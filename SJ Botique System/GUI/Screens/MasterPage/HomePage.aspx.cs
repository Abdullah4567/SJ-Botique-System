﻿using SJ_Botique_System.App_Start;
using SJ_Botique_System.Entities;
using SJ_Botique_System.HelperClasses;
using System;
using System.Collections.Generic;
using System.Data;
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

            //query.Append($"SELECT Id, Name, Description FROM ROLE");

            //var result = DbUtility.GetDataTable(query.ToString());


            // Code for Adding Role
            //query.Clear();
            // query.Append($"INSERT INTO Role(name, description) values (@RoleName, @Desc)");
            //var aa = DbUtility.InsertRecordInRoleTable(query.ToString(), "First role", "First desc");





            // Code working Fine for SignUp Functionality
            //query.Clear();
            //query.Append($"[dbo].[sign_up]");
           // var userId = DbUtility.InsertForSignUp(query.ToString(), "Ali", "Ali@gmail.com", "pass123", 22, "03212847563", "Block 22");


            // Code working Fine for Login Functionality
            //query.Clear();
            //query.Append($"[dbo].[log_in]");
           //LoginDetails CurrentUser = DbUtility.InsertForLogin(query.ToString(),"ahmad@gmail.com", "pass123");
           // CurrentUser.RollName;
            //CurrentUser.UserId;





            //DropDownList1.DataSource = result;
            //DropDownList1.DataTextField = "Name";
            //DropDownList1.DataValueField = "Id";
            //DropDownList1.DataBind();

            //Session["LoginSession"] = loginDto;

        }
        protected void LinkButton13_Click(object sender, EventArgs e)
        { 
          Response.Redirect("Login.aspx");
        }
    }
}