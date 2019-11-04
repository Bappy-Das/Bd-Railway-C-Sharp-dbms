<%@ Page Language="C#" MasterPageFile="~/MasterPage4.master" AutoEventWireup="true"
    CodeFile="Addtrain.aspx.cs" Inherits="Addtrain" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .style2
        {
            font-size: xx-large;
            text-decoration: underline;
        }
        .style3
        {
            width: 247px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table align="center" style="color: #9933FF; width: 510px; height: 58px; background-color: #FF99FF"
        border="10" frame="border">
        <tr>
            <td class="style2" style="text-align: center">
                Add New Train
            </td>
        </tr>
    </table>
    <table align="center" style="color: #6600CC; background-color: #FFCCFF; width: 507px;
        font-size: large;" bgcolor="#FF33CC" border="10" frame="border">
        <tr>
            <td>
                Train Name:
            </td>
            <td class="style3">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Train Name"
                    Style="font-size: small" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                Train Number:
            </td>
            <td class="style3">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Train Number"
                    Style="font-size: small" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                From:
            </td>
            <td class="style3">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Fill the field"
                    Style="font-size: small" ControlToValidate="TextBox4"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                To
            </td>
            <td class="style3">
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Fill The field"
                    Style="font-size: small" ControlToValidate="TextBox5"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                Date:
            </td>
            <td class="style3">
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="fill the field"
                    Style="font-size: small" ControlToValidate="TextBox6"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                Time:
            </td>
            <td class="style3">
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Enter the time"
                    Style="font-size: small" ControlToValidate="TextBox7"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                FC:
            </td>
            <td class="style3">
                <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="fill the field"
                    Style="font-size: small" ControlToValidate="TextBox8"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                AC3:
            </td>
            <td class="style3">
                <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Fill the field"
                    Style="font-size: small" ControlToValidate="TextBox9"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                AC2:
            </td>
            <td class="style3">
                <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Fill the field"
                    Style="font-size: small" ControlToValidate="TextBox10"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                Sleeper:
            </td>
            <td class="style3">
                <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="fill the field"
                    Style="font-size: small" ControlToValidate="TextBox11"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Style="font-size: x-large; color: #000099"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
            </td>
            <td class="style3">
                <asp:Button ID="Button1" runat="server" Text="ADD" Width="120px" OnClick="Button1_Click" />
            </td>
            <td>
                <asp:Button ID="Button2" runat="server" Text="CLEAR" OnClick="Button2_Click" Style="margin-left: 0px"
                    Width="75px" />
            </td>
        </tr>
    </table>
</asp:Content>
