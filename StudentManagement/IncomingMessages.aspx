<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="IncomingMessages.aspx.cs" Inherits="IncomingMessages" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">

    <table class="table table-hover">
        <thead>
            <tr>
                <th scope="col">#</th>
                <th scope="col">Gönderen</th>
                <th scope="col">Başlık</th>
                <th scope="col">Tarih</th>

            </tr>
        </thead>
        <tbody>
            <asp:repeater id="Repeater1" runat="server">
          <ItemTemplate>
              <tr>
                  <td><%#Eval("ID") %></td>
                  <td><%#Eval("Sender") %></td>
                  <td><%#Eval("Title") %></td>
                  <td><%#Eval("Message") %></td>
                  <td><%#Eval("Time") %></td>
                  
              </tr>
          </ItemTemplate>

      </asp:repeater>

        </tbody>
    </table>

</asp:Content>

