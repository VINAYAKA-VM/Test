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

public partial class userdetails : System.Web.UI.MobileControls.MobilePage
{
    search sr = new search();
    protected void Page_Load(object sender, EventArgs e)
    {
       // username.Text = (string)Session["uname"];
    }

    protected void submit_click(object sender, EventArgs e)
    {
        Session["nm"] = text1.Text;
        Response.Redirect("view.aspx");
        
    }
}
