<%@ Page Title="" Language="C#" MasterPageFile="~/BlazeHotelSystem.Master" AutoEventWireup="true" CodeBehind="Booking.aspx.cs" Inherits="BlazeHotelSystem.Booking" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="display:flex; justify-content:center;">
        <div>
        <table>
        <thead></thead>
        <tr>
            <td>
                 <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label><br />
                 <asp:TextBox ID="txtname" runat="server" Height="22px" Width="176px"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname" ErrorMessage="Enter your full names" ForeColor="Black" ValidationGroup="Vg"></asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Phone number"></asp:Label><br />
                <asp:TextBox ID="txtphonenumber" runat="server" Height="20px" style="margin-left: 1px; margin-right: 4px; margin-top: 0px; margin-bottom: 0px" Width="154px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtphonenumber" ErrorMessage="Enter your Phone number" ForeColor="Black" ValidationGroup="Vg"></asp:RequiredFieldValidator>
            </td>
            <td>
                 <asp:Label ID="Label3" runat="server" Text="Email Address"></asp:Label><br />
                 <asp:TextBox ID="txtemailaddress" runat="server" Height="22px" Width="195px"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtemailaddress" ErrorMessage="Enter your Email Address" ForeColor="Black" ValidationGroup="Vg"></asp:RequiredFieldValidator>
            </td>
            <td>
              <asp:Label ID="Label4" runat="server" Text="Room Type"></asp:Label><br />
                <asp:DropDownList ID="ddlRoomtype" runat="server" AutoPostBack="True" OnSelectionChanged="ddlRoomtype_SelectedIndexChanged">
                <asp:ListItem>Standard Room</asp:ListItem>
                <asp:ListItem>Sharing Room</asp:ListItem>
                <asp:ListItem>Deluxe Room</asp:ListItem>
                <asp:ListItem>Executive Room</asp:ListItem>
                </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="ddlroomtype" ErrorMessage="Select a room type" ForeColor="Black" ValidationGroup="Vg"></asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:Label ID="Label5" runat="server" Text="Number of Rooms"></asp:Label><br />
                <asp:TextBox ID="txtnumberofrooms" runat="server" Height="19px" Width="163px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtnumberofrooms" ErrorMessage="Enter the number of rooms needed" ForeColor="Black" ValidationGroup="Vg"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>

            <td>
                <asp:Label ID="lblCheckin" runat="server" Text="Check-in Date"></asp:Label><br />
                <asp:TextBox ID="txtCheckin" runat="server"  onclick="showCalendar('calCheckIn')" OnTextChanged="txtCheckin_TextChanged" Width="156px" Height="20px"></asp:TextBox>
                <asp:Calendar ID="calCheckIn" runat="server" Visible="true" OnSelectionChanged="calCheckIn_SelectionChanged"></asp:Calendar>

            </td>
            <td>
                 <asp:Label ID="lblCheckout" runat="server" Text="Check-out Date"></asp:Label><br />
                 <asp:TextBox ID="txtCheckout" runat="server"  onclick="showCalendar('calCheckOut')" OnTextChanged="txtCheckout_TextChanged" Width="156px" Height="20px"></asp:TextBox>
                 <asp:Calendar ID="calCheckOut" runat="server" Visible="true" OnSelectionChanged="calCheckOut_SelectionChanged"></asp:Calendar>

            </td>
            </tr>
            </table> 
            <div>
            <asp:Image ID="Image1" runat="server" Visible="False" ImageUrl="~/Standard.jpeg" CssClass="image" />
            <asp:Image ID="Image2" runat="server" Visible="False" ImageUrl="~/Sharing.jpeg" CssClass="image" />
            <asp:Image ID="Image3" runat="server" Visible="False" ImageUrl="~/Deluxe.png" CssClass="image" />
            <asp:Image ID="Image4" runat="server" Visible="False" ImageUrl="~/Executive.jpeg" CssClass="image" />
     
            </div>
            <div class="submit">
                <asp:Button ID="btnSubmit" runat="server" ForeColor="Black" Text="Submit" ValidationGroup="Vg"  CssClass="submit" OnClick="btnSubmit_Click1" />
            </div>
        </div>
        
         
       
    </div>
    <style>
        tr{
            display:flex;
        }
       .image{
            width:275px;
            height:auto;
            overflow:hidden;
            background-size:contain;
        }
       table{
       }
       tr{
       }
       .submit{
           width:200px;
           height:30px;
           border:unset;
           background-color:seagreen;
           color:white;
       }
       .submit:hover{
           transform:scale(.9);
           background-color:white;
           color:seagreen;
           transition:ease-in .5s;
       }
    </style>
</asp:Content>
