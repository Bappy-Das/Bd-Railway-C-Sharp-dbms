<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Parabaat.aspx.cs" Inherits="Parabaat" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .style5
        {
            font-size: xx-large;
            text-align: center;
            color: #FF99FF;
        }
        .style6
        {
            font-size: x-large;
            font-weight: bold;
            color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <br />
    <div class="style5">
        Train Time Table
    </div>
    <form id="form1" runat="server">
    <table align="center" style="height: 56px; width: 403px">
        <tr>
            <td>
                <span class="style6">Train Name:Parabaat Express<br />
                    Train Number:701</span>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4"
                    DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display."
                    ForeColor="#333333" GridLines="None" Width="327px">
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <Columns>
                        <asp:BoundField DataField="station_code" HeaderText="station_code" SortExpression="station_code" />
                        <asp:BoundField DataField="station" HeaderText="station" SortExpression="station" />
                        <asp:BoundField DataField="time" HeaderText="time" SortExpression="time" />
                    </Columns>
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="#999999" />
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:trainConnectionString1 %>" 
                    SelectCommand="SELECT [station code] AS station_code, station, time FROM Parabaat">
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
    </form>
</asp:Content>
