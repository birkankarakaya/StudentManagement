using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddStudent : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Kaydet_Click(object sender, EventArgs e)
    {
        DataSetTableAdapters.Tbl_StudentTableAdapter dt = new DataSetTableAdapters.Tbl_StudentTableAdapter();
        dt.OgrenciEkle(OgrenciTC.Text, OgrenciAdSoyad.Text, OgrenciTel.Text, OgrenciSifre.Text, OgrenciMail.Text, OgrenciAdres.Text);
        Response.Redirect("Default.aspx");
    }
}