<%@ Page Language="C#" AutoEventWireup="true" CodeFile="cloudsearch.aspx.cs" Inherits="cloudsearch" %>

<%@ Register src="fuzzyheader.ascx" tagname="fuzzyheader" tagprefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Fuzzy Keyword Search over Encrypted Data in Cloud Computing</title>
    <style type="text/css">
        .style1
        {
            width: 315px;
        }
        .style2
        {
            width: 68px;
        }
.text1
{
width:435px;
height:25;
border:1px #006BD7 solid;
background-color:#C6FFFF;
text-align:left;
color:red;
padding:5px 3px 5px 3px;
}
.image
{
width: 952px;
height: 110px;
color:#2E2E2E;
padding:10px 20px 10px 20px;
}
.font
{
font-family:Verdana, Arial, Helvetica, sans-serif;
font-size:30px;
color:#2e2e2e;
text-transform:Normal;
font-weight:600;
text-align:center;
}
        .style3
        {
        }
        .style4
        {
            width: 215px;
        }
a { 
color: #2e2e2e; 
text-decoration: underline;
} 
        .style6
        {
            width: 315px;
            height: 493px;
        }
        .style7
        {
            width: 239px;
            height: 493px;
        }
        .style8
        {
            width: 68px;
            height: 493px;
        }
        .style10
        {
            width: 315px;
            height: 11px;
        }
        .style11
        {
            width: 239px;
            height: 11px;
        }
        .style12
        {
            width: 68px;
            height: 11px;
        }
        .style13
        {
            width: 315px;
            height: 308px;
        }
        .style15
        {
            width: 315px;
            height: 16px;
        }
        .style16
        {
            width: 239px;
            height: 16px;
        }
        .style17
        {
            width: 68px;
            height: 16px;
        }
        .style18
        {
            width: 315px;
            height: 25px;
        }
        .style19
        {
            width: 239px;
            height: 25px;
        }
        .style20
        {
            width: 68px;
            height: 25px;
        }
        .style21
        {
            font-size: x-large;
        }
        .style22
        {
            width: 315px;
            height: 284px;
        }
    </style>
</head>
<body bgcolor="Black">
    <form id="form1" runat="server">
    <div>    
    <table align="center" width="950" bgcolor="#F2F2F2" >
    <tr><td colspan="4">
        BASAVESVARA MEDICAL COLLEGE AND HOSPITAL CHITRADURGA</td></tr>
     <tr><td align="left" class="style4" rowspan="9" valign="top">
         <asp:Image ID="Image1" runat="server" ImageUrl="~/images/searchimg.jpg" />
         </td><td class="style15" align="left">
             <asp:TextBox 
    ID="txt_keyword" CssClass="text1" runat="server" Width="396px"></asp:TextBox>
         </td><td class="style16">
             <asp:ImageButton ID="ImageButton2" runat="server" Height="42px" 
                 ImageUrl="~/images/Search-icon.png" Width="47px" 
                 onclick="ImageButton2_Click" />
         </td><td class="style17" align="right" valign="top">
        <asp:LinkButton ID="LinkButton1" runat="server" Font-Names="Verdana" 
            Font-Size="Small" ForeColor="#CC3300" PostBackUrl="~/Default.aspx">Back</asp:LinkButton>
         </td></tr>
     <tr><td class="style1" align="left">
         <asp:Label ID="lbl_error" runat="server" Font-Bold="True" Font-Names="Verdana" 
             Font-Size="Small" ForeColor="Red"></asp:Label>
         &nbsp;
         <asp:Label ID="lbl_entxt" runat="server"></asp:Label>
         &nbsp;
             <asp:Label ID="lbl_text" runat="server"></asp:Label>
         </td><td class="style3" colspan="2" rowspan="3" valign="top">
             <asp:Panel ID="Panel2" runat="server" Height="652px" Width="292px" 
                 BorderColor="#666666" BorderWidth="2px" Font-Bold="True" 
                 Font-Names="Verdana" Font-Size="Small" ForeColor="#FFFF66" 
                 ScrollBars="Auto" BackImageUrl="~/images/bgimg.jpg">
                 <table width="100%" border="0"  ><tr>
                     <td align="left" valign="top" 
                         class="style21">
                     Getting the Prescription</td></tr>
                     <tr>
                         <td>
                             <asp:Literal ID="Literal1" runat="server"></asp:Literal>
                         </td>
                     </tr>
                     <tr>
                         <td>
                             &nbsp;</td>
                     </tr>
                 </table>
                 
             </asp:Panel>
         </td></tr>
     <tr><td class="style22" align="left" valign="top" id="downloadfiles" runat="server" style="font-size:large; font-family:Verdana;">
         </td></tr>
     <tr><td class="style13" align="left" id="newgrid" runat="server">
         </td></tr>
     <tr><td class="style10" align="left" >
            </td><td class="style11">&nbsp;</td><td class="style12"></td></tr>
     <tr><td class="style18"></td><td class="style19"></td><td class="style20"></td></tr>
     <tr><td class="style1">
         &nbsp;</td><td class="style3">&nbsp;</td><td class="style2">&nbsp;</td></tr>
     <tr><td class="style1">
                &nbsp;</td><td class="style3">&nbsp;</td><td class="style2">&nbsp;</td></tr>
     <tr><td class="style6">
                </td><td class="style7"></td><td class="style8"></td></tr>
     <tr><td class="style4">&nbsp;</td><td class="style1">
                &nbsp;</td><td class="style3">&nbsp;</td><td class="style2">&nbsp;</td></tr>
    </table>
</div>
    </form>
</body>
</html>
