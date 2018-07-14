using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RegistrationAndLogin
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            captcha1.ValidateCaptcha(TextBox6.Text.Trim());
            if (captcha1.UserValidated)
            {
                SqlConnection con = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB;AttachDbFilename=G:\Projects\LogIn\RegistrationAndLogin\RegistrationAndLogin\App_Data\Registration.mdf;Integrated Security = True; Connect Timeout = 30");
                con.Open();
                String str = "Insert Into RegForm Values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "')";
                SqlCommand cmd = new SqlCommand(str, con);
                cmd.ExecuteNonQuery();

                Session["name"] = TextBox1.Text;
                Response.Redirect("Default.aspx");
                con.Close();
            }
            else
            {
                Label2.ForeColor = System.Drawing.Color.Red;
                Label2.Text = "You have Entered InValid Captcha Characters please Enter again";
            }
        }
        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB;AttachDbFilename=G:\Projects\LogIn\RegistrationAndLogin\RegistrationAndLogin\App_Data\Registration.mdf;Integrated Security = True; Connect Timeout = 30");
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * From RegForm Where UserName='" + TextBox1.Text + "'", con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Label1.Text = "User Name Already Exists.";
                this.Label1.ForeColor = System.Drawing.Color.Red;
            }
            con.Close();
        }
    }
}