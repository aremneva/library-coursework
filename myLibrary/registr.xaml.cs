using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Forms;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using MessageBox = System.Windows.Forms.MessageBox;
using System.Configuration;

namespace myLibrary
{
    /// <summary>
    /// Логика взаимодействия для registr.xaml
    /// </summary>
    public partial class registr : Window
    {
        public registr()
        {
            InitializeComponent();
        }

        private void Login(object sender, RoutedEventArgs e)
        {
            if (!pas1.Password.Equals(pas2.Password))
            {
                MessageBox.Show("Пароли не совпадают!");
            }
            else if (name.Text =="") {
                MessageBox.Show("Вы не ввели логин!");
            }
            else if ((pas1.Password == "")|| (pas2.Password == ""))
            {
                MessageBox.Show("Вы не ввели пароль!");
            }

            else {
                try
                {
                    connect.GetConnection();
                }
                catch {
                    MessageBox.Show("Ошибка подключения!");
                }

                string sql = "SELECT * FROM login WHERE login='" + name.Text + "';";
                MySqlCommand cmd = new MySqlCommand(sql, connect.GetConnection());
                object result = cmd.ExecuteScalar();

                if (result is null)
                {
                    MessageBox.Show("Регистрация прошла успешно", "Successfull", MessageBoxButtons.OK, MessageBoxIcon.Information, MessageBoxDefaultButton.Button1);
                    string ins = "INSERT INTO login(login,password,access) VALUES('" + name.Text + "','" + pas1.Password + "', 'user');";
                    MySqlCommand cmdins = new MySqlCommand(ins, connect.GetConnection());
                    cmdins.ExecuteNonQuery();

                    logpas win = new logpas(name.Text);
                    win.Show();
                    this.Close();
                }
                else MessageBox.Show("Такой пользователь уже есть!");
            }
        }

        private void Back_Click(object sender, RoutedEventArgs e)
        {
            MainWindow win = new MainWindow();
            win.Show();
            this.Close();
        }
    }
}
