using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddAnnouncement : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            DataSetTableAdapters.Tbl_TeacherTableAdapter dt = new DataSetTableAdapters.Tbl_TeacherTableAdapter();
            EkleyenOgretmen.DataSource = dt.HocaListesi();
            EkleyenOgretmen.DataTextField = "NameSurname";
            EkleyenOgretmen.DataValueField = "ID";
            EkleyenOgretmen.DataBind();
        }
        
    }

    protected void Olustur_Click(object sender, EventArgs e)
    {
        
    }

    protected void Olustur_Click1(object sender, EventArgs e)
    {
        DataSetTableAdapters.Tbl_AnnouncementTableAdapter dt = new DataSetTableAdapters.Tbl_AnnouncementTableAdapter();
        dt.AddAnnouncement(DuyuruBaslik.Text, DuyuruMetin.Value.ToString(), Convert.ToInt32(EkleyenOgretmen.SelectedValue));
        Response.Redirect("Announcement.aspx");
    }
}