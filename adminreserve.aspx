<%@ Page Language="C#" MasterPageFile="~/MasterPage4.master" AutoEventWireup="true"
    CodeFile="adminreserve.aspx.cs" Inherits="adminreserve" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .style2
        {
            color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table align="center" style="height: 49px; width: 155px">
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                    BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px"
                    CellPadding="4" DataKeyNames="PNR" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display."
                    Height="226px" Width="592px">
                    <RowStyle BackColor="White" ForeColor="#003399" />
                    <Columns>
                        <asp:BoundField DataField="PNR" HeaderText="PNR" ReadOnly="True" SortExpression="PNR"
                            InsertVisible="False" />
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:BoundField DataField="TrainName" HeaderText="TrainName" SortExpression="TrainName" />
                        <asp:BoundField DataField="TrainNumber" HeaderText="TrainNumber" SortExpression="TrainNumber" />
                        <asp:BoundField DataField="From" HeaderText="From" SortExpression="From" />
                        <asp:BoundField DataField="To" HeaderText="To" SortExpression="To" />
                        <asp:BoundField DataField="ReservationDate" HeaderText="ReservationDate" SortExpression="ReservationDate" />
                        <asp:BoundField DataField="Class" HeaderText="Class" SortExpression="Class" />
                        <asp:BoundField DataField="NOP" HeaderText="NOP" SortExpression="NOP" />
                        <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" />
                        <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                    </Columns>
                    <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                    <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                    <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                    <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:trainConnectionString1 %>"
                    DeleteCommand="DELETE FROM [Ticket] WHERE [PNR] = @PNR" InsertCommand="INSERT INTO [Ticket] ([Name], [TrainName], [TrainNumber], [From], [To], [ReservationDate], [Class], [NOP], [Amount], [Status]) VALUES (@Name, @TrainName, @TrainNumber, @From, @To, @ReservationDate, @Class, @NOP, @Amount, @Status)"
                    SelectCommand="SELECT [PNR], [Name], [TrainName], [TrainNumber], [From], [To], [ReservationDate], [Class], [NOP], [Amount], [Status] FROM [Ticket] WHERE ([Status] = @Status)"
                    UpdateCommand="UPDATE [Ticket] SET [Name] = @Name, [TrainName] = @TrainName, [TrainNumber] = @TrainNumber, [From] = @From, [To] = @To, [ReservationDate] = @ReservationDate, [Class] = @Class, [NOP] = @NOP, [Amount] = @Amount, [Status] = @Status WHERE [PNR] = @PNR">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="1" Name="Status" Type="Int32" />
                    </SelectParameters>
                    <DeleteParameters>
                        <asp:Parameter Name="PNR" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="TrainName" Type="String" />
                        <asp:Parameter Name="TrainNumber" Type="String" />
                        <asp:Parameter Name="From" Type="String" />
                        <asp:Parameter Name="To" Type="String" />
                        <asp:Parameter Name="ReservationDate" Type="String" />
                        <asp:Parameter Name="Class" Type="String" />
                        <asp:Parameter Name="NOP" Type="String" />
                        <asp:Parameter Name="Amount" Type="String" />
                        <asp:Parameter Name="Status" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="TrainName" Type="String" />
                        <asp:Parameter Name="TrainNumber" Type="String" />
                        <asp:Parameter Name="From" Type="String" />
                        <asp:Parameter Name="To" Type="String" />
                        <asp:Parameter Name="ReservationDate" Type="String" />
                        <asp:Parameter Name="Class" Type="String" />
                        <asp:Parameter Name="NOP" Type="String" />
                        <asp:Parameter Name="Amount" Type="String" />
                        <asp:Parameter Name="Status" Type="Int32" />
                        <asp:Parameter Name="PNR" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
    <table align="center">
        <tr>
            <td class="style5">
                <span class="style2">Name:&nbsp;&nbsp; </span>:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td class="style4">
                <span class="style2">Amount:</span>:<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Submit" Style="text-align: center"
                    Height="35px" Width="93px" OnClick="Button1_Click" />
            </td>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Label" Style="color: #FFFFFF"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
