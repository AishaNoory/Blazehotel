using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BlazeHotelSystem
{
    public partial class Signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text;
            string email = txtEmail.Text;
            string phone = txtPhone.Text;
            string password = txtPass.Text;


            string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"C:\\Users\\Arnele\\OneDrive\\Desktop\\CMT 317 Project\\BlazeHotelSystem\\App_Data\\Blaze.mdf\";Integrated Security=True";
            string query = "INSERT INTO Customers (Username, Email, Phone, Password) VALUES (@value1, @value2, @value3, @value4)";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                using (SqlCommand command = new SqlCommand(query, connection))
                {

                    command.Parameters.AddWithValue("@value1", username);
                    command.Parameters.AddWithValue("@value2", email);
                    command.Parameters.AddWithValue("@value3", phone);
                    command.Parameters.AddWithValue("@value4", password);

                    command.ExecuteNonQuery();
                }
            }
            // Show a success message
            Response.Redirect("LOGIN.aspx");
        }
    }
}