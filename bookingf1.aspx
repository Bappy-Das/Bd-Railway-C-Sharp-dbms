<%@ Page Language="C#" MasterPageFile="~/MasterPage6.master" AutoEventWireup="true"
    CodeFile="bookingf1.aspx.cs" Inherits="bookingf1" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .style3
        {
            color: #FF66FF;
            font-style: italic;
            font-size: large;
            height: 27px;
            text-align: center;
        }
        .style4
        {
            font-size: x-large;
        }
        .style5
        {
            text-decoration: underline;
        }
        .style6
        {
            font-size: large;
            color: #FF3399;
        }
        .style7
        {
            color: #FF33CC;
        }
        .style8
        {
            color: #FF3399;
        }
        .style18
        {
            height: 87px;
            width: 389px;
        }
        .style22
        {
            height: 66px;
            width: 389px;
        }
        .style25
        {
            height: 34px;
            width: 389px;
            color: #FF3399;
        }
        .style26
        {
            width: 385px;
            height: 34px;
        }
        .style27
        {
            height: 119px;
        }
        .style28
        {
            width: 389px;
            height: 119px;
        }
        .style29
        {
            width: 389px;
            height: 51px;
        }
        .style30
        {
            color: #FFFFFF;
            font-size: xx-large;
        }
        .style31
        {
            width: 385px;
            height: 56px;
        }
        .style33
        {
            width: 385px;
            height: 119px;
        }
        .style34
        {
            width: 385px;
            height: 51px;
        }
        .style35
        {
            height: 87px;
            width: 385px;
        }
        .style36
        {
            width: 389px;
            height: 57px;
        }
        .style37
        {
            width: 385px;
            height: 57px;
        }
        .style38
        {
            color: #FF00FF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <p class="style3">
        Welcome Bangladesh Railway&nbsp;&nbsp; <span class="style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span><span class="style30">&nbsp; &nbsp; <span class="style5">Ticket&nbsp;&nbsp;&nbsp;&nbsp;
            Reservation Form</span></span></p>
    <table align="center" style="border-style: inset; border-width: thick; width: 1063px;
        height: 509px; font-weight: 700; margin-right: 0px; color: #0099CC; background-color: #FFFFFF;">
        <tr>
            <td class="style22">
                <span class="style8">Train Number</span>:<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2"
                    ErrorMessage="RequiredFieldValidator" Style="font-size: small"></asp:RequiredFieldValidator>
            </td>
            <td class="style31">
                <span class="style6">Train Name&nbsp;&nbsp;&nbsp; </span>:<asp:TextBox ID="TextBox1"
                    runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1"
                    ErrorMessage="RequiredFieldValidator" Style="font-size: small"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style36">
                <span class="style6">Class&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>:<asp:DropDownList
                    ID="DropDownList1" runat="server">
                    <asp:ListItem>Choose one class</asp:ListItem>
                    <asp:ListItem>F_C</asp:ListItem>
                    <asp:ListItem>AC</asp:ListItem>
                    <asp:ListItem>SChair</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="DropDownList1"
                    ErrorMessage="RequiredFieldValidator" Style="font-size: small"></asp:RequiredFieldValidator>
            </td>
            <td class="style37">
                <span class="style7">No Of Passenge</span><span class="style38">r</span>:<asp:TextBox
                    ID="TextBox3" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox3"
                    ErrorMessage="RequiredFieldValidator" Style="font-size: small"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style28">
                <span class="style8">Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </span>:<asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox7"
                    ErrorMessage="RequiredFieldValidator" Style="font-size: small"></asp:RequiredFieldValidator>
            </td>
            <td class="style33">
                <span class="style8">Date&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp; </span>:<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" Height="21px" OnClick="Button1_Click1" Style="margin-left: 17px"
                    Text="get calender" Width="83px" />
            </td>
            <td class="style27">
                <asp:Calendar ID="Calendar1" runat="server" Visible="False" BackColor="White" BorderColor="#3366CC"
                    BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana"
                    Font-Size="8pt" ForeColor="#003399" Height="92px" OnSelectionChanged="Calendar1_SelectionChanged"
                    Width="16px">
                    <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                    <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                    <WeekendDayStyle BackColor="#CCCCFF" />
                    <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                    <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                    <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True"
                        Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                </asp:Calendar>
            </td>
        </tr>
        <tr>
            <td class="style29">
                <span class="style8">From</span>:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox4"
                    ErrorMessage="RequiredFieldValidator" Style="font-size: small"></asp:RequiredFieldValidator>
            </td>
            <td class="style34">
                <span class="style8">To&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </span>:<asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox6"
                    ErrorMessage="RequiredFieldValidator" Style="font-size: small"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style25">
                Enter YourCreditCard
                <br />
                Number:&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox8" runat="server" Style="margin-left: 18px" OnTextChanged="TextBox8_TextChanged"
                    TextMode="Password"></asp:TextBox>
            </td>
            <td class="style26">
            </td>
        </tr>
        <tr>
            <td class="style18">
                <asp:Label ID="Label1" runat="server" Style="color: #FF3399">Label1</asp:Label>
            </td>
            <td class="style35">
                <asp:Button ID="Button2" runat="server" Text="RESERVE" Width="71px" OnClick="Button2_Click" />
                <asp:Button ID="Button3" runat="server" Text="CLEAR" Style="margin-left: 35px" Width="77px" />
            </td>
        </tr>
    </table>
</asp:Content>
