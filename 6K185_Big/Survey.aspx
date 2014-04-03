<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="Survey.aspx.vb" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>
        OF which of the following activites do you like best. Pick one
        <asp:RadioButton ID="RadioButton1" runat="server" Text="Alone time" />
        <asp:RadioButton ID="RadioButton2" runat="server" Text="Hanging out with friends" />
        <asp:RadioButton ID="RadioButton3" runat="server" Text="spending time with family" />
    </p>

    <p>
        Which describes your personality the best? 
        <asp:RadioButton ID="RadioButton4" runat="server" Text="Outgoing" />
        <asp:RadioButton ID="RadioButton5" runat="server" Text="Shy" />
        <asp:RadioButton ID="RadioButton6" runat="server" Text="personable" />
        <asp:RadioButton ID="RadioButton7" runat="server" Text="determined" />
    </p>
</asp:Content>

