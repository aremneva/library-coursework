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
        public void testCon(String sql)
        {
            try
            {
                MySqlCommand cmd = new MySqlCommand(sql, connect.GetConnection());
                DataTable dt = new DataTable();
                dt.Load(cmd.ExecuteReader());
                dataGrid.DataContext = dt;
            }
            catch (MySqlException e)
            {
                MessageBox.Show("Ошибка подключения " + e);
            }
        }

        public String findGen()
        {
            string gen="";
            if (filtG.IsChecked == true)  gen = filtG.Content.ToString();
            if (filtG2.IsChecked == true) gen = filtG2.Content.ToString();
            if (filtG3.IsChecked == true) gen = filtG3.Content.ToString();
            if (filtG4.IsChecked == true) gen = filtG4.Content.ToString();
            if (filtG5.IsChecked == true) gen = filtG5.Content.ToString();
            if (filtG6.IsChecked == true) gen = filtG6.Content.ToString();
            if (filtG7.IsChecked == true) gen = filtG7.Content.ToString();
            if (filtG8.IsChecked == true) gen = filtG8.Content.ToString();
            if (filtG9.IsChecked == true) gen = filtG9.Content.ToString();
            if (filtG10.IsChecked == true) gen = filtG10.Content.ToString();
            if (filtG11.IsChecked == true) gen = filtG11.Content.ToString();
            if (filtG12.IsChecked == true) gen = filtG12.Content.ToString();
            if (filtG13.IsChecked == true) gen = filtG13.Content.ToString();
            if (filtG14.IsChecked == true) gen = filtG14.Content.ToString();
            return gen;
        }

        public void search()
        {
            String book = searchBook.Text;
            textBook.Content = "Результат поиска:";
            string sql = "SELECT b.nameBook as Название, b.author as Автор, b.year as Год, g.nameGen as Жанр,p.namePub as Издательство FROM books as b inner join genre as g inner join publishers as p on b.idGen = g.idGenre and b.idPub = p.idPub and b.namebook Like Concat('%', '" + book + "', '%')";
            testCon(sql);
        }
        public loginLib(string login)
        {
            InitializeComponent();
            username.Content = login;
            String user = login;
            string sql = "";
            string access = "user";
            string sql_acs = "Select access from login where login = '" + user + "'";
            MySqlCommand cmdAc = new MySqlCommand(sql_acs, connect.GetConnection());
            MySqlDataReader reader = cmdAc.ExecuteReader();
            while (reader.Read())
            {
                access = reader.GetString(0);
            }
            if (access == "user")
            {
                sql = "Select b.nameBook as 'Книги', isd.issuedDate as 'Дата выдачи', isd.returnDate as 'Дата возврата' from issuedbooks as isd inner join library_card as lc inner join books as b inner join login as l on isd.id_library_card = lc.id_library_card and lc.id_login = l.id_login and isd.idBooks = b.idBooks and l.login = '" + user + "'";
            }
            if (access == "admin")
            {

                profile.Visibility = Visibility.Hidden;
                catalog.Visibility = Visibility.Hidden;
                srok.Visibility = Visibility.Hidden;
                fine.Visibility = Visibility.Hidden;
                recom.Visibility = Visibility.Hidden;
                sql = "Select * from library_card";
            }
            if (access == "librarian")
            {
                sql = "Select * from issuedbooks";
            }
            testCon(sql);

        }


        private void Back_Click(object sender, RoutedEventArgs e)
        {
            MainWindow win1 = new MainWindow();
            win1.Show();
            this.Close();
        }

        private void srok_Click(object sender, RoutedEventArgs e)
        {
            textBook.Content = "Ваши книги и сроки:";

            String user = username.Content.ToString();
            String search = textBook.Content.ToString();
            string isdSql = "Select b.nameBook as 'Книги', isd.issuedDate as 'Дата выдачи', isd.returnDate as 'Дата возврата' from issuedbooks as isd inner join library_card as lc inner join books as b inner join login as l on isd.id_library_card = lc.id_library_card and lc.id_login = l.id_login and isd.idBooks = b.idBooks and l.login = '" + user + "'";

            testCon(isdSql);
        }

        private void fine_Click(object sender, RoutedEventArgs e)
        {
            textBook.Content = "Ваши штрафы:";
            String user = username.Content.ToString();
            string sql = "SELECT card.id_library_card as номер, sum(f.sanction) as штраф from card_fines as card inner join library_card as lcard inner join readers as r inner join fines as f on lcard.id_library_card = card.id_library_card and r.idReaders = lcard.idReaders and f.id_fines = card.id_fines and card.id_library_card = (Select id_library_card from library_card where id_login = (Select id_login from login where login = '" + user + "')) group by card.id_library_card; ";

            testCon(sql);

        }

        private void searchBook_TextChanged(object sender, TextChangedEventArgs e)
        {
            search();
        }

        private void prof_Click(object sender, RoutedEventArgs e)
        {
            profile win1 = new profile();
            win1.Show();
        }

        private void recom_Click(object sender, RoutedEventArgs e)
        {
            textBook.Content = "Ваши рекомендации:";
            String user = username.Content.ToString();
            string sql = "Select b.nameBook as Книга, b.author as Автор from books as b inner join genre as g on b.idGen = g.idGenre and nameGen LIKE (Select  g.nameGen from issuedbooks as isd inner join genre as g inner join books as b inner join library_card as lc inner join login as l  on isd.idBooks = b.idBooks and g.idGenre = b.idGen and isd.id_library_card = lc.id_library_card and lc.id_login = (Select id_login from login where login = '" + user + "') LIMIT 1) LIMIT 10; ";
            testCon(sql);
        }

        private void secondF1_Checked(object sender, RoutedEventArgs e)
        {
            //UncheckAllF();
            //firstF1.IsChecked = true;
            secondF1.IsChecked = false;
            String book = searchBook.Text;
            textBook.Content = "Результат поиска:";
            string sql = "SELECT b.nameBook as Название, b.author as Автор, b.year as Год, g.nameGen as Жанр,p.namePub as Издательство FROM books as b inner join genre as g inner join publishers as p on b.idGen = g.idGenre and b.idPub = p.idPub and b.namebook Like Concat('%', '" + book + "', '%') order by b.year desc";
            testCon(sql);
        }
        private void secondF1_Uncheck(object sender, RoutedEventArgs e)
        {
            search();
        }

        private void secondF2_Checked(object sender, RoutedEventArgs e)
        {
            //UncheckAllF();
            //secondF2.IsChecked = true;
            firstF1.IsChecked = false;
            String book = searchBook.Text;
            textBook.Content = "Результат поиска:";
            string sql = "SELECT b.nameBook as Название, b.author as Автор, b.year as Год, g.nameGen as Жанр,p.namePub as Издательство FROM books as b inner join genre as g inner join publishers as p on b.idGen = g.idGenre and b.idPub = p.idPub and b.namebook Like Concat('%', '" + book + "', '%') order by b.nameBook asc";
            testCon(sql);
        }
        private void secondF2_Uncheck(object sender, RoutedEventArgs e)
        {
            search();
        }

        private void catalog_Click(object sender, RoutedEventArgs e)
        {
            catalog win1 = new catalog();
            win1.Show();
            this.Close();
        }

        private void gen(object sender, RoutedEventArgs e)
        {
            string gen=findGen();
            String book = searchBook.Text;
            textBook.Content = "Результат поиска:";
            string sql = "SELECT b.nameBook as Название, b.author as Автор, b.year as Год, g.nameGen as Жанр,p.namePub as Издательство FROM books as b inner join genre as g inner join publishers as p on b.idGen = g.idGenre and b.idPub = p.idPub and b.namebook Like Concat('%', '" + book + "', '%') and g.nameGen= '"+gen+"'";
            testCon(sql);
        }
    }
}
