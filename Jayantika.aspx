<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Jayantika.aspx.cs" Inherits="Jayantika" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .style5
        {
            width: 268px;
            height: 46px;
        }
        .style6
        {
            font-weight: bold;
            font-size: xx-large;
            text-align: center;
            color: #FF66FF;
        }
        .style7
        {
            font-size: large;
            font-weight: bold;
            color: #FFFFCC;
        }
        .style8
        {
            font-size: large;
            font-weight: bold;
            color: #FFFFCC;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <form id="form1" runat="server">
    <br />
    <div class="style6">
        Train Time Table
        <br />
    </div>
    <table align="center">
        <tr>
            <td class="style5">
                <span class="style7">Train Name:Jaya</span><span class="style8">ntikaExpress</span><span
                    class="style7"><br />
                    Number:705</span><asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
                        BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px"
                        CellPadding="4" DataKeyNames="station_code" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display."
                        Width="296px">
                        <RowStyle BackColor="White" ForeColor="#003399" />
                        <Columns>
                            <asp:BoundField DataField="station_code" HeaderText="station_code" ReadOnly="True"
                                SortExpression="station_code" />
                            <asp:BoundField DataField="station" HeaderText="station" SortExpression="station" />
                            <asp:BoundField DataField="time" HeaderText="time" SortExpression="time" />
                        </Columns>
                        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                    </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:trainConnectionString1 %>"
                    SelectCommand="SELECT [station code] AS station_code, station, time FROM Jayantika">
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
    </form>
</asp:Content>
