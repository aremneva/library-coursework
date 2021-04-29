using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Configuration;
using System.Windows;
using System.Data;

namespace myLibrary
{
    class connect
    {
        public static MySqlConnection GetConnection() //подключение к базе данных
        {
            string conn = ConfigurationManager.ConnectionStrings["myLibrary.Properties.Settings.connectionLib"].ConnectionString;
            MySqlConnection connection = new MySqlConnection(conn);
            connection.Open();
            return connection;
        }
        public static DataTable TestCon(String sql) // ввод запроса, получаем datatable с запрашиваемыми данными
        {
            DataTable dt = new DataTable();
            try
            {
                MySqlCommand cmd = new MySqlCommand(sql, connect.GetConnection());
                dt.Load(cmd.ExecuteReader());
            }
            catch (MySqlException e)
            {
                MessageBox.Show("Ошибка подключения " + e);
            }
            return dt;
        }
    }
}
