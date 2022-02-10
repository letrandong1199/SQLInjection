using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace SQLInjectionDemo
{
    public partial class LoginForm : Form
    {
        SqlConnection con = new SqlConnection();
        public LoginForm()
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = "Data Source=DESKTOP-P85G4DJ\\SQLEXPRESS;Initial Catalog=sqlinjectionDB;Integrated Security=True";
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            // TODO: This line of code loads data into the 'sqlinjectionDBDataSet.Users' table. You can move, or remove it, as needed.

            //this.usersTableAdapter.Fill(this.sqlinjectionDBDataSet.Users);
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-P85G4DJ\\SQLEXPRESS; Initial Catalog=sqlinjectionDB;Integrated Security = True");
            con.Open();

            {
            }
        }
        private void login_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = "Data Source=DESKTOP-P85G4DJ\\SQLEXPRESS; Initial Catalog=sqlinjectionDB;Integrated Security = True";
            con.Open();
            string username = txtbox_username.Text;
            string password = txtbox_password.Text;
            SqlCommand cmd = new SqlCommand("select Username,Password from Users where Username='" + username + "'and Password='" + password + "'", con);
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.HasRows)
            {
                MessageBox.Show("Login success Welcome to Homepage https://webmvc20220207162230.azurewebsites.net/");
                System.Diagnostics.Process.Start("https://webmvc20220207162230.azurewebsites.net/");
            }
            else
            {
                MessageBox.Show("Invalid Login please check username and password");
            }
            con.Close();
        }
        private void cancel_Click(object sender, EventArgs e)
        {
            Application.Exit();

        }


    }

        
    
}
