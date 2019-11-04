<%@ Page Language="C#" MasterPageFile="~/MasterPage6.master" AutoEventWireup="true"
    CodeFile="cancel.aspx.cs" Inherits="cancel" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .style4
        {
            width: 465px;
            color: #00FFFF;
            font-size: xx-large;
        }
        .style5
        {
            width: 109px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table align="center" style="width: 379px">
        <tr>
            <td class="style4">
                Ticket Cancellation
            </td>
        </tr>
    </table>
    <table align="center" style="width: 543px; height: 226px; color: #FFCCFF; background-color: #000000;">
        <tr>
            <td>
                ENTER PNR:
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td class="style5">
                ENTER NAME:
            </td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1"
                    DataTextField="name" DataValueField="name">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:trainConnectionString1 %>"
                    SelectCommand="SELECT [Name] FROM [Ticket]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>
                ENTER DATE:
            </td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
            <td class="style5">
                <asp:Button ID="Button1" runat="server" Text="CANCEL" Width="86px" OnClick="Button1_Click" />
            </td>
            <td>
                <asp:Button ID="Button2" runat="server" Text="Clear" Width="83px" OnClick="Button2_Click" />
                <asp:Label ID="Label1" runat="server"></asp:Label>
                <asp:Label ID="Label2" runat="server"></asp:Label>
                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
