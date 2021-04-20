﻿using System;
using System.Collections.Generic;
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
using System.Data;
using MySql.Data.MySqlClient;
using System.Configuration;
using System.Security.Cryptography;

namespace myLibrary
{
    /// <summary>
    /// Логика взаимодействия для logpas.xaml
    /// </summary>
    public partial class logpas : Window
    {
        public logpas(string login)
        {
            InitializeComponent();
            name.Text = login;
        }

        private void Back_Click(object sender, RoutedEventArgs e)
        {
            MainWindow win1 = new MainWindow();
            win1.Show();
            this.Close();
        }

        private void Login(object sender, RoutedEventArgs e)
        {
            string log = name.Text;
            string pasw = SHA1(pas.Password);
            MySqlConnection cn = connect.GetConnection();
            try
            {
               
                connect.GetConnection();

            }
            catch (MySqlException)
            {

                MessageBox.Show("Ошибка подключения");
            }
            string sql = "SELECT * FROM login WHERE login='"+ log+"'" + " AND password= '" + pasw + "';";
            MySqlCommand cmd = new MySqlCommand(sql, cn);
            object result = cmd.ExecuteScalar();
            
            if (result is null)
            {
                MessageBox.Show("Такого пользователя нет или неверно введен пароль");
            }
            else
            {
                loginLib win = new loginLib(log);
                win.Show();
                this.Close();
            }

        }

        private string SHA1(string password)
        {
            var hash = new SHA1Managed().ComputeHash(Encoding.UTF8.GetBytes(password));
            return string.Concat(hash.Select(b => b.ToString("x2")));
        }
    }
}
