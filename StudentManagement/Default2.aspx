﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Stundent.master" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

    <form id="Form1">

        <div class="form-group">
            <asp:TextBox ID="txt1" runat="server" CssClass="form-control"></asp:TextBox>
            <br />
            <asp:TextBox ID="txt2" runat="server" CssClass="form-control"></asp:TextBox>
            <br />
            <asp:TextBox ID="txt3" runat="server" CssClass="form-control"></asp:TextBox>
            <br />
            <asp:TextBox ID="txt4" runat="server" CssClass="form-control"></asp:TextBox>
            <br />
            <asp:TextBox ID="txt5" runat="server" CssClass="form-control"></asp:TextBox>
            <br />

            </div>
        <asp:Button ID="Guncelle" runat="server" cssClass="btn btn-info" Text="Bilgilerini Güncelle" OnClick="Guncelle_Click"/>
        </form>

</asp:Content>

