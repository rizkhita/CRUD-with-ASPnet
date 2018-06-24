<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="GarudaWeb.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <meta charset="utf-8">
	<meta name= "viewport" content="width=device-width">
    <title>Halaman Log In</title>
    <link rel="stylesheet"type="text/css" href="StyleSheet1.css">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            color: #990000;
            font-family: "Shaun the Sheep";
        }
        .auto-style3 {
            width: 285px;
        }
        .auto-style5 {
            font-family: Villa;
        }
        .auto-style6 {
            color: #FF6600;
        }
        .auto-style7 {
            font-family: "Shaun the Sheep";
            color: #333333;
            font-size: x-large;
        }
        .auto-style9 {
            font-family: Villa;
            font-weight: normal;
            font-size: xx-large;
            color: #800080;
        }
        .auto-style10 {
            font-family: "Shaun the Sheep";
            font-size: large;
            color: #FF6600;
        }
        .auto-style12 {
            font-family: Villa;
            font-size: xx-large;
            color: purple;
        }
        .auto-style13 {
            font-family: Villa;
            text-decoration: none;
            color: #800080;
            font-size: large;
        }
        .auto-style14 {
            font-family: "Shaun the Sheep";
            font-size: large;
        }
    </style>
</head>
<body>

    <header class="auto-style6">
        <div class="container">
            <h1 class="auto-style12">Tugas Pengembangan Aplikasi Web</h1>
        </div>
    </header>

<section id="main">
<div class="container">
    <article id="main-col">
    <h1 class="auto-style9">Silahkan log In </h1>
    <form id="form1" runat="server">
        <div>
    <table class="auto-style1">
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label1" runat="server" Text="Username" CssClass="auto-style7"></asp:Label>&nbsp;:<br />
                <asp:TextBox ID="Username" runat="server" Width="190px" CssClass="auto-style14"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="Usernamevld" runat="server" ErrorMessage="(!) Username harus diisi" ControlToValidate="Username" CssClass="auto-style2"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label2" runat="server" Text="Password" CssClass="auto-style7"></asp:Label>&nbsp;:<br />
                <asp:TextBox ID="Password" runat="server" TextMode="Password" Width="190px" CssClass="auto-style14"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="Passwordvld" runat="server" ErrorMessage="(!) Password harus diisi" ControlToValidate="Password" CssClass="auto-style2"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <strong>
                <asp:Button ID="Button_Login" runat="server" Text="Login" OnClick="Button_Login_Click" CssClass="auto-style10" />
                </strong>
            </td>
            <td>
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Register.aspx" CssClass="auto-style13">Belum punya akun? Buat akun dulu !</asp:HyperLink>
            </td>
        </tr>
    </table>
    </div>
    </form>
</article>
		<aside id="sidebar">
			<div class="sidebox">
			    <ul>
                    <li class="auto-style5"><a href="Login.aspx"><span class="auto-style6">Log In</span></a></li>
                    <li class="auto-style5"><a href="Register.aspx"><span class="auto-style6">Buat Akun</span></a></li>
                    <li class="auto-style5"><a href="Admin.aspx"><span class="auto-style6">Lihat Daftar Akun</span></a></li>
			    </ul>
			</div>
		</aside>
    <br class="auto-style6" /><br class="auto-style6" /><br class="auto-style6" /><br class="auto-style6" /><br class="auto-style6" /><br class="auto-style6" /><br class="auto-style6" /><br class="auto-style6" /><br class="auto-style6" /><br class="auto-style6" /><br class="auto-style6" /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
</div>
</section>

	<footer>
		<p>Web by Rizkhita, Copyright &copy;2017</p>
	</footer>

</body>
</html>
