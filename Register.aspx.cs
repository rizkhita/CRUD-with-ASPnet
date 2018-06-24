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
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserLogin"] != null)
            {
                Response.Redirect("Login.aspx");
            }

        }

        protected void Gender_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button_Daftar(object sender, EventArgs e)
        {
            SqlConnection GarudaConnect = new SqlConnection(ConfigurationManager.ConnectionStrings["GarudaDBConnection"].ConnectionString);
            GarudaConnect.Open();
            string cekuser = "SELECT COUNT(*) FROM [User] WHERE username='" + Username.Text + "'";
            SqlCommand query = new SqlCommand(cekuser, GarudaConnect);
            int jumlah = Convert.ToInt32(query.ExecuteScalar().ToString());
            GarudaConnect.Close();
            if (jumlah != 0)
            {
                Response.Write("Username sudah digunakan");
            }
            else
            {
                GarudaConnect.Open();
                string insert = "INSERT INTO [User] (username,password,email,gender) VALUES (@username,@password,@email,@gender)";
                SqlCommand insertquery = new SqlCommand(insert, GarudaConnect);
                insertquery.Parameters.AddWithValue("@username", Username.Text);
                insertquery.Parameters.AddWithValue("@password", Password.Text);
                insertquery.Parameters.AddWithValue("@email", Email.Text);
                insertquery.Parameters.AddWithValue("@gender", Gender.SelectedItem.ToString());
                insertquery.ExecuteNonQuery();
                GarudaConnect.Close();
                //session
                Response.Redirect("Admin.aspx");

            }
        }
    }
}