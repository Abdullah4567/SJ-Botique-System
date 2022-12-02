//using sj_botique_system.helperclasses;
//using system;
//using system.collections.generic;
//using system.configuration;
//using system.data;
//using system.data.sqlclient;
//using system.linq;
//using system.web;

//namespace sj_botique_system.app_start
//{
//    public class dbutility
//    {

//        constructor
//        public dbutility()
//        {

//        }

//        public static datatable getdatatable(string sql)
//        {
//            try
//            {
//                var connectionstring = configurationmanager.connectionstrings["connectionstring"].connectionstring;
//                datatable table = new datatable();
//                using (sqlconnection dataconnection = new sqlconnection(connectionstring))
//                {
//                    using (sqlcommand datacommand = dataconnection.createcommand())
//                    {
//                        datacommand.commandtext = sql;
//                        dataconnection.open();
//                        sqldataadapter adapter = new sqldataadapter();
//                        adapter.selectcommand = datacommand;
//                        adapter.fill(table);
//                    }
//                }
//                return table;
//            }
//            catch (exception ex)
//            {
//                throw ex;
//            }

//        }


//        public static int insertrecordinroletable(string sql, string rolename, string description)
//        {
//            try
//            {
//                var connectionstring = configurationmanager.connectionstrings["connectionstring"].connectionstring;
//                using (sqlconnection dataconnection = new sqlconnection(connectionstring))
//                {
//                    using (sqlcommand datacommand = dataconnection.createcommand())
//                    {
//                        datacommand.commandtext = sql;
//                        dataconnection.open();
//                        datacommand.parameters.add(new sqlparameter("@rolename", rolename));
//                        datacommand.parameters.add(new sqlparameter("@desc", description));
//                        var a = datacommand.executenonquery();

//                        return a;
//                    }
//                }
//            }
//            catch (exception ex)
//            {
//                throw ex;
//            }

//        }

//        public static int insertforsignup(string nameofprocedure, string name, string email, string password, int age, string contact, string address)
//        {
//            try
//            {
//                var connectionstring = configurationmanager.connectionstrings["connectionstring"].connectionstring;
//                using (sqlconnection dataconnection = new sqlconnection(connectionstring))
//                {
//                    using (sqlcommand datacommand = new sqlcommand(nameofprocedure, dataconnection))
//                    {
//                        datacommand.commandtext = sql;
//                        datacommand.commandtype = commandtype.storedprocedure;
//                        dataconnection.open();
//                        datacommand.parameters.add(new sqlparameter("@name", name));
//                        datacommand.parameters.add(new sqlparameter("@email", email));
//                        datacommand.parameters.add(new sqlparameter("@pass", password));
//                        datacommand.parameters.add(new sqlparameter("@age", age));
//                        datacommand.parameters.add(new sqlparameter("@contact", contact));
//                        datacommand.parameters.add(new sqlparameter("@address", address));
//                        datacommand.parameters.add(new sqlparameter("@userid", sqldbtype.int));
//                        datacommand.parameters["@userid"].direction = parameterdirection.output;
//                        datacommand.executenonquery();
//                        int res = convert.toint32(datacommand.parameters["@userid"].value);
//                        cmd.parameters["@name"].direction = parameterdirection.output;

//                        return res;
//                    }
//                }
//            }
//            catch (exception ex)
//            {
//                throw ex;
//            }

//        }

//        public static logindetails insertforlogin(string nameofprocedure, string email, string password)
//        {
//            try
//            {
//                var connectionstring = configurationmanager.connectionstrings["connectionstring"].connectionstring;
//                using (sqlconnection dataconnection = new sqlconnection(connectionstring))
//                {
//                    using (sqlcommand datacommand = new sqlcommand(nameofprocedure, dataconnection))
//                    {
//                        datacommand.commandtext = sql;
//                        datacommand.commandtype = commandtype.storedprocedure;
//                        dataconnection.open();

//                        datacommand.parameters.add(new sqlparameter("@email", email));
//                        datacommand.parameters.add(new sqlparameter("@pass", password));
//                        datacommand.parameters.add(new sqlparameter("@userid", sqldbtype.int));
//                        datacommand.parameters.add(new sqlparameter("@rolename", sqldbtype.nvarchar, 30));
//                        datacommand.parameters["@userid"].direction = parameterdirection.output;
//                        datacommand.parameters["@rolename"].direction = parameterdirection.output;
//                        datacommand.executenonquery();
//                        int userid = convert.toint32(datacommand.parameters["@userid"].value);
//                        string rolename = (string)datacommand.parameters["@rolename"].value;
//                        cmd.parameters["@name"].direction = parameterdirection.output;

//                        return new logindetails(userid, rolename);
//                    }
//                }
//            }
//            catch (exception ex)
//            {
//                throw ex;
//            }

//        }
//    }
//}