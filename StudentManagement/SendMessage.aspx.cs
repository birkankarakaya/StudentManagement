using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SendMessage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Gonderen.Text = "12345";
    }

    protected void Gonder_Click(object sender, EventArgs e)
    {
        DataSetTableAdapters.Tbl_MessagesTableAdapter dt = new DataSetTableAdapters.Tbl_MessagesTableAdapter();
        dt.SendMessage(Gonderen.Text, Alici.Text, Baslik.Text, Mesaj.Value.ToString());
        Response.Redirect("OutgoingMessages.aspx");
    }

    protected void Gonder_Click1(object sender, EventArgs e)
    {
        DataSetTableAdapters.Tbl_MessagesTableAdapter dt = new DataSetTableAdapters.Tbl_MessagesTableAdapter();
        dt.SendMessage(Gonderen.Text, Alici.Text, Baslik.Text, Mesaj.Value.ToString());
        Response.Redirect("OutgoingMessages.aspx");
    }
}