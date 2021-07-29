using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LoginPanel : System.Web.UI.Page
{
    SqlConnection baglanti = new SqlConnection(@"Data Source=DESKTOP-HK06P7L\SQLEXPRESS;Initial Catalog=StudentManagementDB;User ID=sa;Password=sql0606");

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        baglanti.Open();
        SqlCommand komut = new SqlCommand("SELECT * FROM Tbl_Student Where Number=@p1 AND Code=@p2", baglanti);
        komut.Parameters.AddWithValue("@p1", KullAd.Text);
        komut.Parameters.AddWithValue("@p2", Sifre.Text);

        SqlDataReader dr = komut.ExecuteReader();

        if (dr.Read())
        {
            Session.Add("Number", KullAd.Text);
            Response.Redirect("Default2.aspx");
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        baglanti.Open();
        SqlCommand komut = new SqlCommand("SELECT * FROM Tbl_Teacher Where CitizenshipNumber=@p1 AND Code=@p2", baglanti);
        komut.Parameters.AddWithValue("@p1", KullAd.Text);
        komut.Parameters.AddWithValue("@p2", Sifre.Text);

        SqlDataReader dr = komut.ExecuteReader();

        if (dr.Read())
        {
            Response.Redirect("Default.aspx");
        }
    }
}