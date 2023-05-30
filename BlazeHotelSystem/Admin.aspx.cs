using System;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BlazeHotelSystem
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"C:\\Users\\Arnele\\OneDrive\\Desktop\\CMT 317 Project\\BlazeHotelSystem\\App_Data\\Blaze.mdf\";Integrated Security=True";
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();

                    string query = "SELECT * FROM Customers";
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        using (SqlDataReader reader = command.ExecuteReader())
                        {
                            DataTable dataTable = new DataTable();
                            dataTable.Load(reader);

                            GridView1.DataSource = dataTable;
                            GridView1.DataBind();
                        }
                    }
                }

                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();

                    string query = "SELECT * FROM Booking";
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        using (SqlDataReader reader = command.ExecuteReader())
                        {
                            DataTable dataTable = new DataTable();
                            dataTable.Load(reader);

                            GridView2.DataSource = dataTable;
                            GridView2.DataBind();
                        }
                    }
                }

                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();

                    string query = "SELECT * FROM Contact";
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        using (SqlDataReader reader = command.ExecuteReader())
                        {
                            DataTable dataTable = new DataTable();
                            dataTable.Load(reader);

                            GridView3.DataSource = dataTable;
                            GridView3.DataBind();
                        }
                    }
                }



            }

        }


        //CONTACT DELETE
        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"C:\\Users\\Arnele\\OneDrive\\Desktop\\CMT 317 Project\\BlazeHotelSystem\\App_Data\\Blaze.mdf\";Integrated Security=True";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                string query = "SELECT * FROM Contact";
                using (SqlCommand command = new SqlCommand(query, connection))
                {

                    SqlDataReader reader = command.ExecuteReader();
                    while (reader.Read())
                    {
                        string itemId = Convert.ToString(reader.GetInt32(0));
                        HttpCookie idcookie = new HttpCookie("contact", itemId);
                        Response.Cookies.Add(idcookie);

                    }
                    reader.Close();

                }


                HttpCookie cookie = Request.Cookies["contact"];
                string cookievalue = cookie.Value;
                string querydelete = "DELETE FROM Contact WHERE Id = @cooki";
                using (SqlCommand command1 = new SqlCommand(querydelete, connection))
                {
                    command1.Parameters.AddWithValue("@cooki", cookievalue);
                    command1.ExecuteNonQuery();
                }
            }

        }       

        //BOOKING DELETE

        protected void GridView2_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"C:\\Users\\Arnele\\OneDrive\\Desktop\\CMT 317 Project\\BlazeHotelSystem\\App_Data\\Blaze.mdf\";Integrated Security=True";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                string query = "SELECT * FROM Booking";
                using (SqlCommand command = new SqlCommand(query, connection))
                {

                    SqlDataReader reader = command.ExecuteReader();
                    while (reader.Read())
                    {
                        string itemId = Convert.ToString(reader.GetInt32(0));
                        HttpCookie idcookie = new HttpCookie("contact", itemId);
                        Response.Cookies.Add(idcookie);

                    }
                    reader.Close();

                }


                HttpCookie cookie = Request.Cookies["contact"];
                string cookievalue = cookie.Value;
                string querydelete = "DELETE FROM Booking WHERE Id = @cooki";
                using (SqlCommand command1 = new SqlCommand(querydelete, connection))
                {
                    command1.Parameters.AddWithValue("@cooki", cookievalue);
                    command1.ExecuteNonQuery();
                }
            }

        }

      

        //CUSTOMERS DELETING

        protected void GridView3_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"C:\\Users\\Arnele\\OneDrive\\Desktop\\CMT 317 Project\\BlazeHotelSystem\\App_Data\\Blaze.mdf\";Integrated Security=True";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                string query = "SELECT * FROM Customers";
                using (SqlCommand command = new SqlCommand(query, connection))
                {

                    SqlDataReader reader = command.ExecuteReader();
                    while (reader.Read())
                    {
                        string itemId = Convert.ToString(reader.GetInt32(0));
                        HttpCookie idcookie = new HttpCookie("contact", itemId);
                        Response.Cookies.Add(idcookie);

                    }
                    reader.Close();

                }


                HttpCookie cookie = Request.Cookies["contact"];
                string cookievalue = cookie.Value;
                string querydelete = "DELETE FROM Customers WHERE Id = @cooki";
                using (SqlCommand command1 = new SqlCommand(querydelete, connection))
                {
                    command1.Parameters.AddWithValue("@cooki", cookievalue);
                    command1.ExecuteNonQuery();
                }
            }

        }

    }
}