<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LoginPanel.aspx.cs" Inherits="LoginPanel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Dosyalar1/bootstrap.min.css" rel="stylesheet" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="width:700px; margin:auto">
            <br />
            <br />
            <center><h2>Öğrenci Yönetim Sistemi</h2></center>
            <br />
            <br />
            <div>
                <asp:Label for="KullAd" runat="server" Text="Kullanıcı Adı"></asp:Label>
                <asp:TextBox ID="KullAd" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="Sifre" runat="server" Text="Şifre"></asp:Label>
                <asp:TextBox ID="Sifre" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
            </div>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Giriş Yap" Width="700px" CssClass=" btn btn-warning" OnClick="Button1_Click" />
        </div>
        
    </form>
</body>
</html>
