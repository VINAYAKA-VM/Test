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
using System.Data.SqlClient;

public partial class userinmobile : System.Web.UI.MobileControls.MobilePage
{
    search obj = new search();
    protected void Page_Load(object sender, EventArgs e)
    {
        //DataSet ds = new DataSet();
        //ds = obj.ddl();
        //select.Items.Clear();
        //select.Items.Add("--select--");
        //for (int j = 0; j < ds.Tables[0].Rows.Count; j++)
        //{
        //    select.Items.Add(ds.Tables[0].Rows[j]["filenam"].ToString());
                       
        //}
    }

    protected void btn_click(object sender, EventArgs e)
    {
        Session["fname"] = txt.Text;
        Response.Redirect("mobile.aspx");
       
        
    }
}
