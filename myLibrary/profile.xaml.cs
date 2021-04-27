using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace myLibrary
{
    /// <summary>
    /// Логика взаимодействия для profile.xaml
    /// </summary>
    public partial class profile : Window
    {
        public profile(String login)
        {
            InitializeComponent();
            username.Content = login;
        }
        public void testCon(String sql)
        {
            try
            {
                MySqlCommand cmd = new MySqlCommand(sql, connect.GetConnection());
            }
            catch (MySqlException e)
            {
                MessageBox.Show("Ошибка подключения " + e);
            }
        }
        private void save_Click(object sender, RoutedEventArgs e)
        {

        }

        private void back_Click(object sender, RoutedEventArgs e)
        {
            loginLib win = new loginLib(username.Content.ToString());
            win.Show();
            this.Close();
        }
    }
}
