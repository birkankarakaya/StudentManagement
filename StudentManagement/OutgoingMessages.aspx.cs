﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class OutgoingMessages : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataSetTableAdapters.Tbl_MessagesTableAdapter dt = new DataSetTableAdapters.Tbl_MessagesTableAdapter();
        Repeater1.DataSource = dt.OutgoingMessages();
        Repeater1.DataBind();
    }
}