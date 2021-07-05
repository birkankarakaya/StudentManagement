<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="OutgoingMessages.aspx.cs" Inherits="OutgoingMessages" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

    <table class="table table-hover">
        <thead>
            <tr>
                <th scope="col">#</th>
                <th scope="col">Alıcı</th>
                <th scope="col">Başlık</th>
                <th scope="col">Mesaj</th>
                <th scope="col">Tarih</th>

            </tr>
        </thead>
        <tbody>
            <asp:repeater id="Repeater1" runat="server">
          <ItemTemplate>
              <tr>
                  <td><%#Eval("ID") %></td>
                  <td><%#Eval("Receiver") %></td>
                  <td><%#Eval("Title") %></td>
                  <td><%#Eval("Message") %></td>
                  <td><%#Eval("Time") %></td>
                  
              </tr>
          </ItemTemplate>

      </asp:repeater>

        </tbody>
    </table>

</asp:Content>

