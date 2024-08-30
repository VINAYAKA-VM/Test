<%@ Page Language="C#" AutoEventWireup="true" CodeFile="dataowner.aspx.cs" Inherits="dataowner" %>

<%@ Register src="fuzzyheader.ascx" tagname="fuzzyheader" tagprefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">



<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Fuzzy Keyword Search over Encrypted Data in Cloud Computing</title>
        <link rel="Stylesheet" href="css/style.css" type="text/css"/>

    <style type="text/css">
        .style3
        {
            height: 545px;
            }
        .style4
        {
        }
        .style8
        {
        }
        .style9
        {
            width: 398px;
        }
        .style11
        {
            height: 439px;
        }
        .style12
        {
            width: 398px;
            height: 14px;
        }
        .style15
        {
            height: 14px;
        }
        .style16
        {
            height: 7px;
        }
        .style20
        {
            height: 146px;
        }
        .style21
        {
            color: #FFFF66;
            font-size: x-large;
            font-style: italic;
        }
        .style22
        {
            width: 642px;
        }
        .style23
        {
            width: 398px;
            height: 23px;
        }
        .style24
        {
            height: 23px;
        }
        .style26
        {
            width: 48px;
        }
        .style27
        {
            height: 14px;
            width: 48px;
        }
        .style28
        {
            height: 7px;
            width: 48px;
        }
        .style29
        {
            height: 146px;
            width: 48px;
        }
        .style30
        {
            height: 439px;
            width: 48px;
        }
        .style31
        {
            height: 545px;
            width: 48px;
        }
        .style32
        {
            width: 31px;
        }
        .style33
        {
            height: 23px;
            width: 31px;
        }
        .style34
        {
            height: 14px;
            width: 31px;
        }
        .style35
        {
            width: 268435520px;
        }
        .style36
        {
            height: 23px;
            width: 268435520px;
        }
        .style37
        {
            height: 14px;
            width: 268435520px;
        }
        </style>
</head>
<body bgcolor="Black" >
    <form id="form1" runat="server">
    <div><table align="center" width="950" bgcolor="#F2F2F2" >
    <tr><td colspan="6">
        <uc1:fuzzyheader ID="fuzzyheader1" runat="server" />
        </td></tr>
    <tr><td class="style26" rowspan="5" valign="top">
           <asp:Image ID="Image3" runat="server" ImageUrl="~/images/dataowner.jpg" />
           </td><td class="style4">
            &nbsp;</td><td class="style4" colspan="3">
            <asp:Image ID="Image2" runat="server" ImageUrl="~/images/upload.jpg" />
        </td><td align="left" valign="top" class="style35">
        <asp:LinkButton ID="LinkButton2" runat="server" Font-Names="Verdana" 
            Font-Size="Small" ForeColor="#CC3300" PostBackUrl="~/login.aspx">Details</asp:LinkButton>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton1" runat="server" Font-Names="Verdana" 
            Font-Size="Small" ForeColor="#CC3300" PostBackUrl="~/Default.aspx">Log Out</asp:LinkButton>
                    </td></tr>
    <tr><td class="style23">
        &nbsp;</td><td class="style23">
        <asp:Label ID="Label4" runat="server" Font-Names="Verdana" Font-Size="Small" 
            Text="File Id:" Width="150px"></asp:Label>
        </td><td colspan="2" class="style24">
                    <asp:Label ID="lbl_fileid" runat="server"></asp:Label>
                    </td><td class="style36"></td></tr>
    <tr><td class="style9">
        &nbsp;</td><td class="style9">
        <asp:Label ID="Label2" runat="server" Font-Names="Verdana" Font-Size="Small" 
            Text="Enter file name:" Width="184px"></asp:Label>
        </td><td colspan="2" class="style8">
            <asp:TextBox ID="txt_fname"  runat="server"></asp:TextBox>
        &nbsp;</td><td class="style35">&nbsp;</td></tr>
    <tr><td class="style9">
        &nbsp;</td><td class="style9">
        <asp:Label ID="Label3" runat="server" Font-Names="Verdana" Font-Size="Small" 
            Text="Select a file to save:" Width="192px"></asp:Label>
        </td><td colspan="2">
            <asp:FileUpload ID="FileUpload1"   runat="server" />
        </td><td class="style35">&nbsp;</td></tr>
    <tr><td class="style9">&nbsp;</td><td class="style9">&nbsp;</td><td colspan="2">
        <asp:Button 
        ID="btnsubmit" CssClass="button2" runat="server" Text="Submit" 
            onclick="btnsubmit_Click1"  />
        &nbsp;&nbsp;&nbsp;
        <asp:Button 
        ID="btn_clear" CssClass="button2" runat="server" Text="Clear" onclick="btn_clear_Click" 
             />
        </td><td class="style35">&nbsp;</td></tr>
    <tr><td class="style27">
                    <asp:Label ID="lbl_filemsg" runat="server" Font-Bold="True" Font-Names="Verdana" 
                        Font-Size="Small" ForeColor="#CC3300"></asp:Label>
                    </td><td class="style12">
                    &nbsp;</td><td class="style12">
                    <asp:Label ID="lbl_encrypt" runat="server" Font-Bold="True" Font-Names="Verdana" 
                        Font-Size="Small" ForeColor="#CC3300"></asp:Label>
                    </td><td colspan="2" class="style15">
                    <asp:Label ID="lbl_msg" runat="server" Font-Bold="True" Font-Names="Verdana" 
                        Font-Size="Small" ForeColor="#CC3300"></asp:Label>
                    &nbsp;
                    </td><td class="style37"></td></tr>
    <tr><td class="style16" colspan="6"><table width="100%" border="0"><tr><td class="style22" valign="top">
          <asp:GridView ID="gv_listoffiles" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" ForeColor="#333333" Width="641px" 
            onrowdeleting="gv_listoffiles_RowDeleting">
            <RowStyle BackColor="#E3EAEB" />
            <Columns>
                <asp:BoundField DataField="fileid" HeaderText="File ID" ReadOnly="True" />
                <asp:BoundField DataField="encryptedtext" HeaderText="Encrypted Text" />
                <asp:CommandField HeaderText="Delete Files" ShowDeleteButton="True" />
            </Columns>
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <HeaderStyle BackColor="#575757" Font-Bold="True" ForeColor="White" />
            <EditRowStyle BackColor="#7C6F57" />
            <AlternatingRowStyle BackColor="White" />
        </asp:GridView>
             
         </td><td valign="top" align="left">
        <asp:Panel ID="Panel2" runat="server" Height="652px" Width="292px" 
                BorderColor="#666666" BorderWidth="2px" Font-Bold="True" 
                 Font-Names="Verdana" Font-Size="Small" ForeColor="#FFFF84" 
                 ScrollBars="Auto" BackImageUrl="~/images/bgimg.jpg">
                 <table width="100%" border="0" ><tr>
                     <td align="left" valign="top"  
                         class="style21">
                         Encryption Process</td></tr>
                     <tr>
                         <td align="left">
                             <asp:Literal ID="Literal1" runat="server" ></asp:Literal>
                         </td>
                     </tr>
                     <tr>
                         <td>
                             &nbsp;</td>
                     </tr>
                 </table>
                 
             </asp:Panel>
        </td></tr></table></td></tr>
    <tr><td class="style28">
        &nbsp;</td><td class="style16">
            &nbsp;</td><td class="style16" colspan="4">
    </td></tr>
    <tr><td class="style29">
        &nbsp;</td><td class="style20">
            &nbsp;</td><td class="style20" colspan="4">
            &nbsp;</td></tr>
    <tr><td class="style30">
        &nbsp;</td><td class="style11">
            &nbsp;</td><td class="style11" colspan="4">
        </td></tr>
    <tr><td class="style31" align="center" valign="top">
        &nbsp;</td><td class="style3" align="center" valign="top">
            &nbsp;</td><td class="style3" align="center" colspan="2" valign="top">
            &nbsp;</td><td class="style3" align="center" colspan="2" valign="top">
            &nbsp;</td></tr>
    <tr><td class="style26">&nbsp;</td><td class="style9">&nbsp;</td><td class="style9">&nbsp;</td><td colspan="2">
        &nbsp;</td>
        <td class="style35">&nbsp;</td></tr></table>
    
    </div>
    </form>
</body>
</html>
