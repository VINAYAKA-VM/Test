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

public partial class register : System.Web.UI.Page
{
    encryption enobj = new encryption();
    string fnam;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            lbl_dat.Text = DateTime.Now.ToString();
            lbl_id.Text = Convert.ToString(enobj.userid());
            Label9.Visible = false;
            Label10.Visible = false;
            txt_pass.Visible = false;
            txt_unam.Visible = false;
            btnlogin.Visible = false;
            
        }
    }
    

    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Label9.Visible = true;
        Label10.Visible = true;
        txt_pass.Visible = true;
        txt_unam.Visible = true;
        btnlogin.Visible = true;
    }
    protected void btnlogin_Click1(object sender, EventArgs e)
    {
        DataSet da = new DataSet();
        da=enobj.checkuser(txt_unam.Text,txt_pass.Text);
        if (da.Tables[0].Rows.Count > 0)
        {
            if (da.Tables[0].Rows[0]["usernam"].ToString() == txt_unam.Text && da.Tables[0].Rows[0]["usernam"].ToString() == txt_pass.Text)
            {
                fnam = Request.Params["id"];
                Session["filename"] = fnam;
                Response.Redirect("downloadfile.aspx");
            }
            else
            {
                MsgBox.Show("Invalid User");
            }
        }
        else
        {
            MsgBox.Show("User does not exist");
        }
    }
    protected void btnregister_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            fnam = Request.Params["id"];
            Session["filename"] = fnam;
            enobj.register(lbl_id.Text, txt_name.Text, txt_pwd.Text, txt_num.Text, txt_email.Text, txt_city.Text, fnam,lbl_dat.Text);
            Response.Redirect("downloadfile.aspx");
        }
    }
}
