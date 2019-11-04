<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="login.aspx.cs" Inherits="login" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .style2
        {
            font-size: medium;
        }
        .style3
        {
            font-size: large;
            color: #FF66CC;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="background-color: #FFFFFF">
        <form id="form1" runat="server" style="background-color: #FFFFFF">
        <p style="background-color: #FFFFFF">
            <br />
            <table>
                <tr>
                    <td>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="style2">&nbsp;</span><span
                            class="style3" style="border: thick outset #FF00FF; background-color: #0066FF;">USER
                            LOGIN HERE</span>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Login ID="Login1" runat="server" Style="font-weight: 700; color: #FF3300" Height="250px"
                            Width="330px" CreateUserText="New User SighUp Here" CreateUserUrl="~/Create.aspx"
                            DestinationPageUrl="~/home.aspx" BorderColor="Red" BorderPadding="5" BorderStyle="Outset"
                            BorderWidth="10px" BackColor="#FF99FF" LoginButtonText="SIGN IN" TitleText="USER SIGN IN HERE">
                        </asp:Login>
                    </td>
                    <td>
                    </td>
                    <td>
                    </td>
                    <td>
                        &nbsp;<img src="photo/2.jpg" style="border: thick double #FF0000; height: 262px;
                            width: 355px" border="5" />
                    </td>
                    <td>
                        <img src="photo/3.jpg" style="border: thick double #FF0000; height: 262px; width: 355px"
                            border="5" />
                    </td>
                    <td>
                        <img src="photo/4.jpg" style="border: thick double #FF0000; height: 262px; width: 355px"
                            border="5" />
                    </td>
                </tr>
            </table>
        </p>
        </form>
    </div>
</asp:Content>
