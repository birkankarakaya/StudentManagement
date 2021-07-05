<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="AddLesson.aspx.cs" Inherits="AddLesson" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

    <form id="Form1" runat="server">
        <div class="form-group">
            <br />
            <asp:Label for="DersAd" runat="server" Text="Ders Ad"></asp:Label>
            <asp:TextBox ID="DersAd" runat="server" CssClass="form-control"></asp:TextBox>
            <br />
        </div>
        <asp:Button ID="Kaydet" runat="server" cssClass="btn btn-info" Text="Kaydet" OnClick="Kaydet_Click"/>
    </form>

</asp:Content>

