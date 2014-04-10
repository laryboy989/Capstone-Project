<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="little.aspx.vb" Inherits="little" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
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
                        <td align="right">First Name:</td><td align="left"><asp:Textbox ID="tb_FirstName" runat="server" colunmns="50"></asp:Textbox></td>
                    </tr>

                     <tr>
                        <td align="right">Last Name:</td><td align="left"><asp:Textbox ID="tb_LastName" runat="server" colunmns="50"></asp:Textbox></td>
                    </tr>

                     <tr>
                        <td align="right">City:</td><td align="left"><asp:Textbox ID="tb_City" runat="server" colunmns="50"></asp:Textbox></td>
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

