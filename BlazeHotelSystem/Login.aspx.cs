using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BlazeHotelSystem
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"C:\\Users\\Arnele\\OneDrive\\Desktop\\CMT 317 Project\\BlazeHotelSystem\\App_Data\\Blaze.mdf\";Integrated Security=True";
            string email = txtEmail.Text;
            string password = txtPass.Text;

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                string query = "SELECT COUNT(*) FROM Customers WHERE email=@Email AND password=@Password";
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@Email", email);
                    command.Parameters.AddWithValue("@Password", password);
                    int count = Convert.ToInt32(command.ExecuteScalar());
                    if (count == 1)
                    {
                        HttpCookie cookie = new HttpCookie("key", "agreed");
                        Response.Cookies.Add(cookie);
                        // Login successful
                        Response.Redirect("Home.aspx");
                    }
                    else
                    {
                        Response.Redirect("Login.aspx");
                    }
                }
            }
        }
    }
}