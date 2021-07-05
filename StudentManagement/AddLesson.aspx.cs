using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddLesson : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Kaydet_Click(object sender, EventArgs e)
    {
        DataSetTableAdapters.Tbl_LessonsTableAdapter dt = new DataSetTableAdapters.Tbl_LessonsTableAdapter();
        dt.AddLesson(DersAd.Text);
        Response.Redirect("LessonList.aspx");
    }
}