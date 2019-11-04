<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Create.aspx.cs" Inherits="Create" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .style3
        {
            font-size: x-large;
            color: #00FFCC;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <form id="form1" runat="server">
    <p style="background-color: #C0C0C0; background-image: url('');">
        BAPPY<br style="font-weight: 700; font-style: italic; color: #00FFCC" />
    </p>
    <p style="background-color: #C0C0C0; background-image: url('');">
        <table>
            <tr>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td style="text-align: center">
                    <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" Style="color: #FF3399;
                        font-weight: 700; font-size: medium" ContinueDestinationPageUrl="~/login.aspx"
                        Height="428px" Width="506px">
                        <WizardSteps>
                            <asp:CreateUserWizardStep runat="server" />
                            <asp:CompleteWizardStep runat="server" />
                        </WizardSteps>
                    </asp:CreateUserWizard>
                </td>
            </tr>
        </table>
    </p>
    </form>
</asp:Content>
