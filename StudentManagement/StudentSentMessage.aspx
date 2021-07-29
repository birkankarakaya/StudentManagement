<%@ Page Title="" Language="C#" MasterPageFile="~/Stundent.master" AutoEventWireup="true" CodeFile="StudentSentMessage.aspx.cs" Inherits="StudentSentMessage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">


    <form id="Form1">
        <div class="form-group">
            <asp:Label for="Gonderen" runat="server" Text="Gönderen"></asp:Label>
            <asp:TextBox ID="Gonderen" runat="server" CssClass="form-control"></asp:TextBox>
            <br />
            <asp:Label for="Alici" runat="server" Text="Alıcı"></asp:Label>
            <asp:TextBox ID="Alici" runat="server" CssClass="form-control"></asp:TextBox>
            <br />
            <asp:Label for="Baslik" runat="server" Text="Başlık"></asp:Label>
            <asp:TextBox ID="Baslik" runat="server" CssClass="form-control"></asp:TextBox>
            <br />
            <asp:Label for="Mesaj" runat="server" Text="Mesaj"></asp:Label>
            <textarea id="Mesaj" cols="20" rows="6" Class="form-control" runat="server"></textarea>
            <br />
        </div>        
        <asp:Button ID="Gonder" runat="server" cssClass="btn btn-info" Text="Gönder" OnClick="Gonder_Click"/>
    </form>




</asp:Content>

