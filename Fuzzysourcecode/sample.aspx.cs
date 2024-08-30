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
using System.ComponentModel;
using System.Text;
using System.Data.SqlClient;


public partial class sample : System.Web.UI.Page
{
    search inst = new search();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string id = Request.Params["id"];
            Label1.Visible = false;
            SqlConnection cn = new SqlConnection(ConfigurationManager.AppSettings["fuzzyconnection"]);
            cn.Open();
            SqlDataAdapter ad = new SqlDataAdapter("select * from ownerfiles where filenam like '%eee%' ", cn);
            DataTable dt = new DataTable();
            ad.Fill(dt);
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                LinkButton1.Text += dt.Rows[i]["filenam"].ToString() + "<br>";
                Label1.Text += dt.Rows[i]["fileid"].ToString() + "<br>";
            }
        }
    }
   

    
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        if (TextBox1.Text == "")
        {
            MsgBox.Show("error");

        }
        else
        {
            
            string clearText = TextBox1.Text.Trim();
            string cipherText = encryption.Encrypt(clearText, true);           
            TextBox3.Text = cipherText;
          
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string cipherText = TextBox3.Text.Trim();
        string decryptedText = encryption.Decrypt(cipherText, true);
        TextBox2.Text = decryptedText;
        //txtDecryptedText.Visible = true;
        //label3.Visible = true;  
    }
}
