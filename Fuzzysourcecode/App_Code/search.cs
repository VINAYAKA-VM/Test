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
using System.Data.SqlClient;
using System.IO;
using System.Text;
using System.Text.RegularExpressions;
using System.Security.Cryptography;

/// <summary>
/// Summary description for search
/// </summary>
public class search
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.AppSettings["fuzzyconnection"]);
    SqlCommand cmd, cmd1,cmd2;
    string key,enkey,id;
    int fid;
    //string[] enkey;
	public search()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public string Encrypt(string keyword)
    {
        enkey = "";
        int len = keyword.Length;
        for (int i = 0; i < len; i++)
        {
            cn.Open();
            cmd = new SqlCommand("select keys from alphakeys where alphabets='" + keyword[i].ToString() + "'", cn);
            key = Convert.ToString(cmd.ExecuteScalar());
            enkey += key;
            //enkey= new string[50];
            //enkey[i] =key;
            cn.Close();
        }
        return enkey;
    }

    public int fileid()
    {
        cn.Open();
        cmd1 = new SqlCommand("select max(fileid) from ownerfiles", cn);
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

    public void uploadfile(string fi,string finam,byte[] fibytes,string entxt)
    {
        try
        {
            cn.Open();
            int n = finam.Length;
            for (int i = 0; i < n; i++)
            {               
                cmd = new SqlCommand("select keys from alphakeys where alphabets='" + finam[i].ToString() + "'", cn);
                key = Convert.ToString(cmd.ExecuteScalar());
                enkey += key;               
            }
            cmd2 = new SqlCommand("insert into ownerfiles values('" + fi + "','" + finam + "',@files,'"+enkey+"','"+entxt+"')", cn);
            cmd2.Parameters.AddWithValue("@files", fibytes);
            cmd2.ExecuteNonQuery();
            cn.Close();
        }
        catch(Exception ex)
        {
            MsgBox.Show(ex.Message);
        }
    }

    public DataSet matching(string en)
    {
        cn.Open();
        SqlDataAdapter adp = new SqlDataAdapter("select filenam from ownerfiles where decryptedtext like '"+'%'+ en +'%'+ "' ", cn);
        DataSet d = new DataSet();
        adp.Fill(d);
        cn.Close();
        return d;
    }

    public DataSet retrievedistinctfiles()
    {
        cn.Open();
        SqlDataAdapter adapt = new SqlDataAdapter("select distinct fnames from filenames", cn);
        DataSet set = new DataSet();
        adapt.Fill(set);
        SqlCommand com = new SqlCommand("delete from filenames", cn);
        com.ExecuteNonQuery();
        cn.Close();
        return set;
    }
    public DataSet filematching(string key)
    {
        cn.Open();
        SqlDataAdapter ad = new SqlDataAdapter("select encryptedtext from ownerfiles where filenam like '" + '%' + key +'%' + "' ", cn);
        DataSet dst = new DataSet();
        ad.Fill(dst);
        cn.Close();
        return dst;
    }
    public DataSet listfiles()
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.AppSettings["fuzzyconnection"]);
        cn.Open();
        SqlDataAdapter ad1 = new SqlDataAdapter("select * from ownerfiles", cn);
        DataSet dst1 = new DataSet();
        ad1.Fill(dst1);
        cn.Close();
        return dst1;
    }
    public DataSet delete(string id)
    {
        cn.Open();
        SqlDataAdapter data = new SqlDataAdapter("delete from ownerfiles where fileid='" + id + "'", cn);
        DataSet det = new DataSet();
        data.Fill(det);
        cn.Close();
        return det;
    }
    public DataSet editdistance(string txt)
    {
        cn.Open();
        SqlDataAdapter ad = new SqlDataAdapter("select filenam from ownerfiles where filenam like '" + '%' + txt + '%' + "' ", cn);
        DataSet dst = new DataSet();
        ad.Fill(dst);
        cn.Close();
        return dst;
    }
    public DataSet ddl()
    {
        cn.Open();
        SqlDataAdapter ad = new SqlDataAdapter("select distinct filenam from ownerfiles ", cn);
        DataSet dset = new DataSet();
        ad.Fill(dset);
        cn.Close();
        return dset;
    }
    public DataSet fillgridviwew(string fname)
    {
        cn.Open();
        SqlDataAdapter ad1 = new SqlDataAdapter("select * from registration where filenam='"+fname+"'", cn);
        DataSet set = new DataSet();
        ad1.Fill(set);
        cn.Close();
        return set;
    }

    public DataSet filllist(string fname)
    {
        cn.Open();
        SqlDataAdapter ad1 = new SqlDataAdapter("select usernam from registration where filenam='" + fname + "'", cn);
        DataSet set1 = new DataSet();
        ad1.Fill(set1);
        cn.Close();
        return set1;
    }

    public DataSet viewdetails(string uname)
    {
        cn.Open();
        SqlDataAdapter ad1 = new SqlDataAdapter("select * from registration where usernam='" + uname + "'", cn);
        DataSet set1 = new DataSet();
        ad1.Fill(set1);
        cn.Close();
        return set1;
    }
    public DataSet listusers()
    {
        cn.Open();
        SqlDataAdapter ad1 = new SqlDataAdapter("select usernam from registration", cn);
        DataSet set1 = new DataSet();
        ad1.Fill(set1);
        cn.Close();
        return set1;
    }
}


