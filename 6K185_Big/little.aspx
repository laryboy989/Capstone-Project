<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="little.aspx.vb" Inherits="little" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 228px;
        }
        .auto-style2 {
            height: 26px;
        }
        .auto-style3 {
            width: 228px;
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">

<p>If you want to become a Little in the future, Please fill in the following form first. We would love to pair you up with a mentor in the near future !</p>
   
        <asp:CreateUserWizard ID="CreateUserWizard1" runat="server">
            <WizardSteps>
                <asp:CreateUserWizardStep runat="server" >
                    </asp:CreateUserWizardStep>

                <asp:WizardStep ID="UserProfile" runat="server" Steptype="Step" Title="UserProfile">
                
                <table>
                    <tr>
                        <td align="right" class="auto-style2">First Name:</td><td align="left" class="auto-style3"><asp:Textbox ID="tb_FirstName" runat="server" colunmns="50"></asp:Textbox></td>
                    </tr>

                     <tr>
                        <td align="right" class="auto-style2">Last Name:</td><td align="left" class="auto-style3"><asp:Textbox ID="tb_LastName" runat="server" colunmns="50"></asp:Textbox></td>
                    </tr>

                     <tr>
                        <td align="right">City:</td><td align="left" class="auto-style1"><asp:Textbox ID="tb_City" runat="server" colunmns="50"></asp:Textbox></td>
                    </tr>

                    <tr>
                        <td align="right">Street Address:</td><td align="left" class="auto-style1"><asp:Textbox ID="tb_streetad" runat="server" colunmns="80"></asp:Textbox></td>
                    </tr>
                    <tr>
                        <td align="right">State:</td><td align="left" class="auto-style1"><asp:Textbox ID="tb_state" runat="server" colunmns="20"></asp:Textbox></td>
                    </tr>
                    <tr>
                        <td align="right">Postcode:</td><td align="left" class="auto-style1"><asp:Textbox ID="tb_postcode" runat="server" colunmns="50"></asp:Textbox></td>
                    </tr>
                    <tr>
                        <td align="right">Phone:</td><td align="left" class="auto-style1"><asp:Textbox ID="tb_phone" runat="server" colunmns="50"></asp:Textbox></td>
                    </tr>
                    <tr>
                        <td align="right">E-mail Address:</td><td align="left" class="auto-style1"><asp:Textbox ID="tb_email" runat="server" colunmns="50"></asp:Textbox></td>
                    </tr>
                    <tr>
                        <td align="right">Time Available:</td><td align="left" class="auto-style1">
                        <asp:Textbox ID="tb_availabletime" runat="server" colunmns="50"></asp:Textbox></td>
                    </tr>
                    <tr>
                        <td align="right">Interest Activities:</td><td align="left" class="auto-style1"><asp:Textbox ID="tb_interestactivities" runat="server" colunmns="50"></asp:Textbox></td>
                    </tr>
                     
                 </table>


                </asp:WizardStep>


                <asp:CompleteWizardStep runat="server" >
                    <ContentTemplate>
                        <table>
                            <tr>
                                <td align="center">
                                    Complete</td>
                                </tr>
                            <tr>
                                <td>Your Account has been successfully created.</td>
                                </tr>
                            <tr>
                                <td align="center">
   
                                    </td>
                                </tr>
                              </table>
                        </ContentTemplate>
                </asp:CompleteWizardStep>
            </WizardSteps>
        </asp:CreateUserWizard>
</asp:Content>

