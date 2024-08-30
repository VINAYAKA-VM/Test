using System;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Web;
using System.Web.Mobile;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.MobileControls;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

public partial class userlist : System.Web.UI.MobileControls.MobilePage
{
    search sa = new search();
    protected void Page_Load(object sender, EventArgs e)
    {
        DataSet data = new DataSet();
        data = sa.listusers();
        for (int h = 0; h < data.Tables[0].Rows.Count; h++)
        {
            list1.Items.Add(data.Tables[0].Rows[h]["usernam"].ToString());
        }
    }
}
