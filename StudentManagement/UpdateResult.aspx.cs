using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UpdateResult : System.Web.UI.Page
{
    int nid;
    DataSetTableAdapters.OgrNotlarTableAdapter dt = new DataSetTableAdapters.OgrNotlarTableAdapter();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            nid = Convert.ToInt32(Request.QueryString["ID"]);

            DersAd.Text = dt.GetResult(nid)[0].Lesson;
            OgrenciID.Text = Convert.ToString(dt.GetResult(nid)[0].ID1);
            OgrenciAdSoyad.Text = dt.GetResult(nid)[0].OGRENCIADSOYAD;
            Sinav1.Text = Convert.ToString(dt.GetResult(nid)[0].Exam1);
            Sinav2.Text = Convert.ToString(dt.GetResult(nid)[0].Exam2);
            Sinav3.Text = Convert.ToString(dt.GetResult(nid)[0].Exam3);
            Ortalama.Text = dt.GetResult(nid)[0].Average.ToString();
            Durum.Text = dt.GetResult(nid)[0]._Status.ToString();
        }
    }

    protected void Hesapla_Click(object sender, EventArgs e)
    {
        double sinav1, sinav2, sinav3, ortalama;

        sinav1 = Convert.ToInt32(Sinav1.Text);
        sinav2 = Convert.ToInt32(Sinav2.Text);
        sinav3 = Convert.ToInt32(Sinav3.Text);
        ortalama = (sinav1 + sinav2 + sinav3) / 3;

        Ortalama.Text = ortalama.ToString("0.00");

        if (ortalama >= 50)
        {
            Durum.Text = "Geçti";
        }

        else
        {
            Durum.Text = "Kaldı";
        }
    }

    protected void Guncelle_Click(object sender, EventArgs e)
    {
        nid = Convert.ToInt32(Request.QueryString["ID"]);

        dt.UpdateResult(
            Convert.ToInt32(Sinav1.Text),
            Convert.ToInt32(Sinav2.Text),
            Convert.ToInt32(Sinav3.Text),
            Convert.ToDecimal(Ortalama.Text),
            Durum.Text, nid);

        Response.Redirect("ResultList.aspx");
    }
}