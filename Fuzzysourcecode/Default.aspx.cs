using System;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Collections;
using System.Data.SqlClient;
using System.Text;
using System.Text.RegularExpressions;


public partial class _Default : System.Web.UI.Page 
{
    search obj = new search();
    string s;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        if (txt_user.Text == "owner" && txt_pass.Text == "owner")
        {
            Response.Redirect("dataowner.aspx");
        }
        else
            MsgBox.Show("Invalid User");
    }
    
   
    protected void btn_search_Click(object sender, EventArgs e)
    {
        Session["keyword"] = txt_keyword.Text;
        Response.Redirect("cloudsearch.aspx");
       // Response.Redirect("matching.aspx");
    }

    protected void btnclear_Click(object sender, EventArgs e)
    {
        txt_user.Text = "";
        txt_pass.Text = "";
    }

    protected void txt_user_TextChanged(object sender, EventArgs e)
    {

    }
}
