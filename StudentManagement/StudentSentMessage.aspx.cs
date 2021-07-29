using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class StudentSentMessage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Gonderen.Text = Session["Number"].ToString();
        Gonderen.Enabled = false;
    }

    protected void Gonder_Click(object sender, EventArgs e)
    {
        DataSetTableAdapters.Tbl_MessagesTableAdapter dt = new DataSetTableAdapters.Tbl_MessagesTableAdapter();
        dt.SendMessage(Gonderen.Text, Alici.Text, Baslik.Text, Mesaj.Value.ToString());
        Response.Redirect("SentMessages.aspx");
    }
}