using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    SqlConnection baglanti = new SqlConnection(@"Data Source=DESKTOP-HK06P7L\SQLEXPRESS;Initial Catalog=StudentManagementDB;User ID=sa;Password=sql0606");

    protected void Page_Load(object sender, EventArgs e)
    {

        txt1.Text = Session["Number"].ToString();
        txt1.Enabled = false;
        txt2.Enabled = false;
        txt3.Enabled = false;
        txt4.Enabled = false;
        txt5.Enabled = false;
        baglanti.Open();
        SqlCommand komut = new SqlCommand("Select NameSurname, PhoneNumber, Code, Mail From Tbl_Student Where Number=@p1", baglanti);
        
        komut.Parameters.AddWithValue("@p1", txt1.Text);
        SqlDataReader dr = komut.ExecuteReader();
        while (dr.Read())
        {
            txt2.Text = "Ad Soyad: " + dr[0].ToString();
            txt3.Text = "Telefon Numarası: " + dr[1].ToString();
            txt4.Text = "Şifre: " + dr[2].ToString();
            txt5.Text = "Mail: " + dr[3].ToString();
        }
        baglanti.Close();
    }

    protected void Guncelle_Click(object sender, EventArgs e)
    {
        Response.Redirect("UpdateStudent2.aspx?Number=" + txt1.Text);
    }
}