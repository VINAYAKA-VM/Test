<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register src="fuzzyheader.ascx" tagname="fuzzyheader" tagprefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    //protected void btnlogin_Click(object sender, EventArgs e)
    //{

    //}

    //protected void Button2_Click(object sender, EventArgs e)
    //{

    //}

    //protected void btn_search_Click(object sender, EventArgs e)
    //{
    //    Session["keyword"] = txt_keyword.Text;
    //    Response.Redirect("cloudsearch.aspx");

    //}

    
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Welcome to BASAVESVARA HOSPITAL</title>
    <link rel="Stylesheet" href="css/style.css" type="text/css"/>
    <style type="text/css">
        .style1
        {
            height: 41px;
        }
    </style>
</head>
<body bgcolor="White">
    <form id="form1" runat="server">
    <div>
    
    <%--<tr>
<td valign="top">--%>

<table align="center" width="950" bgcolor="#F2F2F2" >
<tr><td colspan="2">
    Basavesvara Hospital, Chitradurga</td></tr>
<tr>
<td width="650">
<table align="center" width="650">
<tr>
<td class="indexing">Enter your keywords:<br><br></td>
</tr>
<tr>
<td align="left" valign="middle" class="paragraping"><div class="servlet">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox 
    ID="txt_keyword" CssClass="text1" runat="server"></asp:TextBox>
<asp:Button ID="btn_search" CssClass="button1" runat="server" Text="Cloud Search" 
    Width="126px" onclick="btn_search_Click"  />
</div>
</td>
</tr>
<tr>
<td height="10">
    <asp:Label ID="Label2" runat="server"></asp:Label>
    &nbsp;<asp:Label ID="Label3" runat="server"></asp:Label>
    </td>
</tr>
<tr>
<td class="style1">
    </td>
</tr>
<tr>
<td class="paragraping"><font color="#005CB9">Architecture of Cloud Computing:</font></td>
</tr>
<tr>
<td><img src="Images/cloud.jpg" width="640" height="300"></td>
</tr>
</table>
</td>
<td width="287" valign="top">
<%--<form action="adminlogin.jsp" method="get" name="LoginForm" onSubmit="return checkLoginID();"></form>
--%><table align="center" width="285" style="border: 1px #A0A0A0 solid;">
<tr>
<td align="right" width="25" bgcolor="#FFFFFF"><img src="Images/admin_icon3.gif" width="24" height="20"></td>
<td height="24" align="left" background="Images/bg_thead.gif" class="userlogin" valign="middle">
    &nbsp;&nbsp;NURSE Login</td>
</tr>
</table>
<table align="center" width="285" bgcolor="#FFFFFF" style="border: 1px #A0A0A0 solid;">
<tr>
<td width="101" class="paragraping">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Username:</td>
<td width="172"><%--<input type="text" class="texta1" name="loginID">--%><asp:TextBox 
        ID="txt_user" CssClass="texta1" runat="server" OnTextChanged="txt_user_TextChanged"></asp:TextBox></td>
</tr>
<tr>
<td class="paragraping">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Password:</td>
<td><%--<input type="password" class="texta1" name="password" onBlur="checkForm();">--%><asp:TextBox 
        ID="txt_pass" CssClass="texta1" runat="server" TextMode="Password"></asp:TextBox></td>
</tr>
<tr>
<td height="26" class="paragraping"></td>
<td align="left"><%--<input type="button" name="B1" class="button2" value="Login" onClick="checkForm();">--%><asp:Button 
        ID="btnlogin" CssClass="button2" runat="server" Text="Login" onclick="btnlogin_Click" 
         />
&nbsp;&nbsp;&nbsp;<asp:Button ID="btnclear" CssClass="button2" runat="server" Text="Clear" OnClick="btnclear_Click" />
</td>
</tr>
</table>

</td>
</tr>
</table>
<table align="center" width="954">
<tr>
<td background="Images/footer-l.png" class="userlogin" align="center">Developped by 
    PROF. VINAYAKA V M, www.sjmit.ac.in</td>
</tr>
</table>
<%--</td>
</tr>--%>
    
    </div>
    </form>
</body>
</html>
