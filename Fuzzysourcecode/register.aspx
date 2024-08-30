<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>

<%@ Register src="fuzzyheader.ascx" tagname="fuzzyheader" tagprefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>BASAVESVARA HOSPITAL MEDICINE PROVISION SYSTEM</title>
            <link rel="Stylesheet" href="css/style.css" type="text/css"/>

    <style type="text/css">
        .style4
        {
            height: 509px;
        }
        .style5
        {
            height: 9px;
        }
        </style>
        <script>
        function click()
        {
        history.go(-1);
        return false;
        }
        </script>

</head>
<body bgcolor="black">
    <form id="form1" runat="server">
    <div>
    <table align="center" width="950" bgcolor="#F2F2F2" >
    <tr><td colspan="4">
        BASAVESVARA MEDICAL COLLEGE AND HOSPITAL</td></tr>
    <tr><td rowspan="17" valign="top">
        <asp:Image ID="Image1" runat="server" ImageUrl="~/images/reg.jpg" />
        </td><td>
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Verdana" 
            Font-Size="Large" ForeColor="#676767" Text="Nurse Registration"></asp:Label>
        </td><td align="right">
        <asp:LinkButton ID="LinkButton3" runat="server" Font-Names="Verdana" CausesValidation="false"
            Font-Size="Small" ForeColor="#CC3300" PostBackUrl="~/Default.aspx">Log Out</asp:LinkButton>
                    </td><td align="right">
        <asp:LinkButton ID="LinkButton1" runat="server" Font-Names="Verdana" OnClientClick="return click();" 
            Font-Size="Small" ForeColor="#CC3300" PostBackUrl="~/cloudsearch.aspx" 
                CausesValidation="False">Back</asp:LinkButton>
        </td></tr>
    <tr><td>
        &nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr>
    <tr><td>
        <asp:Label ID="Label6" runat="server" Font-Bold="False" Font-Names="Verdana" 
            Font-Size="Small" ForeColor="Black" Text="User Id:"></asp:Label>
        </td><td>
        <asp:Label ID="lbl_id" runat="server" Font-Bold="False" Font-Names="Verdana" 
            Font-Size="Small" ForeColor="Black"></asp:Label>
                    </td><td>&nbsp;</td></tr>
    <tr><td>
        <asp:Label ID="Label11" runat="server" Font-Bold="False" Font-Names="Verdana" 
            Font-Size="Small" ForeColor="Black" Text="Date:"></asp:Label>
        </td><td>
        <asp:Label ID="lbl_dat" runat="server" Font-Bold="False" Font-Names="Verdana" 
            Font-Size="Small" ForeColor="Black"></asp:Label>
                    </td><td>&nbsp;</td></tr>
    <tr><td valign="top">
        <asp:Label ID="Label2" runat="server" Font-Bold="False" Font-Names="Verdana" 
            Font-Size="Small" ForeColor="Black" Text="User Name:"></asp:Label>
        </td><td>
            <asp:TextBox 
        ID="txt_name" CssClass="texta1" runat="server"></asp:TextBox>&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="txt_name" ErrorMessage="Enter your name"></asp:RequiredFieldValidator>
                    </td><td>&nbsp;</td></tr>
    <tr><td valign="middle">
        <asp:Label ID="Label8" runat="server" Font-Bold="False" Font-Names="Verdana" 
            Font-Size="Small" ForeColor="Black" Text="Password:"></asp:Label>
        </td><td colspan="2" valign="middle">
            <asp:TextBox 
        ID="txt_pwd" CssClass="texta1" runat="server" TextMode="Password"></asp:TextBox>&nbsp;
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txt_pwd"
                                ErrorMessage="Atleast 4 not more than 7 " 
                ValidationExpression="^([a-zA-Z0-9]{4,7})$"></asp:RegularExpressionValidator>
                    </td></tr>
    <tr><td class="style5" valign="top">
        <asp:Label ID="Label4" runat="server" Font-Bold="False" Font-Names="Verdana" 
            Font-Size="Small" ForeColor="Black" Text="Contact No. :"></asp:Label>
        </td><td class="style5" colspan="2">
            <asp:TextBox ID="txt_num" CssClass="texta1" runat="server"></asp:TextBox>&nbsp;
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                            ControlToValidate="txt_num" ErrorMessage="Enter valid mobile numbers " 
                            ValidationExpression="^\d{10}"></asp:RegularExpressionValidator>
                    </td></tr>
    <tr><td>
        <asp:Label ID="Label3" runat="server" Font-Bold="False" Font-Names="Verdana" 
            Font-Size="Small" ForeColor="Black" Text="Email Id:"></asp:Label>
        </td><td>
            <asp:TextBox 
        ID="txt_email" CssClass="texta1" runat="server"></asp:TextBox>&nbsp;
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txt_email"
                            ErrorMessage="Enter valid Email Id" 
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td><td>&nbsp;</td></tr>
     <tr><td>
        <asp:Label ID="Label5" runat="server" Font-Bold="False" Font-Names="Verdana" 
            Font-Size="Small" ForeColor="Black" Text="City:"></asp:Label>
         </td><td>
             <asp:TextBox 
        ID="txt_city" CssClass="texta1" runat="server"></asp:TextBox>&nbsp;
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                            ControlToValidate="txt_city" ErrorMessage="Enter only characters" 
                            ValidationExpression="^[a-zA-z\s]*"></asp:RegularExpressionValidator>
                    </td><td>&nbsp;</td></tr>
      <tr><td>&nbsp;</td><td>
          <asp:Button 
        ID="btnregister" CssClass="button2" runat="server" Text="Register" onclick="btnregister_Click" 
        />
          </td><td>&nbsp;</td></tr>
       <tr><td>
        <asp:Label ID="Label7" runat="server" Font-Bold="False" Font-Names="Verdana" 
            Font-Size="Small" ForeColor="Black" Text="Existing User?"></asp:Label>
           </td><td>
        <asp:LinkButton ID="LinkButton2" runat="server" Font-Names="Verdana" CausesValidation="false"
            Font-Size="Small" ForeColor="#CC3300" Font-Bold="True" 
                   onclick="LinkButton2_Click" >Click here</asp:LinkButton>
           </td><td>
           &nbsp;</td></tr>
       <tr><td>
           &nbsp;</td><td>
               &nbsp;</td><td>
           &nbsp;</td></tr>
       <tr><td>
        <asp:Label ID="Label9" runat="server" Font-Bold="False" Font-Names="Verdana" 
            Font-Size="Small" ForeColor="Black" Text="User Name:"></asp:Label>
           </td><td>
            <asp:TextBox 
        ID="txt_unam" CssClass="texta1" runat="server"></asp:TextBox>
           </td><td>
           &nbsp;</td></tr>
       <tr><td>
        <asp:Label ID="Label10" runat="server" Font-Bold="False" Font-Names="Verdana" 
            Font-Size="Small" ForeColor="Black" Text="Password:"></asp:Label>
           </td><td>
            <asp:TextBox 
        ID="txt_pass" CssClass="texta1" runat="server" TextMode="Password"></asp:TextBox>
           </td><td>
           &nbsp;</td></tr>
       <tr><td>
           &nbsp;</td><td>
          <asp:Button 
        ID="btnlogin" CssClass="button2" runat="server" Text="Login" CausesValidation="false" onclick="btnlogin_Click1"
        />
           </td><td>
                    &nbsp;</td></tr>
       <tr><td>
           &nbsp;</td><td>
               &nbsp;</td><td>
           &nbsp;</td></tr>
        <tr><td class="style4"></td>
            <td class="style4"></td><td class="style4"></td></tr>
        <tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>
            &nbsp;</td></tr></table>
    </div>
    </form>
</body>
</html>
