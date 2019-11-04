<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Tista.aspx.cs" Inherits="Tista" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .style8
        {
            text-align: left;
        }
        .style9
        {
            text-align: left;
            font-size: x-large;
            color: #FFFFFF;
        }
        #form1
        {
            text-align: center;
        }
        .style10
        {
            text-align: center;
        }
        .style11
        {
            font-size: xx-large;
            color: #FF99FF;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <form id="form1" runat="server">
    <br />
    <div class="style10">
        <span class="style11">Train Time Table </span>
        <br />
    </div>
    <table align="center" style="width: 97px">
        <tr>
            <td class="style8">
                <div class="style9">
                    Train Name&nbsp;&nbsp;&nbsp; :Tista Express<br />
                    Train Number :703</div>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White"
                    BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1"
                    DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display."
                    GridLines="None" Style="text-align: center" CssClass="style4" Height="164px"
                    Width="425px">
                    <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                    <Columns>
                        <asp:BoundField DataField="station_code" HeaderText="station_code" SortExpression="station_code" />
                        <asp:BoundField DataField="station" HeaderText="station" SortExpression="station" />
                        <asp:BoundField DataField="time" HeaderText="time" SortExpression="time" />
                    </Columns>
                    <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                    <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                    <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:trainConnectionString1 %>"
                    SelectCommand="SELECT [station code] AS station_code, [station], [time] FROM [Tista]">
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
    </form>
</asp:Content>
