<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="BlazeHotelSystem.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <asp:Label ID="Label1" runat="server" Text="Email" CssClass="label"></asp:Label><br />
            <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" CssClass="input" Width="200px" Height="30px"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email required" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Password" CssClass="label"></asp:Label><br />
            <asp:TextBox ID="txtPass" runat="server" TextMode="Password" CssClass="input" Width="200px" Height="30px"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPass" ErrorMessage="Password required" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Log in" CssClass="button" OnClick="Button1_Click" /><br />
            <br />
            <asp:HyperLink ID="HyperLink2" runat="server" ForeColor="White" NavigateUrl="~/Signup.aspx">Sign Up</asp:HyperLink>
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server">Forgot password</asp:HyperLink>
        </div>
    </form>
</body>
</html>
<style>
    .container{
        padding-top:100px;
        text-align:center;
        margin-left:40%;
        margin-top:10%;
        width:300px;
        height:300px;
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
