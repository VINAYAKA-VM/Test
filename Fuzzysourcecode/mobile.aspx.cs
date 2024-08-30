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

public partial class mobile : System.Web.UI.MobileControls.MobilePage
{
    search o = new search();
    LinkButton link1;
    protected void Page_Load(object sender, EventArgs e)
    {
        string s = (string)Session["fname"];
        DataSet ds1 = new DataSet();
        ds1 = o.filllist(s);
        for (int x = 0; x < ds1.Tables[0].Rows.Count; x++)
        {
            //list1.Items.Add(ds1.Tables[0].Rows[x]["usernam"].ToString());
            link1 = new LinkButton();
            link1.Text = ds1.Tables[0].Rows[x]["usernam"].ToString()+"<br>";
            link1.CommandName = ds1.Tables[0].Rows[x]["usernam"].ToString();
            link1.Command += new CommandEventHandler(this.link1_click);
            link1.ID = x.ToString();
            this.panel1.Controls.Add(link1);
            
        }

        
    }

    protected void link1_click(object sender, CommandEventArgs e)
    {
        Session["uname"] = link1.Text;
        Response.Redirect("userdetails.aspx");
        //startdownload(e.CommandName);
    }
    protected void startdownload(string s1)
    {
        Response.Redirect("userdetails.aspx");
    }
}
