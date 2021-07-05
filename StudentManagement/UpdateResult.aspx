<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="UpdateResult.aspx.cs" Inherits="UpdateResult" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

    <form id="Form1" runat="server">
        <div class="form-group">
            <asp:Label for="DersAd" runat="server" Text="Ders Ad"></asp:Label>
            <asp:TextBox ID="DersAd" runat="server" CssClass="form-control"></asp:TextBox>
            <br />
            <asp:Label for="OgrenciID" runat="server" Text="Öğrenci ID"></asp:Label>
            <asp:TextBox ID="OgrenciID" runat="server" CssClass="form-control"></asp:TextBox>
            <br />
            <asp:Label for="OgrenciAdSoyad" runat="server" Text="Öğrenci Ad Soyad"></asp:Label>
            <asp:TextBox ID="OgrenciAdSoyad" runat="server" CssClass="form-control"></asp:TextBox>
            <br />
            <asp:Label for="Sinav1" runat="server" Text="Sınav 1"></asp:Label>
            <asp:TextBox ID="Sinav1" runat="server" CssClass="form-control"></asp:TextBox>
            <br />
            <asp:Label for="Sinav2" runat="server" Text="Sinav2"></asp:Label>
            <asp:TextBox ID="Sinav2" runat="server" CssClass="form-control"></asp:TextBox>
            <br />
            <asp:Label for="Sinav3" runat="server" Text="Sinav3"></asp:Label>
            <asp:TextBox ID="Sinav3" runat="server" CssClass="form-control"></asp:TextBox>
            <br />
            <asp:Label for="Ortalama" runat="server" Text="Ortalama"></asp:Label>
            <asp:TextBox ID="Ortalama" runat="server" CssClass="form-control"></asp:TextBox>
            <br />
            <asp:Label for="Durum" runat="server" Text="Durum"></asp:Label>
            <asp:TextBox ID="Durum" runat="server" CssClass="form-control"></asp:TextBox>
            <br />
        </div>
        <asp:Button ID="Hesapla" runat="server" cssClass="btn btn-warning" Text="Hesapla" OnClick="Hesapla_Click" />
        <asp:Button ID="Guncelle" runat="server" cssClass="btn btn-success" Text="Güncelle" OnClick="Guncelle_Click" />
    </form>

</asp:Content>

