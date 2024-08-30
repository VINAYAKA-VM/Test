using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Configuration;
using System.Data.SqlClient;
using System.Text;
using System.Security.Cryptography;

/// <summary>
/// Summary description for encryption
/// </summary>
public class encryption
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.AppSettings["fuzzyconnection"]);
    SqlCommand com,cmd1;

    string id;
    int fid;
	public encryption()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public static string Encrypt(string toEncrypt, bool useHashing)
    {
        byte[] keyArray;
        byte[] toEncryptArray = UTF8Encoding.UTF8.GetBytes(toEncrypt);
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
            return Convert.ToBase64String(resultArray, 0, resultArray.Length);

        }   
    public static string Decrypt(string cipherString, bool useHashing)
    {
        byte[] keyArray;
        byte[] toEncryptArray = Convert.FromBase64String(cipherString);
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
        return UTF8Encoding.UTF8.GetString(resultArray);
    }
    public  int userid()
    {
        cn.Open();
        cmd1 = new SqlCommand("select max(userid) from registration", cn);
        id = Convert.ToString(cmd1.ExecuteScalar());
        if (id == "")
        {
            fid = 1;
        }
        else
        {
            fid = Convert.ToInt16(id);
            fid = fid + 1;
        }
        cn.Close();
        return fid;
    }



    public void register(string id, string unam, string ps, string num, string em, string city, string fnm,string dat)
    {
        try
        {
            cn.Open();
            com = new SqlCommand();
            com.Connection = cn;
            com.CommandType = CommandType.StoredProcedure;
            com.CommandText = "register";
            com.Parameters.Add("@userid", SqlDbType.Int, 0);
            com.Parameters["@userid"].Value = id;
            com.Parameters.Add("@usernam", SqlDbType.VarChar, 50);
            com.Parameters["@usernam"].Value = unam;
            com.Parameters.Add("@password", SqlDbType.VarChar, 50);
            com.Parameters["@password"].Value = ps;
            com.Parameters.Add("@contactno", SqlDbType.VarChar, 50);
            com.Parameters["@contactno"].Value = num;
            com.Parameters.Add("@email", SqlDbType.VarChar, 50);
            com.Parameters["@email"].Value = em;
            com.Parameters.Add("@city", SqlDbType.VarChar, 50);
            com.Parameters["@city"].Value = city;
            com.Parameters.Add("@filenam", SqlDbType.VarChar, 50);
            com.Parameters["@filenam"].Value = fnm;
            com.Parameters.Add("@dat", SqlDbType.DateTime);
            com.Parameters["@dat"].Value = dat;
            com.ExecuteNonQuery();
            cn.Close();
        }
        catch (Exception e)
        {
            MsgBox.Show(e.Message);
        }
    }

    public DataSet checkuser(string usr,string psw)
    {
        cn.Open();
        SqlDataAdapter adt = new SqlDataAdapter("select usernam,password from registration where usernam='" + usr + "' and password='" + psw + "'", cn);
        DataSet da = new DataSet();
        adt.Fill(da);
        cn.Close();
        return da;
        
    }

   
    
}
