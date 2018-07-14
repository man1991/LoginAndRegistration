using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RegistrationAndLogin
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB;AttachDbFilename=G:\Projects\LogIn\RegistrationAndLogin\RegistrationAndLogin\App_Data\Registration.mdf;Integrated Security = True; Connect Timeout = 30");
            con.Open();
            SqlCommand cmd = new SqlCommand("Select Count(*) From RegForm Where UserName='"+ TextBox1.Text + "'and PassWord='" + TextBox2.Text + "'");
            cmd.Connection = con;
            int obj = Convert.ToInt32(cmd.ExecuteScalar());
            if (obj > 0)
            {
                Session["Name"] = TextBox1.Text;
                Response.Redirect("Default.aspx");
            }
            else
            {
                Label1.Text = "Invalid username and password.";
                this.Label1.ForeColor = System.Drawing.Color.Red;
            }
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registration.aspx");
        }
    }
}