using System;
using System.Collections;
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

public partial class usersview : System.Web.UI.Page
{
    search ins = new search();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataSet st = new DataSet();
            st = ins.ddl();
            ddl_filename.Items.Clear();
            ddl_filename.Items.Add("--Select--");
            for (int j = 0; j < st.Tables[0].Rows.Count; j++)
            {
                ddl_filename.Items.Add(st.Tables[0].Rows[j]["filenam"].ToString());
            }
        }
    }
    protected void ddl_filename_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["fname"] = ddl_filename.SelectedItem.Text;
        DataSet ds = new DataSet();
        ds = ins.fillgridviwew(ddl_filename.SelectedItem.Text);
        if (ds.Tables[0].Rows.Count > 0)
        {
            gv_listofusers.DataSource = ds;
            gv_listofusers.DataBind();
        }
        else
        {
            MsgBox.Show("No data found");
        }
      //  Response.Redirect("userinmobile.aspx");
    }
}
