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
        public loginLib()
        {
            InitializeComponent();
        }

        private void Load_Click(object sender, RoutedEventArgs e)
        {
            string str = "server=localhost;user=root;password=alina890;database=newlibrary;port=3306";
            MySqlConnection connection = new MySqlConnection(str);
            try
            {
                connection.Open();
                string sql = "SELECT * FROM newlibrary.books;";

                MySqlCommand cmd = new MySqlCommand(sql,connection);

                DataTable dt = new DataTable();
                dt.Load(cmd.ExecuteReader());

                connection.Close();

           
                dataGrid.DataContext = dt;
                /* MySqlDataAdapter adapter = new MySqlDataAdapter(sql, connection);
                 //MySqlDataReader reader = command.ExecuteReader();
                 DataSet ds = new DataSet();
                 adapter.Fill(ds);
                 // ds.Load(reader);
                 //dataGrid.AutoGenerateColumns = true;
                 //dataGrid.ItemsSource = ds.DefaultViewManager;
                 // dataGrid.DataContext = newlibraryDataSet.booksDataTable[0];
                 dataGrid.AutoGenerateColumns = true;
                 //dataGrid.ItemsSource = newlibraryDataSet.DefulView;*/

            }
            catch (MySqlException){
                
                MessageBox.Show("Ошибка подключения");
            }
            

        }

        private void Back_Click(object sender, RoutedEventArgs e)
        {
            MainWindow win1 = new MainWindow();
            win1.Show();
            this.Close();
        }

       
    }
}
