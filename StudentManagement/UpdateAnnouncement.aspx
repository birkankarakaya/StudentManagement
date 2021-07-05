<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="UpdateAnnouncement.aspx.cs" Inherits="UpdateAnnouncement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <form id="Form1" runat="server">
        <div class="form-group">
            <asp:Label for="DuyuruID" runat="server" Text="Duyuru ID"></asp:Label>
            <asp:TextBox ID="DuyuruID" runat="server" CssClass="form-control"></asp:TextBox>
            <br />
            <asp:Label for="DuyuruBaslik" runat="server" Text="Duyuru Başlık"></asp:Label>
            <asp:TextBox ID="DuyuruBaslik" runat="server" CssClass="form-control"></asp:TextBox>
            <br />
            <asp:Label for="DuyuruMetin" runat="server" Text="Duyuru"></asp:Label>
            <textarea id="DuyuruMetin" cols="20" rows="6" Class="form-control" runat="server"></textarea>
            <br />
            
        </div>
        <asp:Button ID="Guncelle" runat="server" cssClass="btn btn-info" Text="Güncelle" OnClick="Guncelle_Click"/>
    </form>
</asp:Content>

