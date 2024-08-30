<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sample.aspx.cs" Inherits="sample" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style1
        {
            width: 782px;
        }
    </style>
</head>
<body>

    <form id="form1" runat="server">
    <div>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button 
            ID="Button1" runat="server" Text="UPLOAD PRESCRIPTION" onclick="Button1_Click"  />
&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;
        <asp:Button 
            ID="Button2" runat="server"  Text="DOWNLOAD PRESCRIPTION" onclick="Button2_Click" /><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
    </div>
    <table><tr><td class="style1">
        <asp:LinkButton ID="LinkButton1" runat="server"></asp:LinkButton>
        </td><td class="style1">&nbsp;</td></tr><tr><td class="style1">
            <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
        <td class="style1">&nbsp;</td></tr><tr><td class="style1"><asp:Label ID="Label2" runat="server"></asp:Label></td>
        <td class="style1">&nbsp;</td></tr><tr><td class="style1"><asp:Label ID="Label3" runat="server"></asp:Label></td>
        <td class="style1">&nbsp;</td></tr></table>
    </form>
</body>
</html>
