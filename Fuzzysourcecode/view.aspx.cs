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

public partial class view : System.Web.UI.MobileControls.MobilePage
{
    search sr = new search();
    protected void Page_Load(object sender, EventArgs e)
    {
        string m = (string)Session["nm"];
        DataSet st = new DataSet();
        st = sr.viewdetails(m);
        unam.Text = st.Tables[0].Rows[0]["usernam"].ToString();
        con.Text = st.Tables[0].Rows[0]["contactno"].ToString();
        email.Text = st.Tables[0].Rows[0]["email"].ToString();
    }
}
