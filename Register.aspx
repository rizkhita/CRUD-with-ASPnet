<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="GarudaWeb.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet"type="text/css" href="StyleSheet1.css">
    <title>Halaman Registrasi</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 285px;
        }
        .auto-style4 {
            color: #990000;
        }
        .auto-style6 {
            color: #FF6600;
        }
        .auto-style12 {
            font-family: Villa;
            font-size: xx-large;
            color: purple;
        }
        .auto-style13 {
            color: #FF6600;
            font-family: Villa;
        }
        .auto-style14 {
            font-size: large;
        }
        .auto-style16 {
            font-family: "Shaun the Sheep";
            font-size: large;
            color: #333333;
        }
        .auto-style17 {
            font-family: "Shaun the Sheep";
            font-size: large;
        }
        .auto-style18 {
            color: #333333;
        }
        .auto-style19 {
            color: #990000;
            font-family: "Shaun the Sheep";
            font-size: large;
        }
        .auto-style20 {
            font-family: "Shaun the Sheep";
            font-size: large;
            color: #FF6600;
            letter-spacing: 1pt;
        }
        .auto-style21 {
            font-family: "Shaun the Sheep";
            font-size: large;
            color: #FF6600;
        }
        .auto-style22 {
            font-family: Villa;
            font-size: x-large;
            color: purple;
        }
    </style>
<body>
    </head>
        <header class="auto-style6">
        <div class="container">
            <h1 class="auto-style12">Tugas Pengembangan Aplikasi Web</h1>
        </div>
    </header>
    <section id="main">
    <div class="container">
        <article id="main-col">
            <form id="form1" runat="server">
                <h1 class="auto-style22">Form Registrasi</h1>
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        <span class="auto-style17"><strong>
                        <asp:Label ID="Label1" runat="server" Text="Label" CssClass="auto-style18">Username</asp:Label><br class="auto-style18" />
                        </strong></span><strong>
                        <asp:TextBox ID="Username" runat="server" CssClass="auto-style16"></asp:TextBox>
                        </strong>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredUsername" runat="server" ErrorMessage="(!) Username harus diisi" ControlToValidate="Username" CssClass="auto-style19"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <span class="auto-style17"><strong>
                        <asp:Label ID="Label2" runat="server" Text="Label" CssClass="auto-style18">Password</asp:Label><br class="auto-style18" />
                        </strong></span><strong>
                        <asp:TextBox ID="Password" runat="server" TextMode="Password" CssClass="auto-style16"></asp:TextBox>
                        </strong>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="(!) Password harus diisi" ControlToValidate="Password" CssClass="auto-style19"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <span class="auto-style17"><strong>
                        <asp:Label ID="Label3" runat="server" Text="Label" CssClass="auto-style18">Konfirmasi Password</asp:Label><br class="auto-style18" />
                        </strong></span><strong>
                        <asp:TextBox ID="PasswordConf" runat="server" TextMode="Password" CssClass="auto-style16"></asp:TextBox>
                        </strong>
                    </td>
                    <td>
                        
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="(!) Password tidak sama" ControlToCompare="Password" ControlToValidate="PasswordConf" CssClass="auto-style19"></asp:CompareValidator>
                        
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2"> 
                        <span class="auto-style17"><strong> 
                        <asp:Label ID="Label4" runat="server" Text="Label" CssClass="auto-style18">E-mail</asp:Label><br class="auto-style18" />
                        </strong></span><strong>
                        <asp:TextBox ID="Email" runat="server" CssClass="auto-style16"></asp:TextBox>
                        </strong>
                    </td>
                    <td class="auto-style17">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="(!) Email harus diisi" ControlToValidate="Email" CssClass="auto-style4"></asp:RequiredFieldValidator><br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Email" CssClass="auto-style4" ErrorMessage="(!) Masukan email aktif" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <span class="auto-style17"><strong>
                        <asp:Label ID="Label5" runat="server" Text="Label" CssClass="auto-style18">Gender</asp:Label><br class="auto-style18" />
                        </strong></span><strong>
                        <asp:DropDownList ID="Gender" runat="server" OnSelectedIndexChanged="Gender_SelectedIndexChanged" CssClass="auto-style16">
                            <asp:ListItem>--Pilih Gender--</asp:ListItem>
                            <asp:ListItem>Pria</asp:ListItem>
                            <asp:ListItem>Wanita</asp:ListItem>
                        </asp:DropDownList>
                        </strong>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="(!) Pilih salah satu gender" ControlToValidate="Gender" CssClass="auto-style19" InitialValue="--Pilih Gender--"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <strong>
                        <asp:Button ID="Button1" runat="server" OnClick="Button_Daftar" Text="Daftar" CssClass="auto-style20" />
                        </strong>
                    </td>
                    <td>
                        <strong>
                        <input id="Reset1" type="reset" value="reset" class="auto-style21" /></strong></td>
                </tr>
            </table>  
        </div>
    </form>
    </article>
        <aside id="sidebar">
			<div class="sidebox">
			    <ul>
                    <li class="auto-style5"><a href="Login.aspx"><span class="auto-style13">Log In</span></a></li>
                    <li class="auto-style5"><a href="Register.aspx" class="auto-style14"><span class="auto-style13">Buat Akun</span></a></li>
                    <li class="auto-style5"><a href="Admin.aspx" class="auto-style14"><span class="auto-style13">Lihat Daftar Akun</span></a></li>
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
