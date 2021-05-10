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

        public String FindGen()
        {
            string gen = filterG.SelectedItem.ToString();
            return gen;
        }

        public void Search(String sql)
        {
            try { 
            DataTable dt = new DataTable();
            textBook.Content = "Результат поиска:";
            dataGrid.DataContext= connect.TestCon(sql);
            }
            catch (MySqlException e)
            {
                MessageBox.Show("Ошибка подключения "+ e);
            }
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
                books.Visibility = Visibility.Hidden;
                saveB.Visibility = Visibility.Hidden;
                sql = "Select b.nameBook as 'Книги', isd.issuedDate as 'Дата выдачи', isd.returnDate as 'Дата возврата' from issuedbooks as isd inner join library_card as lc inner join books as b inner join login as l on isd.id_library_card = lc.id_library_card and lc.id_login = l.id_login and isd.idBooks = b.idBooks and l.login = '" + user + "'";
                
            }
            if (access == "admin")
            {
                MessageBox.Show( "Вы зашли как администратор!", "Вход", MessageBoxButton.OK, MessageBoxImage.Information);
                profile.Visibility = Visibility.Hidden;
                srok.Visibility = Visibility.Hidden;
                fine.Visibility = Visibility.Hidden;
                recom.Visibility = Visibility.Hidden;
                sql = "Select * from library_card";
            }
            if (access == "librarian")
            {
                MessageBox.Show("Вы зашли как библиотекарь!", "Вход", MessageBoxButton.OK, MessageBoxImage.Information);
                profile.Visibility = Visibility.Hidden;
                srok.Visibility = Visibility.Hidden;
                fine.Visibility = Visibility.Hidden;
                recom.Visibility = Visibility.Hidden;
                sql = "Select * from issuedbooks";
            }
            Search(sql);

        }


        private void Back_Click(object sender, RoutedEventArgs e)
        {
            MainWindow win1 = new MainWindow();
            win1.Show();
            this.Close();
        }

        private void Srok_Click(object sender, RoutedEventArgs e)
        {
            textBook.Content = "Ваши книги и сроки:";

            String user = username.Content.ToString();
            String search = textBook.Content.ToString();
            string sql = "Select b.nameBook as 'Книги', isd.issuedDate as 'Дата выдачи', isd.returnDate as 'Дата возврата' from issuedbooks as isd inner join library_card as lc inner join books as b inner join login as l on isd.id_library_card = lc.id_library_card and lc.id_login = l.id_login and isd.idBooks = b.idBooks and l.login = '" + user + "'";
            Search(sql);
        }

        private void Fine_Click(object sender, RoutedEventArgs e)
        {
            textBook.Content = "Ваши штрафы:";
            String user = username.Content.ToString();
            string sql = "SELECT card.id_library_card as номер, sum(f.sanction) as штраф from card_fines as card inner join library_card as lcard inner join readers as r inner join fines as f on lcard.id_library_card = card.id_library_card and r.idReaders = lcard.idReaders and f.id_fines = card.id_fines and card.id_library_card = (Select id_library_card from library_card where id_login = (Select id_login from login where login = '" + user + "')) group by card.id_library_card; ";
            Search(sql);

        }

        private void SearchBook_TextChanged(object sender, TextChangedEventArgs e)
        {
            /*  String book = searchBook.Text;
              string sql = "SELECT b.nameBook as Название, b.author as Автор, b.year as Год, g.nameGen as Жанр,p.namePub as Издательство FROM books as b inner join genre as g inner join publishers as p on b.idGen = g.idGenre and b.idPub = p.idPub and b.namebook Like Concat('%', '" + book + "', '%')";

              Search(sql);*/
            GetFilter();
        }

        private void Prof_Click(object sender, RoutedEventArgs e)
        {
            profile win1 = new profile(username.Content.ToString());
            win1.Show();
            this.Close();
        }

        private void Recom_Click(object sender, RoutedEventArgs e)
        {
            textBook.Content = "Ваши рекомендации:";
            String user = username.Content.ToString();
            string sql = "Select b.nameBook as Книга, b.author as Автор from books as b inner join genre as g on b.idGen = g.idGenre and nameGen LIKE (Select  g.nameGen from issuedbooks as isd inner join genre as g inner join books as b inner join library_card as lc inner join login as l  on isd.idBooks = b.idBooks and g.idGenre = b.idGen and isd.id_library_card = lc.id_library_card and lc.id_login = (Select id_login from login where login = '" + user + "') LIMIT 1) LIMIT 10; ";
            Search(sql);
        }


        private void Catalog_Click(object sender, RoutedEventArgs e)
        {
            catalog win1 = new catalog();
            win1.Show();
            this.Close();
        }


        private void books_Click(object sender, RoutedEventArgs e)
        {
            textBook.Content = "Выданные книги:";
            string sql = "SELECT * From issuedbooks";
            Search(sql);
        }

        private void saveBook(object sender, RoutedEventArgs e)
        {
          //  String changed;
            
        }

        private void dataGrid_SelectedCellsChanged(object sender, SelectedCellsChangedEventArgs e)
        {
           /* 
            if(dataGrid.SelectedItem !=null)
            {
                string change = dataGrid.SelectedCells.ToString();
                MessageBox.Show(change);
            }*/
        }

        private void all_Books(object sender, RoutedEventArgs e)
        {
            textBook.Content = "Все книги:";
            string sql = "SELECT b.nameBook as Название, b.author as Автор, b.year as Год, g.nameGen as Жанр,p.namePub as Издательство FROM books as b inner join genre as g inner join publishers as p on b.idGen = g.idGenre and b.idPub = p.idPub";
            Search(sql);
        }

        private void GetFilter() {
            String book = searchBook.Text;
            string fil = filter1.Text;
            string gen = filterG.Text;
            string sql="";

            if ((fil == "-") || (gen == "-"))
            {
                if((fil=="-")&&(gen=="-")) sql = "SELECT b.nameBook as Название, b.author as Автор, b.year as Год, g.nameGen as Жанр,p.namePub as Издательство FROM books as b inner join genre as g inner join publishers as p on b.idGen = g.idGenre and b.idPub = p.idPub and b.namebook Like Concat('%', '" + book + "', '%')";
               
                if ((fil == "-") && (gen != "-")) sql = "SELECT b.nameBook as Название, b.author as Автор, b.year as Год, g.nameGen as Жанр,p.namePub as Издательство FROM books as b inner join genre as g inner join publishers as p on b.idGen = g.idGenre and b.idPub = p.idPub and b.namebook Like Concat('%', '" + book + "', '%') and g.nameGen= '" + gen + "'";
                if ((fil != "-") && (gen == "-"))
                {
                    if (fil == "По году") sql = "SELECT b.nameBook as Название, b.author as Автор, b.year as Год, g.nameGen as Жанр,p.namePub as Издательство FROM books as b inner join genre as g inner join publishers as p on b.idGen = g.idGenre and b.idPub = p.idPub and b.namebook Like Concat('%', '" + book + "', '%') order by b.year desc";
                    if (fil == "По названию") sql = "SELECT b.nameBook as Название, b.author as Автор, b.year as Год, g.nameGen as Жанр,p.namePub as Издательство FROM books as b inner join genre as g inner join publishers as p on b.idGen = g.idGenre and b.idPub = p.idPub and b.namebook Like Concat('%', '" + book + "', '%') order by b.nameBook asc";
                }
            }
            else {
                if (fil == "По году") sql = "SELECT b.nameBook as Название, b.author as Автор, b.year as Год, g.nameGen as Жанр,p.namePub as Издательство FROM books as b inner join genre as g inner join publishers as p on b.idGen = g.idGenre and b.idPub = p.idPub and b.namebook Like Concat('%', '" + book + "', '%') and g.nameGen= '" + gen + "' order by b.year desc";
                if (fil == "По названию") sql = "SELECT b.nameBook as Название, b.author as Автор, b.year as Год, g.nameGen as Жанр,p.namePub as Издательство FROM books as b inner join genre as g inner join publishers as p on b.idGen = g.idGenre and b.idPub = p.idPub and b.namebook Like Concat('%', '" + book + "', '%') and g.nameGen= '" + gen + "' order by b.nameBook asc";
            }
            Search(sql);
        }


        private void filterG_DropDownClosed(object sender, EventArgs e)
        {
            GetFilter();
        }

        private void filter1_DropDownClosed(object sender, EventArgs e)
        {
            GetFilter();
        }
    }
}
