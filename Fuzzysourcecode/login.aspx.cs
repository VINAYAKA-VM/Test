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

public partial class login : System.Web.UI.MobileControls.MobilePage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btn_click(object sender, EventArgs e)
    {
        if (text1.Text == "123" && text2.Text == "123")
        {
            Response.Redirect("userinmobile.aspx");
        }
        else
            MsgBox.Show("Invalid User");
    }
}
