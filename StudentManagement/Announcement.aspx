<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Announcement.aspx.cs" Inherits="Announcement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="table table-hover" >
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Başlık</th>
      <th scope="col">İçerik</th>
      <th scope="col">Ekleyen Öğretmen</th>
      <th scope="col">İşlemler</th>
      
    </tr>
  </thead>
  <tbody>
      <asp:Repeater ID="Repeater1" runat="server">
          <ItemTemplate>
              <tr>
                  <td><%#Eval("ID") %></td>
                  <td><%#Eval("Title") %></td>
                  <td><%#Eval("Content_") %></td>
                  <td><%#Eval("Teacher") %></td>
                  <td>
                      <asp:HyperLink ID="Sil" NavigateUrl='<%#"~/DeleteAnnouncement.aspx?ID=" + Eval("ID")%>' runat="server" CssClass="btn btn-danger">Sil</asp:HyperLink>
                      <asp:HyperLink ID="Guncelle" NavigateUrl='<%#"~/UpdateAnnouncement.aspx?ID=" + Eval("ID")%>' runat="server" CssClass="btn btn-success">Güncelle</asp:HyperLink>
                  </td>
              </tr>
          </ItemTemplate>

      </asp:Repeater>
    
  </tbody>
</table>
</asp:Content>

