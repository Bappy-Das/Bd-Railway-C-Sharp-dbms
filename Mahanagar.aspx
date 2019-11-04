<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Mahanagar.aspx.cs" Inherits="Mahanagar" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .style5
        {
            font-size: x-large;
            color: #FFFFFF;
            font-weight: bold;
        }
        .style6
        {
            text-align: center;
            font-weight: bold;
            font-size: xx-large;
            color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <form id="form1" runat="server">
    <br />
    <div class="style6">
        Train Time Table
    </div>
    <table align="center" style="width: 63px">
        <tr>
            <td>
                <span class="style5">Train Name:Mahanagar Provati<br />
                    Train Number:702 </span>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White"
                    BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1"
                    DataKeyNames="station_code" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display."
                    GridLines="None" Width="393px">
                    <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                    <Columns>
                        <asp:BoundField DataField="station_code" HeaderText="station_code" ReadOnly="True"
                            SortExpression="station_code" />
                        <asp:BoundField DataField="time" HeaderText="time" SortExpression="time" />
                        <asp:BoundField DataField="station" HeaderText="station" SortExpression="station" />
                    </Columns>
                    <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                    <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                    <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:trainConnectionString1 %>"
                    SelectCommand="SELECT [station code] AS station_code, [time], [station] FROM [Mohanagar]">
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
    </form>
</asp:Content>
