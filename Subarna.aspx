<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Subarna.aspx.cs" Inherits="Subarna" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style5
        {
            width: 137px;
            }
        .style6
        {
            font-size: xx-large;
            text-align: center;
            color: #FF99FF;
        }
        .style7
        {
            font-size: x-large;
            color: #FFFFFF;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
<div class="style6">
    Train Time Table
</div>
  
    <form id="form1" runat="server">
<table align="center" style="height: 55px">
<tr>
<td class="style5">
   
  <div style="width: 493px"> <span class="style7">Train Name&nbsp;&nbsp;&nbsp;&nbsp; :Parasuram<br />
      Train Number :16639
   </div>
    </span>
   
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
        CellPadding="3" DataKeyNames="station_code" DataSourceID="SqlDataSource1" 
        EmptyDataText="There are no data records to display." Width="621px" 
        Height="215px">
        <RowStyle ForeColor="#000066" />
        <Columns>
            <asp:BoundField DataField="station_code" HeaderText="station_code" 
                ReadOnly="True" SortExpression="station_code" />
            <asp:BoundField DataField="station" HeaderText="station" 
                SortExpression="station" />
            <asp:BoundField DataField="time" HeaderText="time" SortExpression="time" />
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:trainConnectionString1 %>" 
        
        SelectCommand="SELECT [station code] AS station_code, [station], [time] FROM [Subarna]">
    </asp:SqlDataSource>
</td></tr></table>
    </form>
</asp:Content>

