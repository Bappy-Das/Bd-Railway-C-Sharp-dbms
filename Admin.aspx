<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style5
        {
            color: #FFFFFF;
            font-weight: bold;
            font-size: large;
        }
        #form1
        {
            text-align: left;
        }
        .style7
        {
            color: #0000FF;
            font-weight: bold;
            font-size: xx-large;
            text-decoration: underline;
            font-family: Andalus;
        }
        .style8
        {
            color: #FF0000;
        }
        .style9
        {
            color: #FF0000;
            font-weight: bold;
        }
        .style10
        {
            font-size: large;
            font-weight: bold;
            color: #FF0000;
        }
        .style11
        {
            font-size: large;
        }
        .style12
        {
            color: #FFFFFF;
            font-weight: bold;
            font-size: xx-large;
        }
        .style13
        {
            color: #FFCCFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server" 
    style="background-color: #0099CC; height: 350px;">
    &nbsp;<span class="style5"><div 
        
        
        
        style="border: thick inset #FF0000; padding: inherit; margin: 0px auto auto auto; height: 331px; width: 422px; background-image: none; background-color: #FFFFFF; color: #FFFFFF;"><br />
    <br />
        &nbsp;</span><span class="style12">&nbsp;&nbsp;&nbsp;&nbsp;
    </span>
        <span class="style7">ADMIN LOG IN HERE</span><span class="style10"><br />
    </span>
    <br class="style8" />
    <span class="style8">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
        <span class="style10">&nbsp;USER NAME</span><span class="style8">:
        <span class="style13">
    <asp:TextBox ID="TextBox1" runat="server" Width="147px"></asp:TextBox>
        </span>
    <br />
    <br />
        </span><span class="style13"><span class="style8">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="style11">&nbsp;&nbsp; </span>
        </span></span>
    <span class="style9"><span class="style11">PASSWORD </span></span>
        <span class="style8">&nbsp; <span class="style13">
    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Width="143px"></asp:TextBox>
        </span>
    <br />
    <br />
        </span><span class="style13"><span class="style8">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="LOG IN" 
        Width="113px" BackColor="Black" BorderColor="#FF0066" BorderStyle="Inset" 
        BorderWidth="5px" ForeColor="#FFFFCC" Height="39px" 
            style="text-align: center; margin-left: 298px" />
    <br />
    <br />
    <br />
    <br /></div>
    </form>
</asp:Content>

