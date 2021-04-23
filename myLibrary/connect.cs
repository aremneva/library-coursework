using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Configuration;

namespace myLibrary
{
    class connect
    {
        public static MySqlConnection GetConnection()
        {
            string conn = ConfigurationManager.ConnectionStrings["myLibrary.Properties.Settings.connectionLib"].ConnectionString;
            MySqlConnection connection = new MySqlConnection(conn);
            connection.Open();
            return connection;
        }
        }
}
