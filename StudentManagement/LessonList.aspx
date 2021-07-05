<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="LessonList.aspx.cs" Inherits="LessonList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

    <table class="table table-hover" >
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Ders</th>
      
      
    </tr>
  </thead>
  <tbody>
      <asp:Repeater ID="Repeater1" runat="server">
          <ItemTemplate>
              <tr>
                  <td><%#Eval("ID") %></td>
                  <td><%#Eval("Lesson") %></td>
                  <td>
                      <asp:HyperLink ID="Sil" NavigateUrl='<%#"~/DeleteLesson.aspx?ID=" + Eval("ID")%>' runat="server" CssClass="btn btn-danger">Sil</asp:HyperLink>
                      <asp:HyperLink ID="Guncelle" NavigateUrl='<%#"~/UpdateLesson.aspx?ID=" + Eval("ID")%>' runat="server" CssClass="btn btn-success">Güncelle</asp:HyperLink>
                  </td>
              </tr>
          </ItemTemplate>

      </asp:Repeater>
    
      
  </tbody>
</table>
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AddLesson.aspx" CssClass="btn btn-info">Ders Ekle</asp:HyperLink>
</asp:Content>

