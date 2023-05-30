<%@ Page Title="" Language="C#" MasterPageFile="~/BlazeHotelSystem.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="BlazeHotelSystem.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Home.css" rel="stylesheet" />
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


     <div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->


  <!-- Wrapper for slides -->

    <div class="item">
      
        
        <asp:Button ID="Button1" runat="server" BorderColor="Black" Height="43px" Text="Book now" Width="225px" OnClick="btnbooknow_Click" CssClass="button" PostBackUrl="~/Booking.aspx" />
    </div>

  <!-- Left and right controls -->

</div>
    <div style="display:flex; flex-direction:column;margin-top:30px;justify-content:center">
    <div class="info">
     <h1>Welcome to Blaze Hotel</h1>
      Optimized booking experience: With remote hotel booking, travelers have instant access to hotel information and can book within a couple of thumb-touches if they choose to. This saves time on both ends and gives guests a more positive experience1.
    Track guest data: A hotel booking app will help you track the data of your guests to analyze customer behavior. It will help you improve the services you provide and develop marketing strategies to boost your business2.
    Maintain brand awareness: Apps are one of the biggest and most used commodities on a person’s smartphone so if your app has been downloaded, a user will likely see it every day and have it top-of-mind when they choose to research accommodation1.
    </div>
    <section id="about">
     <div class="about">
        <h2>About Us</h2>
        <p>Welcome to Blaze Hotel System. We are a premier hotel booking system that offers top-quality service to customers worldwide. Our mission is to provide our clients with the best possible hotel experience, from start to finish. </p>
        <p>Our team of experienced professionals is dedicated to ensuring that every customer is completely satisfied with their booking. We offer a wide selection of hotels to choose from, and our user-friendly platform makes it easy to find and book the perfect accommodation for your needs. </p>
        <p>Thank you for choosing Blaze Hotel System. We look forward to serving you!</p>
    </div>
    </section>
    <section id="contact">
    <div class="contact">
        <asp:Label ID="Label1" runat="server" Text="Username" CssClass="label"></asp:Label><br />
        <asp:TextBox ID="txtusername" runat="server" Height="30px" Width="250px"></asp:TextBox><br />
        <asp:Label ID="Label2" runat="server" Text="Phone" CssClass="label"></asp:Label><br />
        <asp:TextBox ID="txtphone" runat="server" Height="30px" Width="250px"></asp:TextBox><br />
        <asp:Label ID="Label3" runat="server" Text="Message" CssClass="label"></asp:Label><br />
        <asp:TextBox ID="txtmessage" runat="server" Height="50px" Width="250px" TextMode="MultiLine"></asp:TextBox><br />
        <asp:Button ID="Button2" runat="server" Text="Submit" CssClass="button" OnClick="Button2_Click" />
    </div>
    </section>
    </div>

 

    

<style>

    p, h1{
        text-align:center;
        
    }
    .button{
        width:250px;
        height:40px;
        border:unset;
        border-radius:15px;
        background-color:seagreen;
        color:white;
        margin-top:10px;
        font-size:16px;

    }
    .button:hover{
        transform:scale(.9);
        transition:ease-in .5s;
        background-color:white;
        color:seagreen;
    }

    .item{
        display:flex;
        justify-content:center;
        align-items:center;
        background-image:url("Executive.jpeg");
        height:550px;
    }
    .info{
        columns: 200px 2;
        column-gap: 25px;
        margin:60px;
        margin-top:unset;
        margin-bottom:unset;
        font-size:18px;
    }
    h1{
        column-span:all;
    }
    .contact{
        margin-top:40px;
        right:auto;
        
        text-align:center;
    }
    .about{
        text-align:center;
         margin:60px;
        margin-top:40px;
        margin-bottom:unset;
        font-size:18px;
    }
</style>
</asp:Content>

