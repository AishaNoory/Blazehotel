using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BlazeHotelSystem
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          
        }

        protected void btnbooknow_Click(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string username = txtusername.Text;
            string phone = txtphone.Text;
            string message = txtmessage.Text;


            string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"C:\\Users\\Arnele\\OneDrive\\Desktop\\CMT 317 Project\\BlazeHotelSystem\\App_Data\\Blaze.mdf\";Integrated Security=True";
            string query = "INSERT INTO Contact (Username, Phone, Message) VALUES (@value1, @value2, @value3)";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                using (SqlCommand command = new SqlCommand(query, connection))
                {

                    command.Parameters.AddWithValue("@value1", username);
                    command.Parameters.AddWithValue("@value2", phone);
                    command.Parameters.AddWithValue("@value3", message);

                    command.ExecuteNonQuery();
                }
            }
        }
    }
}