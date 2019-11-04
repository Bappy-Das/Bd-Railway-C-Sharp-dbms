<%@ Page Language="C#" MasterPageFile="~/MasterPage6.master" AutoEventWireup="true" CodeFile="dispay.aspx.cs" Inherits="dispay" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style5
        {
            width: 130px;
        }
        .style7
        {
            width: 125px;
        }
        .style9
        {
            font-size: xx-large;
        }
        .style10
        {
            font-size: large;
            color: #FF0000;
        }
        .style11
        {
            width: 127px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table align="center" 
        style="width: 763px; background-color: #FFFFFF; height: 127px;"><tr>
<td class="style11"></td><td class="style9">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RESERVED TICKET<br />
            <span class="style10">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            Bangladesh Railways&nbsp;&nbsp; </span></td></tr></table>
                    <table align="center" 
        
        
        style="height: 323px; width: 766px; color: #0033CC; background-color: #FFFFFF;">
        <tr>
        <td class="style7">Name:</td>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <td class="style5">
                <asp:Label ID="Label6" runat="server"></asp:Label></td><td>Train Name:</td><td>
                <asp:Label ID="Label2" runat="server"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td><td>Train Number:</td><td>
                    <asp:Label ID="Label3" runat="server"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
        </tr>
        <tr>
        <td class="style7">PNR:</td><td class="style5">
            <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></td><td>Amount:</td><td>
                <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td>Date:</td><td>
                    <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label></td>
        </tr>
        <tr><td>From:</td><td>
            <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
            </td><td>To:</td><td>
                <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label></td><td>NoOfPassenger:</td><td>
                    <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label></td><td class="style7">
            <asp:Label ID="Label8" runat="server" style="color: #FF0000; font-size: xx-large"></asp:Label></td></tr>
        </table>

</asp:Content>

