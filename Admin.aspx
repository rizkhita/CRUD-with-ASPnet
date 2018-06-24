<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="GarudaWeb.Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet"type="text/css" href="StyleSheet1.css">
    <title>Halaman Admin</title>
    <style type="text/css">
        .newStyle1 {
            border-style: dashed;
            border-width: inherit;
            border-color: #FFCC66;
            font-family: Impact, Haettenschweiler, "Arial Narrow Bold", sans-serif;
        }
        .newStyle2 {
            font-family: Impact, Haettenschweiler, "Arial Narrow Bold", sans-serif;
            font-size: 17px;
            border: medium dashed #FFA500;
        }
        .auto-style1 {
            color: #FF9900;
            font-weight: bold;
            font-size: large;
            font-family: "Shaun the Sheep";
        }
        .auto-style2 {
            color: #333333;
            font-family: "Shaun the Sheep";
            font-size: medium;
            letter-spacing: 1pt;
        }
        .auto-style3 {
            color: #CC3300;
            font-size: x-large;
            font-family: "Shaun the Sheep";
        }
        .auto-style4 {
            font-family: Villa;
        }
        .auto-style5 {
            font-family: Villa;
        }
        .auto-style6 {
            color: #CC3300;
        }
        .auto-style7 {
            font-family: Villa;
            font-size: xx-large;
            color:purple;
        }
    </style>
</head>
<body>
     <header>
        <div class="container">
            <h1 class="auto-style7">Tugas Pengembangan Aplikasi Web</h1>
        </div>
    </header>

<section id="main">
<div class="container">
<article id="main-col">

    <form id="form1" runat="server">
        <div>
            
            <strong>
            
            <asp:Label ID="user" runat="server" Text="Label" CssClass="auto-style3"></asp:Label>
            </strong>
            <br /><br />
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="177px" Width="620px" CssClass="auto-style2">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                    <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                    <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                    <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />
                </Columns>
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                <SortedDescendingHeaderStyle BackColor="#820000" />
            </asp:GridView>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GarudaDBConnection %>" SelectCommand="SELECT * FROM [User]" DeleteCommand="DELETE FROM [User] WHERE [Id] = @Id" InsertCommand="INSERT INTO [User] ([username], [password], [email], [gender]) VALUES (@username, @password, @email, @gender)" UpdateCommand="UPDATE [User] SET [username] = @username, [password] = @password, [email] = @email, [gender] = @gender WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="username" Type="String" />
                <asp:Parameter Name="password" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="gender" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="username" Type="String" />
                <asp:Parameter Name="password" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="gender" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <strong>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Logout" CssClass="auto-style1" />
        </strong>
    </form>
</article>
    <aside id="sidebar">
			<div class="sidebox">
			    <ul>
                    <li><span class="auto-style4"><a href="Login.aspx" class="auto-style5"><span class="auto-style6">Log In</span></a></li>
                    <li><a href="Register.aspx" class="auto-style5"><span class="auto-style6">Buat Akun</span></a></li>
                    <li><a href="Admin.aspx" class="auto-style5"><span class="auto-style6">Lihat Daftar Akun</span></a></li>
			    </ul>
			</div>
		</aside>
    <span class="auto-style5">
    <br class="auto-style6" /><br class="auto-style6" /><br class="auto-style6" /><br class="auto-style6" /><br class="auto-style6" /><br class="auto-style6" /><br class="auto-style6" /></span></span><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
</div>
</section>

	<footer>
		<p>Web by Rizkhita, Copyright &copy;2017</p>
	</footer>
</body>
</html>
