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
        txt1.Text = Request.QueryString["Number"];
        baglanti.Open();
        SqlCommand komut = new SqlCommand("Select NameSurname, PhoneNumber, Code, Mail From Tbl_Student Where Number=@p1", baglanti);
        
        komut.Parameters.AddWithValue("@p1", txt1.Text);
        SqlDataReader dr = komut.ExecuteReader();
        while (dr.Read())
        {
            txt2.Text = dr[0].ToString();
            txt3.Text = dr[1].ToString();
            txt4.Text = dr[2].ToString();
            txt5.Text = dr[3].ToString();
        }
        baglanti.Close();
    }
}