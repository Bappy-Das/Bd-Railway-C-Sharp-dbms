<%@ Page Language="C#" MasterPageFile="~/MasterPage6.master" AutoEventWireup="true"
    CodeFile="home.aspx.cs" Inherits="home" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .style2
        {
            text-align: center;
            color: #FFFF99;
            font-weight: bold;
            font-style: italic;
            font-size: xx-large;
            margin-left: 34px;
        }
        .style4
        {
            height: 163px;
        }
        .style6
        {
            text-align: right;
            font-style: normal;
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="style2">
        <div class="style6">
            Welcome
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></div><h1>
            <marquee style="width: 1420px">Welcome to Bangladesh Railway</marquee>
        </h1>
        <br />
        <table align="left" style="width: 257px; height: 198px; margin-top: 0px;">
            <tr>
                <td class="style4">
                    <asp:TreeView ID="TreeView1" runat="server" ImageSet="Inbox"
                        Style="background-color: #FFFFFF; margin-top: 5px; margin-bottom: 0px;" 
                        Height="250px" Width="235px">
                        <ParentNodeStyle Font-Bold="False" />
                        <HoverNodeStyle Font-Underline="True" />
                        <SelectedNodeStyle Font-Underline="True" HorizontalPadding="0px"
                            VerticalPadding="0px" />
                        <Nodes>
                            <asp:TreeNode Text="Reservation Status" Value="Reservation Status" NavigateUrl="~/dispay.aspx">
                                <asp:TreeNode Text="Display Ticket" Value="Display Ticket" 
                                    NavigateUrl="~/dispay.aspx">
                                </asp:TreeNode>
                            </asp:TreeNode>
                        </Nodes>
                        <NodeStyle Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" HorizontalPadding="5px"
                            NodeSpacing="0px" VerticalPadding="0px" />
                    </asp:TreeView>
                </td>
            </tr>
        </table>
        <div style="text-align: left">
        </div>
        <div style="width: 1166px">
            <img src="photo/2.jpg" style="border: thick inset #FF0000; height: 313px; width: 807px" /></div>
        <br />
        <br />
        <br />
        <br />
        <br />
    </div>
</asp:Content>
