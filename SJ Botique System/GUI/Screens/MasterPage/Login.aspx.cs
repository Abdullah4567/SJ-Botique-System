﻿using SJ_Botique_System.App_Start;
using SJ_Botique_System.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SJ_Botique_System.GUI.Screens.Master_Page
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void LinkButton50_Click(object sender, EventArgs e)
        {
            Response.Redirect("HomePage.aspx");
        }
        protected void verifyLogin(object sender, EventArgs e)
        {
            StringBuilder query = new StringBuilder();
            query.Clear();
            query.Append($"[dbo].[log_in]");
            string email = txtEmail.Text;
            string password = pass.Text;
            LoginDetails CurrentUser = DbUtility.InsertForLogin(query.ToString(), email, password);
            if (CurrentUser.UserId != -1)
            {
                // Valid User 
                Session["userId"] = CurrentUser.UserId;
                Session["roleName"] = CurrentUser.RollName;
                if (CurrentUser.RollName == "Admin")
                {

                }
                else if (CurrentUser.RollName == "Floor Manager")
                {
                    Response.Redirect("FloorManager.aspx");
                }
                else if (CurrentUser.RollName == "Inventory Manager")
                {
                    Response.Redirect("InventoryManager.aspx");
                }
                else if (CurrentUser.RollName == "Customer")
                {
                    Response.Redirect("ShowProfile.aspx");
                }
            }
            else
            {
                // Invalid Credentials
                Failture.Text = "Please Enter Valid Credentials";
            }

        }
        protected void checkbox1_CheckedChanged(object sender, EventArgs e)
        {
            var type = pass.TextMode.ToString();
            if (type == "Password")
            {
                pass.TextMode = TextBoxMode.SingleLine ;
            }
            else
            {
                pass.TextMode = TextBoxMode.Password;
            }
        }
        protected void Unnamed_Click1(object sender, ImageClickEventArgs e)
        {
            var type = pass.TextMode.ToString();
            if (type == "Password")
            {
                pass.TextMode = TextBoxMode.SingleLine;
            }
            else
            {
                pass.TextMode = TextBoxMode.Password;
            }
        }

        protected void CheckBox1_CheckedChanged1(object sender, EventArgs e)
        {
            var type = pass.TextMode.ToString();
            if (type == "Password")
            {
                pass.TextMode = TextBoxMode.SingleLine;
            }
            else
            {
                pass.TextMode = TextBoxMode.Password;
            }
        }
    }
}