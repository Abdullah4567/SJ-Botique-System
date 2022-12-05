﻿using SJ_Botique_System.App_Start;
using SJ_Botique_System.Entities;
using System;
using System.Collections.Generic;
using System.Data;
using System.Text;

namespace SJ_Botique_System.GUI.Screens.MasterPage
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ShowProducts();
        }
        protected void ShowProducts()
        {
            StringBuilder query = new StringBuilder();
            List<Product> Collection = new List<Product>();
            // Code Working Fine for Show All Products
            query.Clear();
            query.Append($"SELECT Id, Name, Price FROM Product");
            var result = DbUtility.GetDataTable(query.ToString());
            GridView1.AutoGenerateColumns = false;
            GridView1.DataSource = result;
            GridView1.DataBind();
            
            foreach (DataRow row in result.Rows)
            {
                int Id = Convert.ToInt32(row["Id"]);
                string Name = row["Name"].ToString();
                double Price = double.Parse(row["Price"].ToString());
                Product W = new Product(Name, Price);
                W.SetId(Id);
                Collection.Add(W);
            }
        }

    }
}