using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace GarudaWeb
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserLogin"] != null)
            {
                Response.Redirect("Login.aspx");
            }

        }

        protected void Button_Login_Click(object sender, EventArgs e)

        {
            SqlConnection GarudaConnect = new SqlConnection(ConfigurationManager.ConnectionStrings["GarudaDBConnection"].ConnectionString);
            GarudaConnect.Open();
            string cekuser = "SELECT COUNT(*) FROM [User] WHERE username='" + Username.Text + "'";
            SqlCommand query = new SqlCommand(cekuser, GarudaConnect);
            int jumlah = Convert.ToInt32(query.ExecuteScalar().ToString());
            GarudaConnect.Close();
            if (jumlah == 1)
            {
                GarudaConnect.Open();
                string passwordsql = "SELECT password FROM [User] WHERE username ='" + Username.Text + "'";
                SqlCommand passquery = new SqlCommand(passwordsql, GarudaConnect);
                string password = passquery.ExecuteScalar().ToString();
                GarudaConnect.Close();
                if (password == Password.Text){
                    //session
                    Session["UserLogin"] = Username.Text;
                    Response.Redirect("Admin.aspx");
                }
                else
                {
                    Response.Write("(!) Password salah");
                }
            }
            else
            {
                Response.Write("(!) Username tidak ditemukan");
            }
        }
    }
}