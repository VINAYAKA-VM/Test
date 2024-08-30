﻿using System;
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
using System.Text;
using System.IO;
using System.Text.RegularExpressions;
using System.Data.SqlClient;
using System.Security.Cryptography;




public partial class cloudsearch : System.Web.UI.Page
{
    search obj = new search();
    StringBuilder sb = new StringBuilder();
   // string s,next;
    int h=0;
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (!IsPostBack)
        //{                    
            SqlConnection cn = new SqlConnection(ConfigurationManager.AppSettings["fuzzyconnection"]);
            txt_keyword.Text = (string)Session["keyword"];
            string text = (string)Session["keyword"];
            string splitby = " ";
            Regex rg = new Regex(splitby);
            string[] st = rg.Split(text);
            int m = st.Count();
           

        ///////// new logic//////////////
            for (int k = 0; k < m; k++)
            {
                if (st[k].ToString() != "")
                {
                    DataSet da = new DataSet();
                    da = obj.filematching(st[k].ToString());
                   
                    if (da.Tables[0].Rows.Count > 0)
                    {
                        for (int f = 0; f < da.Tables[0].Rows.Count; f++)
                        {
                            bool useHashing = true;
                            lbl_entxt.Visible = false;
                            lbl_entxt.Text = da.Tables[0].Rows[f]["encryptedtext"].ToString();
                            string cipherText = lbl_entxt.Text.Trim();
                           // Response.Write(cipherText + "<br>");

                            sb.Append(cipherText + "<br>");
                            string decryptedText = encryption.Decrypt(cipherText, true);


                            byte[] keyArray;
                            byte[] toEncryptArray = Convert.FromBase64String(cipherText);
                            System.Configuration.AppSettingsReader settingsReader = new AppSettingsReader();
                            string key = (string)settingsReader.GetValue("fuzzyconnection", typeof(String));
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
                            ICryptoTransform cTransform = tdes.CreateDecryptor();
                            byte[] resultArray = cTransform.TransformFinalBlock(toEncryptArray, 0, toEncryptArray.Length);
                            
                            tdes.Clear();
                            for (int x = 0; x < toEncryptArray.Length; x++)
                            {
                               // Response.Write(toEncryptArray[x].ToString() + "<br>");
                                sb.Append(toEncryptArray[x].ToString() + "<br>");
                                
                            }
                            sb.Append("<br>");
                            for (int c = 0; c < resultArray.Length; c++)
                            {
                               // Response.Write(resultArray[c].ToString());
                                sb.Append(resultArray[c].ToString() + "<br>");  
                            }
                           
                           // Response.Write(UTF8Encoding.UTF8.GetString(resultArray) + "<br>");
                            
                            sb.Append(UTF8Encoding.UTF8.GetString(resultArray) + "<br>");
                            sb.Append("<br><br>");

                          // creation of linkbutton
                            LinkButton linkbtn = new LinkButton();
                            linkbtn.Text = decryptedText + "<br><br>";
                            linkbtn.Visible = true;
                            linkbtn.CommandName = decryptedText;
                            linkbtn.Command += new CommandEventHandler(this.Link1_Click);
                            linkbtn.ID = h.ToString();
                            this.downloadfiles.Controls.Add(linkbtn);
                            h++;

                        }
                    }
                    else
                    {
                        Response.Redirect("matching.aspx");
                        
                    }
                }
                else
                {
                    lbl_error.Text = "Please check your keyword.Its error";
                }
            }

            Literal1.Text = sb.ToString();
           
    }
    protected void Link1_Click(object sender, CommandEventArgs e)
    {
        startdownload(e.CommandName);
    }

    protected void startdownload(string s)
    {
        Response.Redirect("register.aspx?id="+s+"");
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {

    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {

    }
}
