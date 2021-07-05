using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DeleteStudent : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int id = Convert.ToInt32(Request.QueryString["ID"].ToString());
        DataSetTableAdapters.Tbl_StudentTableAdapter dt = new DataSetTableAdapters.Tbl_StudentTableAdapter();
        dt.DeleteStudent(id);
        Response.Redirect("Default.aspx");
    }
}