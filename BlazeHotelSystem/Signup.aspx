<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="BlazeHotelSystem.Signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <asp:Label ID="Label1" runat="server" Text="Username" CssClass="label"></asp:Label>
            <br />
            <asp:TextBox ID="txtUsername" runat="server" CssClass="input"></asp:TextBox><br />
             <asp:Label ID="Label2" runat="server" Text="Email" CssClass="label"></asp:Label>
            <br />
            <asp:TextBox ID="txtEmail" runat="server" CssClass="input" TextMode="Email"></asp:TextBox><br />
             <asp:Label ID="Label3" runat="server" Text="Phone" CssClass="label"></asp:Label>
            <br />
            <asp:TextBox ID="txtPhone" runat="server" CssClass="input"></asp:TextBox><br />
             <asp:Label ID="Label4" runat="server" Text="Password" CssClass="label"></asp:Label>
            <br />
            <asp:TextBox ID="txtPass" runat="server" CssClass="input" TextMode="Password"></asp:TextBox><br />
             <asp:Label ID="Label5" runat="server" Text="Confirm Password" CssClass="label"></asp:Label>
            <br />
            <asp:TextBox ID="txtConfirm" runat="server" CssClass="input" TextMode="Password"></asp:TextBox><br />
            <asp:Button ID="Button1" runat="server" Text="Sign Up" CssClass="button" OnClick="Button1_Click" />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="White" NavigateUrl="~/Login.aspx">Log in</asp:HyperLink>
        </div>
    </form>
</body>
</html>
<style>
    .container{
        padding-top:100px;
        text-align:center;
        margin-left:40%;
        margin-top:5%;
        width:400px;
        height:350px;
        border-radius:15px;
        background-color:cadetblue;
        opacity:.7;
    }
    .input{
        margin:10px;
    }
    .label{
        width:200px;
        height:35px;
    }
    .button{
        width:170px;
        height:30px;
        background-color:seagreen;
        border:unset;
        border-radius:5px;
    }
    .button:hover{
        transform:scale(.9);
        transition:ease-in-out .5s;
        color:seagreen;
        background-color:white;
    }
</style>
