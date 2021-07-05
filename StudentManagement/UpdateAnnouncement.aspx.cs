using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UpdateAnnouncement : System.Web.UI.Page
{
    int id;
    DataSetTableAdapters.Tbl_AnnouncementTableAdapter dt = new DataSetTableAdapters.Tbl_AnnouncementTableAdapter();

    protected void Page_Load(object sender, EventArgs e)
    {
        DuyuruID.Enabled = false;
        if (!Page.IsPostBack)
        {
            id = Convert.ToInt32(Request.QueryString["ID"].ToString());
            DuyuruID.Text = id.ToString();
            DuyuruBaslik.Text = dt.SelectAnnouncement(id)[0].Title;
            DuyuruMetin.Value = dt.SelectAnnouncement(id)[0].Content_;
        }
    }

    protected void Guncelle_Click(object sender, EventArgs e)
    {
        dt.UpdateAnnouncement(DuyuruBaslik.Text, DuyuruMetin.Value.ToString(), Convert.ToInt32(DuyuruID.Text));
        Response.Redirect("Announcement.aspx");
    }
}