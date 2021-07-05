using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DeleteLesson : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int id = Convert.ToInt32(Request.QueryString["ID"].ToString());
        DataSetTableAdapters.Tbl_LessonsTableAdapter dt = new DataSetTableAdapters.Tbl_LessonsTableAdapter();
        dt.DeleteLesson(id);
        Response.Redirect("LessonList.aspx");
    }
}