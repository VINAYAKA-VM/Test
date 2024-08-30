<%@ Page Language="C#" AutoEventWireup="true" CodeFile="matching.aspx.cs" Inherits="matching" %>

<%@ Register src="fuzzyheader.ascx" tagname="fuzzyheader" tagprefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Fuzzy Keyword Search over Encrypted Data in Cloud Computing</title>
    <style type="text/css">
        .style1
        {
            height: 89px;
            width: 21px;
        }
        .style2
        {
            height: 125px;
            width: 142px;
        }
        .style3
        {
            height: 146px;
            width: 156px;
        }
        .style4
        {
            height: 166px;
            width: 230px;
        }
        .style5
        {
            height: 7px;
            width: 142px;
        }
        .style6
        {
            height: 34px;
            width: 21px;
        }
        .style7
        {
            height: 30px;
            width: 156px;
        }
        .style8
        {
            height: 25px;
            width: 142px;
        }
        .style11
        {
        }
        .style13
        {
            height: 7px;
            width: 156px;
        }
        .style16
        {
            height: 7px;
            width: 21px;
        }
        .style17
        {
            width: 21px;
        }
        .style19
        {
            height: 618px;
            width: 21px;
        }
        .style21
        {
            font-size: x-large;
            font-style: italic;
        }
        .style22
        {
            height: 26px;
            width: 21px;
        }
        </style>
</head>
<body bgcolor="Black">
    <form id="form1" runat="server">
    <div>
    <table align="center" width="950" bgcolor="#F2F2F2" >
    <tr><td colspan="4">
        BASAVESVARA MEDICAL COLLEGE AND HOSPITAL&nbsp;</td></tr>
     <tr><td align="left" class="style4" rowspan="8" valign="top">
         <asp:Image ID="Image1" runat="server" ImageUrl="~/images/searchmatch.jpg" 
             Height="610px" Width="207px" />
         </td><td class="style16" align="left">
             <asp:TextBox 
    ID="txt_keyword" CssClass="text1" runat="server" Width="371px"></asp:TextBox>
         </td><td class="style13">
             <asp:ImageButton ID="ImageButton2" runat="server" Height="42px" 
                 ImageUrl="~/images/Search-icon.png" Width="47px" />
         </td><td class="style5" align="right" valign="top">
        <asp:LinkButton ID="LinkButton1" runat="server" Font-Names="Verdana" 
            Font-Size="Small" ForeColor="#CC3300" PostBackUrl="~/Default.aspx">Back</asp:LinkButton>
         </td></tr>
     <tr><td align="center" class="style17" valign="top"><asp:Label ID="lbl_entxt" runat="server"></asp:Label><asp:Label ID="lbl_text" runat="server"></asp:Label></td><td class="style11" colspan="2" rowspan="4" valign="top">
             <asp:Panel ID="Panel2" runat="server" Height="652px" Width="306px" 
                 BorderColor="#666666" BorderWidth="2px" Font-Bold="True" 
                 Font-Names="Verdana" Font-Size="Small" ForeColor="#FFFF66" 
                 ScrollBars="Auto" BackImageUrl="~/images/bgimg.jpg">
                 <table width="100%" border="0" ><tr>
                     <td align="left" valign="top" 
                         class="style21">
                         Downloading Prescription</td></tr>
                     <tr>
                         <td>
                             <asp:Literal ID="Literal1" runat="server" ></asp:Literal>
                         </td>
                     </tr>
                     <tr>
                         <td>
                             &nbsp;</td>
                     </tr>
                 </table>
                 
             </asp:Panel>
         </td></tr>
     <tr><td class="style22"  runat="server" align="left" valign="top" >
            <asp:Label ID="Label1" runat="server" Text="Did you mean:" Font-Bold="True" 
                Font-Italic="True" Font-Names="Verdana" Font-Size="Large" 
                ForeColor="#6600FF" style="height: 16px" Width="184px" Height="35px"></asp:Label>
            </td></tr>
     <tr><td class="style17"  runat="server" align="left" valign="top" id="downloadfiles1" style="font-size:large; font-family:Verdana;"></td></tr>
     <tr><td class="style19"></td></tr>
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
