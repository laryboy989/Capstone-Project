<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="Survey.aspx.vb" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>
        Of which of the following activites do you like best?&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>spending time alone</asp:ListItem>
            <asp:ListItem>playing sports</asp:ListItem>
            <asp:ListItem>Playing video games</asp:ListItem>
            <asp:ListItem>studying</asp:ListItem>
        </asp:DropDownList>
    </p>

    <p>
        Which describes your personality the best? &nbsp;  &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
        <asp:DropDownList ID="DropDownList2" runat="server">
            <asp:ListItem>Shy</asp:ListItem>
            <asp:ListItem>outgoing</asp:ListItem>
            <asp:ListItem>driven</asp:ListItem>
            <asp:ListItem>motivated</asp:ListItem>
        </asp:DropDownList>
    </p>
    <p>
        What is your favorate School subject subject?&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  <asp:DropDownList ID="DropDownList3" runat="server">
            <asp:ListItem>math</asp:ListItem>
            <asp:ListItem>history</asp:ListItem>
            <asp:ListItem>gym</asp:ListItem>
            <asp:ListItem>science</asp:ListItem>
            <asp:ListItem>art</asp:ListItem>
            <asp:ListItem></asp:ListItem>
        </asp:DropDownList>
    </p>
    <p>

     What is your favorate sport?&nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:DropDownList ID="DropDownList4" runat="server">
            <asp:ListItem>Football</asp:ListItem>
            <asp:ListItem>Baseball</asp:ListItem>
            <asp:ListItem>hockey</asp:ListItem>
            <asp:ListItem>Swimming</asp:ListItem>
            <asp:ListItem>Running</asp:ListItem>
            <asp:ListItem></asp:ListItem>
        </asp:DropDownList>

    </p>
&nbsp;<asp:Calendar ID="Calendar1" runat="server" Height="158px" Width="294px"></asp:Calendar>
    <p>

        &nbsp;<p>

      </p>
    </p>
   
</asp:Content>

