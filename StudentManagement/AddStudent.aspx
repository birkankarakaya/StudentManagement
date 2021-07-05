<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="AddStudent.aspx.cs" Inherits="AddStudent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

    <form id="Form1" runat="server">
        <div class="form-group">
            <asp:Label for="OgrenciTC" runat="server" Text="Öğrenci TC"></asp:Label>
            <asp:TextBox ID="OgrenciTC" runat="server" CssClass="form-control"></asp:TextBox>
            <br />
            <asp:Label for="OgrenciAdSoyad" runat="server" Text="Öğrenci Ad Soyad"></asp:Label>
            <asp:TextBox ID="OgrenciAdSoyad" runat="server" CssClass="form-control"></asp:TextBox>
            <br />
            <asp:Label for="OgrenciTel" runat="server" Text="Öğrenci Telefon"></asp:Label>
            <asp:TextBox ID="OgrenciTel" runat="server" CssClass="form-control"></asp:TextBox>
            <br />
            <asp:Label for="OgrenciSifre" runat="server" Text="Öğrenci Şifre"></asp:Label>
            <asp:TextBox ID="OgrenciSifre" runat="server" CssClass="form-control"></asp:TextBox>
            <br />
            <asp:Label for="OgrenciMail" runat="server" Text="Öğrenci Mail"></asp:Label>
            <asp:TextBox ID="OgrenciMail" runat="server" CssClass="form-control"></asp:TextBox>
            <br />
            <asp:Label for="OgrenciAdres" runat="server" Text="Öğrenci Adres"></asp:Label>
            <asp:TextBox ID="OgrenciAdres" runat="server" CssClass="form-control"></asp:TextBox>
            <br />
            
        </div>
        <asp:Button ID="Kaydet" runat="server" cssClass="btn btn-info" Text="Kaydet" OnClick="Kaydet_Click" />
    </form>
</asp:Content>

