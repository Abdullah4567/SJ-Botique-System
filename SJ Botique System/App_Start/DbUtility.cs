using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace SJ_Botique_System.App_Start
{
    public class DbUtility
    {

        // constructor
        public DbUtility()
        {

        }

        public static DataTable GetDataTable(string SQL)
        {
            try
            {
                var connectionString = ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;
                DataTable table = new DataTable();
                using (SqlConnection dataConnection = new SqlConnection(connectionString))
                {
                    using (SqlCommand dataCommand = dataConnection.CreateCommand())
                    {
                        dataCommand.CommandText = SQL;
                        dataConnection.Open();
                        SqlDataAdapter adapter = new SqlDataAdapter();
                        adapter.SelectCommand = dataCommand;
                        adapter.Fill(table);
                    }
                }
                return table;
            }
            catch (Exception ex)
            {
                throw ex;
            }

        }
    }
}