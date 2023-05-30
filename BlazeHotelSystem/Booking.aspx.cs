using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BlazeHotelSystem
{
    public partial class Booking : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                txtCheckin.Text = DateTime.Today.ToString("yyyy-MM-dd");
                txtCheckout.Text = DateTime.Today.AddDays(1).ToString("yyyy-MM-dd");
            }

            ddlRoomtype.SelectedIndexChanged += new EventHandler(ddlRoomtype_SelectedIndexChanged);


        }

        protected void ddlRoomtype_SelectedIndexChanged(object sender, EventArgs e)
        {
            string change = ddlRoomtype.SelectedValue;
            if (change == "Standard Room")
            {
                Image1.Visible = true;
                Image2.Visible = false;
                Image3.Visible = false;
                Image4.Visible = false;
            }
            else if (change == "Sharing Room")
            {
                Image1.Visible = false;
                Image2.Visible = true;
                Image3.Visible = false;
                Image4.Visible = false;

            }
            else if (change == "Deluxe Room")
            {

                Image1.Visible = false;
                Image2.Visible = false;
                Image3.Visible = true;
                Image4.Visible = false;
            }
            else
            {
                Image1.Visible = false;
                Image2.Visible = false;
                Image3.Visible = false;
                Image4.Visible = true;
            }
        }

        protected void txtCheckin_TextChanged(object sender, EventArgs e)
        {
            calCheckIn.Visible = true;
            calCheckOut.Visible = false;
        }

        protected void txtCheckout_TextChanged(object sender, EventArgs e)
        {
            calCheckIn.Visible = false;
            calCheckOut.Visible = true;
        }

        protected void calCheckIn_SelectionChanged(object sender, EventArgs e)
        {
            txtCheckin.Text = calCheckIn.SelectedDate.ToString("yyyy-MM-dd");
            calCheckIn.Visible = false;
        }

        protected void calCheckOut_SelectionChanged(object sender, EventArgs e)
        {
            txtCheckout.Text = calCheckOut.SelectedDate.ToString("yyyy-MM-dd");
            calCheckOut.Visible = false;
        }


        protected void btnSubmit_Click1(object sender, EventArgs e)
        {
            string name = txtname.Text;
            string phone = txtphonenumber.Text;
            string email = txtemailaddress.Text;
            string roomtype = ddlRoomtype.Text;
            int numberofrooms = Convert.ToInt32(txtnumberofrooms.Text);
            DateTime checkin = Convert.ToDateTime(txtCheckin.Text);
            DateTime checkout = Convert.ToDateTime(txtCheckout.Text);


            string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"C:\\Users\\Arnele\\OneDrive\\Desktop\\CMT 317 Project\\BlazeHotelSystem\\App_Data\\Blaze.mdf\";Integrated Security=True";
            string query = "INSERT INTO Booking (Name, Phone, Email, RoomType, NumberofRooms,Checkin, Checkout) VALUES (@value1, @value2, @value3, @value4,@value5,@value6,@value7)";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                using (SqlCommand command = new SqlCommand(query, connection))
                {

                    command.Parameters.AddWithValue("@value1", name);
                    command.Parameters.AddWithValue("@value2", phone);
                    command.Parameters.AddWithValue("@value3", email);
                    command.Parameters.AddWithValue("@value4", roomtype);
                    command.Parameters.AddWithValue("@value5", numberofrooms);
                    command.Parameters.AddWithValue("@value6", checkin);
                    command.Parameters.AddWithValue("@value7", checkout);

                    command.ExecuteNonQuery();
                }
            }
            // Show a success message
            Response.Redirect("Home.aspx");

        }
    }
}

