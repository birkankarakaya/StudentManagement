using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataSetTableAdapters.Tbl_StudentTableAdapter dt = new DataSetTableAdapters.Tbl_StudentTableAdapter();
        Repeater1.DataSource = dt.GetStudent();
        Repeater1.DataBind();
    }
}