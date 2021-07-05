<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="ResultList.aspx.cs" Inherits="ResultList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

    <table class="table table-hover" >
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Öğrenci ID</th>
      <th scope="col">Ad Soyad</th>
      <th scope="col">Ders Adı</th>
      <th scope="col">Sınav 1</th>
      <th scope="col">Sınav 2</th>
      <th scope="col">Sınav 3</th>
      <th scope="col">Ortalama</th>
      <th scope="col">Durum</th>
    </tr>
  </thead>
  <tbody>
      <asp:Repeater ID="Repeater1" runat="server">
          <ItemTemplate>
              <tr>
                  <td><%#Eval("ID") %></td>
                  <td><%#Eval("ID1") %></td>
                  <td><%#Eval("OGRENCIADSOYAD") %></td>
                  <td><%#Eval("Lesson") %></td>
                  <td><%#Eval("Exam1") %></td>
                  <td><%#Eval("Exam2") %></td>
                  <td><%#Eval("Exam3") %></td>
                  <td><%#Eval("Average") %></td>
                  <td><%#Eval("_Status") %></td>
                  
                  <td>
                      <asp:HyperLink ID="Guncelle" NavigateUrl='<%#"~/UpdateResult.aspx?ID=" + Eval("ID")%>' runat="server" CssClass="btn btn-success">Güncelle</asp:HyperLink>
                  </td>
              </tr>
          </ItemTemplate>

      </asp:Repeater>
    
  </tbody>
</table>

</asp:Content>

