using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DeleteAnnouncement : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int id = Convert.ToInt32(Request.QueryString["ID"].ToString());
        DataSetTableAdapters.Tbl_AnnouncementTableAdapter dt = new DataSetTableAdapters.Tbl_AnnouncementTableAdapter();
        dt.DeleteAnnouncement(id);
        Response.Redirect("Announcement.aspx");
    }
}