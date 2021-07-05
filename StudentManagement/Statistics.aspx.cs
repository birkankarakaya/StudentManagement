using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Statistics : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataSetTableAdapters.DataTable1TableAdapter dt = new DataSetTableAdapters.DataTable1TableAdapter();
        txt1.Text = "Toplam Öğrenci Sayısı:  " + dt.Statistic1().ToString();
        txt2.Text = "Toplam Öğretmen Sayısı:  " + dt.Statistic2().ToString();
        txt3.Text = "Toplam Ders Sayısı:  " + dt.Statistic3().ToString();
        txt4.Text = "Matematik 1. Sınav en yüksek not:  " + dt.Statistic4().ToString();
        txt5.Text = "Fizik 1. Sınav en yüksek not:  " + dt.Statistic5().ToString();
        
    }
}