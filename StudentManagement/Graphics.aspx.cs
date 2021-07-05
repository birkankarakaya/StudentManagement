using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class Graphics : System.Web.UI.Page
{
    SqlConnection baglanti = new SqlConnection(@"Data Source=DESKTOP-HK06P7L\SQLEXPRESS;Initial Catalog=StudentManagementDB;User ID=sa;Password=sql0606");

    protected void Page_Load(object sender, EventArgs e)
    {
        //Graphic1
        baglanti.Open();
        SqlCommand komut = new SqlCommand("Execute Graph1", baglanti);
        SqlDataReader dr = komut.ExecuteReader();
        while (dr.Read())
        {
            Chart1.Series["Dersler"].Points.AddXY(Convert.ToString(dr[0]), Convert.ToInt32(dr[1].ToString()));
        }
        baglanti.Close();



        //Graphic2
        baglanti.Open();
        SqlCommand komut2 = new SqlCommand("Execute Graph2", baglanti);
        SqlDataReader dr2 = komut2.ExecuteReader();
        while (dr2.Read())
        {
            Chart2.Series["Cinsiyet"].Points.AddXY(Convert.ToString(dr2[0]), Convert.ToInt32(dr2[1].ToString()));
        }
        baglanti.Close();


        //Graphic3
        baglanti.Open();
        SqlCommand komut3 = new SqlCommand("Execute Graph3", baglanti);
        SqlDataReader dr3 = komut3.ExecuteReader();
        while (dr3.Read())
        {
            Chart3.Series["Öğretmenler"].Points.AddXY(Convert.ToString(dr3[0]), Convert.ToInt32(dr3[1].ToString()));
        }
        baglanti.Close();


        //Graphic4
        baglanti.Open();
        SqlCommand komut4 = new SqlCommand("Execute Graph4", baglanti);
        SqlDataReader dr4 = komut4.ExecuteReader();
        while (dr4.Read())
        {
            Chart4.Series["Notlar"].Points.AddXY(Convert.ToString(dr4[0]), Convert.ToInt32(dr4[1].ToString()));
        }
        baglanti.Close();
    }

    protected void Chart1_Load(object sender, EventArgs e)
    {
        
    }

    protected void Chart2_Load(object sender, EventArgs e)
    {

    }
}