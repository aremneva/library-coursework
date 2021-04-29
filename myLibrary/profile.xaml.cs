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
        public bool state = false;
        public profile(String login)
        {
            
            InitializeComponent();
            username.Content = login;
            DataTable dt = new DataTable();
            String sql = "SELECT r.Familia, r.Imya, r.Otchestvo, r.birthday, r.pol, r.adress, r.phone, r.pasport FROM readers as r inner join login as l inner join library_card as lc on lc.id_login = l.id_login and r.idReaders = lc.idReaders and l.login='"+login+"'";
            dt=connect.TestCon(sql);

            if ((dt != null)|| (dt.Rows.Count > 0)) {
                state = true;
                int i = 0;
                familia.Text = dt.Rows[i].Field<string>("Familia");
                nameUs.Text = dt.Rows[i].Field<string>("Imya");
                otchestv.Text = dt.Rows[i].Field<string>("Otchestvo");
                passport.Text = dt.Rows[i].Field<string>("pasport");
                phone.Text = dt.Rows[i].Field<string>("phone");
                adress1.Text = dt.Rows[i].Field<string>("adress");
                birth.SelectedDate = dt.Rows[i].Field<DateTime>("birthday");
                String pol = dt.Rows[i].Field<string>("pol");
                if (pol == "М") Male.IsChecked = true;
                if (pol == "Ж") Fem.IsChecked = true;
            }
            
            
        }
    
        private void save_Click(object sender, RoutedEventArgs e)
        {
            String fam, nam, otch, pas, ph, adr,pol;
            DateTime dayBirth;
            dayBirth = (DateTime)birth.SelectedDate;
            string dateSql = dayBirth.ToString("yyyy-MM-dd");
            pol = "";
            fam = familia.Text;
            nam = nameUs.Text;
            otch = otchestv.Text;
            pas = passport.Text;
            ph = phone.Text;
            adr = adress1.Text;
            if (Fem.IsChecked == true) pol = "Ж";
            if (Male.IsChecked == true) pol = "М";
            if ((fam == "") || (nam == "") || (otch == "") || (pas == "") || (ph == "") || (adr == "") || (dateSql == null))
            {
                MessageBox.Show("Введите ВСЕ данные!");
            }
            else { 
                if (state == false){
                    DataTable dtR, dtL;
                    //Вставка новых данных : таблица читатели, карта читателя
                    String sqlR = "INSERT INTO `newlibrary`.`readers` (`Familia`, `Imya`, `Otchestvo`, `birthday`, `pol`, `adress`, `phone`, `pasport`)" +
                        " VALUES ('"+fam+"', '"+nam+"', '"+otch+"', '"+dateSql+"', '"+pol+"', '"+adr+"', '"+ph+"', '"+pas+"');";
                    String sqlFindID = "Select idReaders from readers where phone ='"+ph+"'";
                    String sqlFindIDlog = "Select id_login from login where login = '"+username.Content.ToString()+"'";
                    dtR=connect.TestCon(sqlFindID);
                    dtL = connect.TestCon(sqlFindIDlog);
                    int id = dtR.Rows[0].Field<int>("idReaders");
                    int idLog = dtL.Rows[0].Field<int>("id_login");
                    DateTime dateIsd =DateTime.Now;
                    String sqlLC = "INSERT INTO `newlibrary`.`library_card` (`idReaders`, `date_of_issue`, `id_login`)" +
                        " VALUES ('"+id+"', '"+dateIsd+"', '"+idLog+"');";
                }
                else {
                    //Обновление данных
                    MessageBox.Show("Later");
                    String sql = "";
                }
             }
        }

        private void back_Click(object sender, RoutedEventArgs e)
        {
            loginLib win = new loginLib(username.Content.ToString());
            win.Show();
            this.Close();
        }
    }
}
