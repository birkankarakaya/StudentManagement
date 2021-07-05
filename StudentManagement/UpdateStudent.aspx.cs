using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UpdateStudent : System.Web.UI.Page
{
    int id;
    DataSetTableAdapters.Tbl_StudentTableAdapter dt = new DataSetTableAdapters.Tbl_StudentTableAdapter();

    protected void Page_Load(object sender, EventArgs e)
    {
        OgrenciID.Enabled = false;
        if (!Page.IsPostBack)
        {
            id = Convert.ToInt32(Convert.ToString(Request.QueryString["ID"]));
            OgrenciID.Text = id.ToString();
            OgrenciTC.Text = dt.StudentSelect(id)[0].CitizenshipNumber;
            OgrenciAdSoyad.Text = dt.StudentSelect(id)[0].NameSurname;
            OgrenciTel.Text = dt.StudentSelect(id)[0].PhoneNumber;
            OgrenciSifre.Text = dt.StudentSelect(id)[0].Code;
            OgrenciMail.Text = dt.StudentSelect(id)[0].Mail;
            OgrenciAdres.Text = dt.StudentSelect(id)[0].Adres;
        }
        
    }

    protected void Guncelle_Click(object sender, EventArgs e)
    {
        dt.UpdateStudent(OgrenciTC.Text, OgrenciAdSoyad.Text, OgrenciTel.Text, OgrenciSifre.Text, OgrenciMail.Text, OgrenciAdres.Text, Convert.ToInt32(OgrenciID.Text));
        Response.Redirect("Default.aspx");
    }
}