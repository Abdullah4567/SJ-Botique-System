﻿using SJ_Botique_System.HelperClasses;
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


        public static int InsertRecordInRoleTable(string SQL, string roleName, string description)
        {
            try
            {
                var connectionString = ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;
                using (SqlConnection dataConnection = new SqlConnection(connectionString))
                {
                    using (SqlCommand dataCommand = dataConnection.CreateCommand())
                    {
                        dataCommand.CommandText = SQL;
                        dataConnection.Open();
                        dataCommand.Parameters.Add(new SqlParameter("@RoleName", roleName));
                        dataCommand.Parameters.Add(new SqlParameter("@Desc", description));
                        var a = dataCommand.ExecuteNonQuery();

                        return a;
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }

        }

        public static int InsertForSignUp(string NameOfProcedure, string Name, string Email, string Password, int Age, string Contact, string Address)
        {
            try
            {
                var connectionString = ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;
                using (SqlConnection dataConnection = new SqlConnection(connectionString))
                {
                    using (SqlCommand dataCommand = new SqlCommand(NameOfProcedure, dataConnection))
                    {
                        //dataCommand.CommandText = SQL;
                        dataCommand.CommandType = CommandType.StoredProcedure;
                        dataConnection.Open();
                        dataCommand.Parameters.Add(new SqlParameter("@Name", Name));
                        dataCommand.Parameters.Add(new SqlParameter("@Email", Email));
                        dataCommand.Parameters.Add(new SqlParameter("@Pass", Password));
                        dataCommand.Parameters.Add(new SqlParameter("@Age", Age));
                        dataCommand.Parameters.Add(new SqlParameter("@Contact", Contact));
                        dataCommand.Parameters.Add(new SqlParameter("@Address", Address));
                        dataCommand.Parameters.Add(new SqlParameter("@userId", SqlDbType.Int));
                        dataCommand.Parameters["@userId"].Direction = ParameterDirection.Output;
                        dataCommand.ExecuteNonQuery();
                        int res = Convert.ToInt32(dataCommand.Parameters["@userId"].Value);
                        // cmd.Parameters["@Name"].Direction = ParameterDirection.Output;

                        return res;
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }

        }

        public static LoginDetails InsertForLogin(string NameOfProcedure, string Email, string Password)
        {
            try
            {
                var connectionString = ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;
                using (SqlConnection dataConnection = new SqlConnection(connectionString))
                {
                    using (SqlCommand dataCommand = new SqlCommand(NameOfProcedure, dataConnection))
                    {
                        //dataCommand.CommandText = SQL;
                        dataCommand.CommandType = CommandType.StoredProcedure;
                        dataConnection.Open();
                       
                        dataCommand.Parameters.Add(new SqlParameter("@Email", Email));
                        dataCommand.Parameters.Add(new SqlParameter("@Pass", Password));
                        dataCommand.Parameters.Add(new SqlParameter("@userid", SqlDbType.Int));
                        dataCommand.Parameters.Add(new SqlParameter("@roleName", SqlDbType.NVarChar,30));
                        dataCommand.Parameters["@userid"].Direction = ParameterDirection.Output;
                        dataCommand.Parameters["@roleName"].Direction = ParameterDirection.Output;
                        dataCommand.ExecuteNonQuery();
                        int userId = Convert.ToInt32(dataCommand.Parameters["@userid"].Value);
                        string RoleName = (string)dataCommand.Parameters["@roleName"].Value;
                        // cmd.Parameters["@Name"].Direction = ParameterDirection.Output;

                        return new LoginDetails(userId, RoleName);
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }

        }
    }
}