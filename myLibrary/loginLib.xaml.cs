using System;
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

namespace myLibrary
{
    /// <summary>
    /// Логика взаимодействия для loginLib.xaml
    /// </summary>
    public partial class loginLib : Window
    {
        public loginLib(string login)
        {
            InitializeComponent();
            username.Content = login;

            String user =login;
            try
            {
                string sql = "SELECT * FROM newlibrary.books;";
                string isdSql = " Select b.nameBook as 'Книги', isd.issuedDate as 'Дата выдачи', isd.returnDate as 'Дата возврата' from issuedbooks as isd inner join library_card as lc inner join books as b inner join login as l on isd.id_library_card = lc.id_library_card and lc.id_login = l.id_login and isd.idBooks = b.idBooks and l.login = '" + user + "'";

                MySqlCommand cmd = new MySqlCommand(isdSql, connect.GetConnection());

                DataTable dt = new DataTable();
                dt.Load(cmd.ExecuteReader());
                dataGrid.DataContext = dt;

            }
            catch (MySqlException)
            {
                MessageBox.Show("Ошибка подключения");
            }
        }

        private void Load_Click(object sender, RoutedEventArgs e)
        {
            textBook.Content = "Доступные книги:";
            string sql = "SELECT isd.id_library_card, b.nameBook, b.storage from issuedbooks as isd inner join library_card as lc inner join readers as r inner join books as b on lc.idReaders = r.idReaders and b.idBooks = isd.idBooks and isd.id_library_card = lc.id_library_card and b.namebook Like Concat('%', '" + searchBook.Text + "', '%') order by id_library_card; ";

            try
            {
                MySqlCommand cmd = new MySqlCommand(sql, connect.GetConnection());

                DataTable dt = new DataTable();
                dt.Load(cmd.ExecuteReader());
                dataGrid.DataContext = dt;

            }
            catch (MySqlException)
            {
                MessageBox.Show("Ошибка подключения");
            }
        }

        private void Back_Click(object sender, RoutedEventArgs e)
        {
            MainWindow win1 = new MainWindow();
            win1.Show();
            this.Close();
        }

        private void srok_Click(object sender, RoutedEventArgs e) {
            textBook.Content = "Ваши книги и сроки:";

            String user = username.Content.ToString();
            try
            {
                string sql = "SELECT * FROM newlibrary.books;";
                string isdSql = " Select b.nameBook as 'Книги', isd.issuedDate as 'Дата выдачи', isd.returnDate as 'Дата возврата' from issuedbooks as isd inner join library_card as lc inner join books as b inner join login as l on isd.id_library_card = lc.id_library_card and lc.id_login = l.id_login and isd.idBooks = b.idBooks and l.login = '" + user + "'";

                MySqlCommand cmd = new MySqlCommand(isdSql, connect.GetConnection());

                DataTable dt = new DataTable();
                dt.Load(cmd.ExecuteReader());
                dataGrid.DataContext = dt;

            }
            catch (MySqlException)
            {
                MessageBox.Show("Ошибка подключения");
            }
        }

        private void fine_Click(object sender, RoutedEventArgs e)
        {
            textBook.Content = "Ваши штрафы:";
            try
            {
                string sqlq = "SELECT * FROM newlibrary.books;";
                string sql = "SELECT card.id_library_card as номер, sum(f.sanction) as штраф from card_fines as card inner join library_card as lcard inner join readers as r inner join fines as f on lcard.id_library_card = card.id_library_card and r.idReaders = lcard.idReaders and f.id_fines = card.id_fines and card.id_library_card = (Select id_library_card from library_card where id_login = (Select id_login from login where login = 'user1')) group by card.id_library_card; ";
                    MySqlCommand cmd = new MySqlCommand(sql, connect.GetConnection());

                DataTable dt = new DataTable();
                dt.Load(cmd.ExecuteReader());
                dataGrid.DataContext = dt;

            }
            catch (MySqlException)
            {
                MessageBox.Show("Ошибка подключения");
            }
        }
    }
}
