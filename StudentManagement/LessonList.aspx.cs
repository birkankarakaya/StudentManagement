using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LessonList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataSetTableAdapters.Tbl_LessonsTableAdapter dt = new DataSetTableAdapters.Tbl_LessonsTableAdapter();
        Repeater1.DataSource = dt.LessonList();
        Repeater1.DataBind();
    }
}