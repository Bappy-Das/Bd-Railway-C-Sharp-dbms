<%@ Page Language="C#" MasterPageFile="~/MasterPage6.master" AutoEventWireup="true"
    CodeFile="reservation.aspx.cs" Inherits="reservation" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .style1
        {
            color: #FFCCFF;
            font-weight: bold;
            text-align: center;
            font-size: xx-large;
            text-decoration: underline;
        }
        .style2
        {
            text-align: center;
        }
        .style5
        {
            width: 164px;
        }
        .style6
        {
            width: 36px;
        }
        .style7
        {
            width: 144px;
            font-weight: bold;
            font-size: x-large;
            color: black;
        }
        .style8
        {
            width: 100px;
            color: black;
            font-weight: bold;
            font-size: x-large;
        }
        .style9
        {
            width: 307px;
        }
        .style10
        {
            width: 217px;
            font-size: large;
            color:black;
        }
        .style11
        {
            width: 183px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table align="center" style="height: 49px; width: 948px; margin-right: 6px;">
        <tr>
            <td class="style7">
                From
            </td>
            <td class="style6">
                <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1"
                    DataTextField="From" DataValueField="From" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged"
                    Style="z-index: 1; left: 311px; top: 385px; position: absolute; width: 158px;
                    right: 623px;">
                </asp:DropDownList>
            </td>
            <td class="style8">
                To
            </td>
            <td class="style9">
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2"
                    DataTextField="To" DataValueField="To" Style="z-index: 1; left: 580px; top: 385px;
                    position: absolute; width: 164px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:trainConnectionString1 %>"
                    SelectCommand="SELECT [To] FROM [Booking]"></asp:SqlDataSource>
            </td>
            <td class="style5">
                <asp:Button ID="Button1" runat="server" Text="SEARCH" OnClick="Button1_Click" />
                <asp:Button ID="Button2" runat="server" Text="CLEAR" />
            </td>
        </tr>
    </table>
    <br />
    <br />
    aa<table align="center" style="height: 95px; width: 506px">
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4"
                    DataSourceID="SqlDataSource3" EmptyDataText="There are no data records to display."
                    ForeColor="#333333" GridLines="None" Visible="False">
                    <RowStyle BackColor="#E3EAEB" />
                    <Columns>
                        <asp:BoundField DataField="Trainnumber" HeaderText="Trainnumber" SortExpression="Trainnumber" />
                        <asp:BoundField DataField="Trainname" HeaderText="Trainname" SortExpression="Trainname" />
                        <asp:BoundField DataField="From" HeaderText="From" SortExpression="From" />
                        <asp:BoundField DataField="To" HeaderText="To" SortExpression="To" />
                        <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                        <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" />
                    </Columns>
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="#7C6F57" />
                    <AlternatingRowStyle BackColor="White" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:trainConnectionString1 %>"
                    SelectCommand="SELECT [Trainnumber], [Trainname], [From], [To], [Date], [Time] FROM [Booking] WHERE (([From] = @From) AND ([To] = @To))">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList2" Name="From" PropertyName="SelectedValue"
                            Type="String" />
                        <asp:ControlParameter ControlID="DropDownList1" Name="To" PropertyName="SelectedValue"
                            Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:trainConnectionString1 %>"
                    ProviderName="<%$ ConnectionStrings:trainConnectionString1.ProviderName %>" SelectCommand="SELECT [From] FROM [Booking]">
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
    <table align="center" style="height: 41px; width: 520px; font-weight: 700; color: #FF3300">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
            <td class="style10">
                Enter the train number
            </td>
            <td class="style11">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:Button ID="Button3" runat="server" Text="GO" OnClick="Button3_Click" BackColor="Red"
                    BorderColor="White" BorderStyle="Inset" BorderWidth="5px" Style="color: #FFFFFF" />
            </td>
        </tr>
    </table>
</asp:Content>
