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
    /// Логика взаимодействия для librarian.xaml
    /// </summary>
    public partial class librarian : Window
    {
        public librarian(string login)
        {
            
            InitializeComponent();
            un.Content = login;
            string sql = "Select * from issuedbooks";
            IssuedHide(Visibility.Visible);
            SearchQ(sql);
        }
        private void SearchQ(String sql)
        {
            try
            {
                DataTable dt = new DataTable();
                dataGrid.DataContext = connect.TestCon(sql);
            }
            catch (MySqlException e)
            {
                MessageBox.Show("Ошибка подключения " + e);
            }
        }
        private void IssuedHide(Visibility hide)
        {
            idBook.Visibility = hide;
            idCard.Visibility = hide;
            save.Visibility = hide;
            
        }
        private void DelHide(Visibility hide)
        {
            delIsd.Visibility = hide;
            delB.Visibility = hide;
        }
        private void ComboBox_DropDownClosed(object sender, EventArgs e)
        {
            IssuedHide(Visibility.Hidden);
            DelHide(Visibility.Hidden);
            string sql = "";
            if (tablesL.SelectedItem == l1)
            {
                sql = "Select * from issuedbooks";
                IssuedHide(Visibility.Visible);

            }
            if (tablesL.SelectedItem == l2)
            {
                sql = "SELECT card.id_library_card, CONCAT(r.Familia,' ',r.Imya,' ',r.Otchestvo) as FIO, r.phone, r.adress, sum(f.sanction) as sanction from card_fines as card inner join library_card as lcard inner join readers as r inner join fines as f on lcard.id_library_card = card.id_library_card and r.idReaders = lcard.idReaders and f.id_fines = card.id_fines group by card.id_library_card; ";

            }
            if (tablesL.SelectedItem == l3)
            {
                sql = "select b.idBooks,b.nameBook, storage.shelf, storage.row from storage inner join books as b on storage.id_storage = b.id_storage ";

            }
            if (tablesL.SelectedItem == l4)
            {
                sql = "Select * from library_card";
            }
            if (tablesL.SelectedItem == delete)
            {
                sql = "Select * from issuedbooks";
                DelHide(Visibility.Visible);
            }
            if (tablesL.SelectedItem != null) SearchQ(sql);
        }

        private void back_Click(object sender, RoutedEventArgs e)
        {
            MainWindow win1 = new MainWindow();
            win1.Show();
            this.Close();
        }

        private void save_Click(object sender, RoutedEventArgs e)
        {
            string idB = idBook.Text;
            string idC = idCard.Text;
            int idL=1;
            string sqlFindID = "select s.idStaff as idStaff from login inner join staff as s on s.id_login = login.id_login where login='"+un.Content.ToString()+"'";
      
            DataTable dtL, dtLC;
            dtL = connect.TestCon(sqlFindID);
            try
            {
                if ((dtL.Rows.Count > 0))
                {
                    idL = dtL.Rows[0].Field<int>("idStaff");

                    string sqlLC = "INSERT INTO issuedbooks (`idBooks`, `id_library_card`, `idStaff`) VALUES ('"+idB+"', '"+idC+"', '"+idL+"');";
                    dtLC = connect.TestCon(sqlLC);
                    string sql = "Select * from issuedbooks";
                    SearchQ(sql);
                }
                else
                {
             MessageBox.Show("Что-то пошло не так");
                }
            }
            catch (MySqlException ex)
            {
                MessageBox.Show("" + ex, "Некорректно введены данные");
            }
        }

        private void delB_Click(object sender, RoutedEventArgs e)
        {
           
            DataTable dtDEL;
            try
            {
                string sqlDL = "DELETE FROM issuedbooks WHERE(`idIssued` = '"+delIsd.Text+"'); ";
                dtDEL = connect.TestCon(sqlDL);
                string sql = "Select * from issuedbooks";
                SearchQ(sql);
            }
            catch (MySqlException ex)
            {
                MessageBox.Show("" + ex, "Некорректно введены данные");
            }
        }
    }
}
