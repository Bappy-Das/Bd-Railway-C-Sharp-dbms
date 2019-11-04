<%@ Page Language="C#" MasterPageFile="~/MasterPage4.master" AutoEventWireup="true" CodeFile="delete.aspx.cs" Inherits="delete" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            font-weight: bold;
        }
        .style3
        {
            font-weight: bold;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<p style="color: #FFFFFF" class="style3">
        Add Train Details</p>
<p style="color: #FFFFFF" class="style2">
        &nbsp;</p>
<p style="color: #FFFFFF; text-align: center;" class="style2">
        Train Name:<asp:TextBox ID="TextBox1" runat="server" style="margin-left: 41px"></asp:TextBox>
&nbsp;</p>
    <p style="color: #FFFFFF; text-align: center;" class="style2">
        Train Number:<asp:TextBox ID="TextBox2" runat="server" 
            style="margin-left: 24px"></asp:TextBox>
&nbsp;</p>
    <p style="color: #FFFFFF; text-align: center;" class="style2">
        Station Code:<asp:TextBox ID="TextBox5" runat="server" 
            style="margin-left: 27px"></asp:TextBox>
    </p>
    <p style="color: #FFFFFF; text-align: center;" class="style2">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" ForeColor="#FF6699"></asp:Label>
    </p>
    <p style="color: #FFFFFF; text-align: center;" class="style2">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button 
            ID="Button1" runat="server" onclick="Button1_Click" 
            style="margin-left: 23px" Text="DELETE" Width="89px" />
    &nbsp;<asp:Button ID="Clear" runat="server" onclick="Clear_Click" Text="CLEAR" />
    </p>
    <p style="color: #FFFFFF">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        &nbsp;</p>

</asp:Content>

