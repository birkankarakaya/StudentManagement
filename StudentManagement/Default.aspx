<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="table table-hover" >
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Numara</th>
      <th scope="col">Ad Soyad</th>
      <th scope="col">Telefon Numarası</th>
      <th scope="col">Mail</th>
      <th scope="col">İşlemler</th>
    </tr>
  </thead>
  <tbody>
      <asp:Repeater ID="Repeater1" runat="server">
          <ItemTemplate>
              <tr>
                  <td><%#Eval("ID1") %></td>
                  <td><%#Eval("Number") %></td>
                  <td><%#Eval("NameSurname") %></td>
                  <td><%#Eval("PhoneNumber") %></td>
                  <td><%#Eval("Mail") %></td>
                  <td>
                      <asp:HyperLink ID="Sil" NavigateUrl='<%#"~/DeleteStudent.aspx?ID=" + Eval("ID")%>' runat="server" CssClass="btn btn-danger">Sil</asp:HyperLink>
                      <asp:HyperLink ID="Guncelle" NavigateUrl='<%#"~/UpdateStudent.aspx?ID=" + Eval("ID")%>' runat="server" CssClass="btn btn-success">Güncelle</asp:HyperLink>
                  </td>
              </tr>
          </ItemTemplate>

      </asp:Repeater>
    
  </tbody>
</table>
</asp:Content>

