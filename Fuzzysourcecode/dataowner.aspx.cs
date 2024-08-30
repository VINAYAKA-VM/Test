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
using System.Data.SqlClient;
using System.Text;
using System.IO;
using System.Text.RegularExpressions;
using System.Security.Cryptography;



public partial class dataowner : System.Web.UI.Page
{
    search ob = new search();
    StringBuilder sb = new StringBuilder();
    protected void Page_Load(object sender, EventArgs e)
    {
        
        lbl_fileid.Text = Convert.ToString(ob.fileid());
        lbl_msg.Visible = false;
        lbl_filemsg.Visible = false;
        //lbl_encrypt.Visible = true;
        lbl_encrypt.Visible = false;
        Panel2.Visible = false;
        grid();
        
    }
   
    
    protected void btnsubmit_Click1(object sender, EventArgs e)
    {
        lbl_msg.Visible = true;
        Panel2.Visible = true;
        if (FileUpload1.PostedFile == null || String.IsNullOrEmpty(FileUpload1.PostedFile.FileName) || FileUpload1.PostedFile.InputStream == null || txt_fname.Text=="")
        {
            lbl_msg.Text = "<br />Error - unable to upload file. Please try again.<br />";
        }
        else
        {
            bool useHashing = true;
            string clearText = txt_fname.Text.Trim();
            string cipherText = encryption.Encrypt(clearText, true);

            //Response.Write(clearText + "<br>");
            sb.Append(clearText + "<br>");
            byte[] keyArray;
            byte[] toEncryptArray = UTF8Encoding.UTF8.GetBytes(clearText);
            System.Configuration.AppSettingsReader settingsReader = new AppSettingsReader();
            string key = (string)settingsReader.GetValue("fuzzyconnection", typeof(string));
            if (useHashing)
            {
                MD5CryptoServiceProvider hashmd5 = new MD5CryptoServiceProvider();
                keyArray = hashmd5.ComputeHash(UTF8Encoding.UTF8.GetBytes(key));
                hashmd5.Clear();
            }
            else
                        keyArray = UTF8Encoding.UTF8.GetBytes(key);

            TripleDESCryptoServiceProvider tdes = new TripleDESCryptoServiceProvider();
            tdes.Key = keyArray;
            tdes.Mode = CipherMode.ECB;
            tdes.Padding = PaddingMode.PKCS7;
            ICryptoTransform cTransform = tdes.CreateEncryptor();
            byte[] resultArray = cTransform.TransformFinalBlock(toEncryptArray, 0, toEncryptArray.Length);
            tdes.Clear();
            for (int x = 0; x < toEncryptArray.Length; x++)
            {
                //Response.Write(toEncryptArray[x].ToString() + "<br>");
                sb.Append(toEncryptArray[x].ToString() + "<br>");
            }
            sb.Append("<br>");
            for (int c = 0; c < resultArray.Length; c++)
            {
               // Response.Write(resultArray[c].ToString() + "<br>");
                sb.Append(resultArray[c].ToString() + "<br>");
            }
            //Response.Write(Convert.ToBase64String(resultArray, 0, resultArray.Length));
            sb.Append(Convert.ToBase64String(resultArray, 0, resultArray.Length) + "<br>");
            sb.Append("<br><br>");

           
            lbl_encrypt.Visible = false;
            lbl_encrypt.Text = cipherText;
            byte[] filebytes = new byte[FileUpload1.PostedFile.InputStream.Length + 1];
            FileUpload1.PostedFile.InputStream.Read(filebytes, 0, filebytes.Length);
            ob.uploadfile(lbl_fileid.Text, txt_fname.Text, filebytes, lbl_encrypt.Text);
            lbl_msg.Text = "File successfully uploaded";
            grid();
            Literal1.Text = sb.ToString();
        }
        }

    protected void gv_listoffiles_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        DataSet d = new DataSet();
        d = ob.delete(gv_listoffiles.Rows[e.RowIndex].Cells[0].Text);
        grid();
    }
    public void grid()
    {
        DataSet st = new DataSet();
        st = ob.listfiles();
        if (st.Tables[0].Rows.Count > 0)
        {
            gv_listoffiles.DataSource = st;
            gv_listoffiles.DataBind();
        }
        else
        {
            lbl_filemsg.Visible = true;
            lbl_filemsg.Text = "No files are uploaded";
        }

    }
    protected void btn_clear_Click(object sender, EventArgs e)
    {
        lbl_fileid.Text = Convert.ToString(ob.fileid());
        txt_fname.Text = "";
       
    }
}
