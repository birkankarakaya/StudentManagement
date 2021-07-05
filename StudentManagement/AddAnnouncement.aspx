<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="AddAnnouncement.aspx.cs" Inherits="AddAnnouncement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <form id="Form1" runat="server">
        <div class="form-group">
            <asp:Label for="DuyuruBaslik" runat="server" Text="Duyuru Başlık"></asp:Label>
            <asp:TextBox ID="DuyuruBaslik" runat="server" CssClass="form-control"></asp:TextBox>
            <br />
            <asp:Label for="DuyuruMetin" runat="server" Text="Duyuru"></asp:Label>
            <textarea id="DuyuruMetin" cols="20" rows="6" Class="form-control" runat="server"></textarea>
            <br />
            <asp:Label for="EkleyenOgretmen" runat="server" Text="Ekleyen Öğretmen"></asp:Label>
            <asp:DropDownList ID="EkleyenOgretmen" runat="server" CssClass="form-control" ></asp:DropDownList>
            <br />
        </div>
        <asp:Button ID="Olustur" runat="server" cssClass="btn btn-info" Text="Oluştur" OnClick="Olustur_Click1"/>
    </form>
</asp:Content>

