﻿<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="littledetails.aspx.vb" Inherits="Roles_employee_Littledetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
 
        
      
       
     <h1>Little Information &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        </h1>
    <div>
    
        <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" />
    
    </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_Big %>" DeleteCommand="DELETE FROM [Big_little] WHERE [littleID] = @littleID" InsertCommand="INSERT INTO [Big_little] ([userID], [littleFN], [littleLN], [city], [streetAddress], [state], [postcode], [phone], [emailaddress], [matchstatus], [availabletime], [interetactivities], [image], [faractivities], [personality], [schoolsubject], [sport], [username]) VALUES (@userID, @littleFN, @littleLN, @city, @streetAddress, @state, @postcode, @phone, @emailaddress, @matchstatus, @availabletime, @interetactivities, @image, @faractivities, @personality, @schoolsubject, @sport, @username)" SelectCommand="SELECT aspnet_Roles.RoleName, Big_little.littleFN, Big_little.littleLN, Big_little.city, Big_little.streetAddress, Big_little.state, Big_little.postcode, Big_little.phone, Big_little.emailaddress, Big_little.matchstatus, Big_little.availabletime, Big_little.interetactivities, Big_little.faractivities, Big_little.personality, Big_little.schoolsubject, Big_little.sport, Big_little.littleID, aspnet_Users.UserName, Big_little.userID FROM aspnet_Roles INNER JOIN aspnet_UsersInRoles ON aspnet_Roles.RoleId = aspnet_UsersInRoles.RoleId INNER JOIN aspnet_Users ON aspnet_UsersInRoles.UserId = aspnet_Users.UserId INNER JOIN Big_little ON aspnet_Users.UserId = Big_little.userID WHERE (Big_little.littleID = @littleID)" UpdateCommand="UPDATE [Big_little] SET [userID] = @userID, [littleFN] = @littleFN, [littleLN] = @littleLN, [city] = @city, [streetAddress] = @streetAddress, [state] = @state, [postcode] = @postcode, [phone] = @phone, [emailaddress] = @emailaddress, [matchstatus] = @matchstatus, [availabletime] = @availabletime, [interetactivities] = @interetactivities, [image] = @image, [faractivities] = @faractivities, [personality] = @personality, [schoolsubject] = @schoolsubject, [sport] = @sport, [username] = @username WHERE [littleID] = @littleID">
            <DeleteParameters>
                <asp:Parameter Name="littleID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="userID" />
                <asp:Parameter Name="littleFN" Type="String" />
                <asp:Parameter Name="littleLN" Type="String" />
                <asp:Parameter Name="city" Type="String" />
                <asp:Parameter Name="streetAddress" Type="String" />
                <asp:Parameter Name="state" Type="String" />
                <asp:Parameter Name="postcode" Type="String" />
                <asp:Parameter Name="phone" Type="String" />
                <asp:Parameter Name="emailaddress" Type="String" />
                <asp:Parameter Name="matchstatus" Type="String" />
                <asp:Parameter Name="availabletime" Type="String" />
                <asp:Parameter Name="interetactivities" Type="String" />
                <asp:Parameter Name="image"  />
                <asp:Parameter Name="faractivities" Type="String" />
                <asp:Parameter Name="personality" Type="String" />
                <asp:Parameter Name="schoolsubject" Type="String" />
                <asp:Parameter Name="sport" Type="String" />
                <asp:Parameter Name="username" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:QueryStringParameter Name="littleID" QueryStringField="LittleID" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="userID"  />
                <asp:Parameter Name="littleFN" Type="String" />
                <asp:Parameter Name="littleLN" Type="String" />
                <asp:Parameter Name="city" Type="String" />
                <asp:Parameter Name="streetAddress" Type="String" />
                <asp:Parameter Name="state" Type="String" />
                <asp:Parameter Name="postcode" Type="String" />
                <asp:Parameter Name="phone" Type="String" />
                <asp:Parameter Name="emailaddress" Type="String" />
                <asp:Parameter Name="matchstatus" Type="String" />
                <asp:Parameter Name="availabletime" Type="String" />
                <asp:Parameter Name="interetactivities" Type="String" />
                <asp:Parameter Name="image" />
                <asp:Parameter Name="faractivities" Type="String" />
                <asp:Parameter Name="personality" Type="String" />
                <asp:Parameter Name="schoolsubject" Type="String" />
                <asp:Parameter Name="sport" Type="String" />
                <asp:Parameter Name="username" Type="String" />
                <asp:Parameter Name="littleID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    <p>
        </p>
        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="20px" Width="455px" DataKeyNames="littleID">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
            <EditRowStyle BackColor="#999999" />
            <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="RoleName" HeaderText="RoleName" SortExpression="RoleName" />
                <asp:BoundField DataField="littleFN" HeaderText="littleFN" SortExpression="littleFN" />
                <asp:BoundField DataField="littleLN" HeaderText="littleLN" SortExpression="littleLN" />
                <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
                <asp:BoundField DataField="streetAddress" HeaderText="streetAddress" SortExpression="streetAddress" />
                <asp:BoundField DataField="state" HeaderText="state" SortExpression="state" />
                <asp:BoundField DataField="postcode" HeaderText="postcode" SortExpression="postcode" />
                <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                <asp:BoundField DataField="emailaddress" HeaderText="emailaddress" SortExpression="emailaddress" />
                <asp:BoundField DataField="matchstatus" HeaderText="matchstatus" SortExpression="matchstatus" />
                <asp:BoundField DataField="availabletime" HeaderText="availabletime" SortExpression="availabletime" />
                <asp:BoundField DataField="interetactivities" HeaderText="interetactivities" SortExpression="interetactivities" />
                <asp:BoundField DataField="faractivities" HeaderText="faractivities" SortExpression="faractivities" />
                <asp:BoundField DataField="personality" HeaderText="personality" SortExpression="personality" />
                <asp:BoundField DataField="schoolsubject" HeaderText="schoolsubject" SortExpression="schoolsubject" />
                <asp:BoundField DataField="sport" HeaderText="sport" SortExpression="sport" />
                <asp:BoundField DataField="littleID" HeaderText="littleID" InsertVisible="False" ReadOnly="True" SortExpression="littleID" />
                <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                <asp:BoundField DataField="userID" HeaderText="userID" SortExpression="userID" />
                <asp:CommandField ShowEditButton="True" />
            </Fields>
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        </asp:DetailsView>
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="littleID" DataSourceID="SqlDataSource1">
            <EditItemTemplate>
                RoleName:
                <asp:TextBox ID="RoleNameTextBox" runat="server" Text='<%# Bind("RoleName") %>' />
                <br />
                littleFN:
                <asp:TextBox ID="littleFNTextBox" runat="server" Text='<%# Bind("littleFN") %>' />
                <br />
                littleLN:
                <asp:TextBox ID="littleLNTextBox" runat="server" Text='<%# Bind("littleLN") %>' />
                <br />
                city:
                <asp:TextBox ID="cityTextBox" runat="server" Text='<%# Bind("city") %>' />
                <br />
                streetAddress:
                <asp:TextBox ID="streetAddressTextBox" runat="server" Text='<%# Bind("streetAddress") %>' />
                <br />
                state:
                <asp:TextBox ID="stateTextBox" runat="server" Text='<%# Bind("state") %>' />
                <br />
                postcode:
                <asp:TextBox ID="postcodeTextBox" runat="server" Text='<%# Bind("postcode") %>' />
                <br />
                phone:
                <asp:TextBox ID="phoneTextBox" runat="server" Text='<%# Bind("phone") %>' />
                <br />
                emailaddress:
                <asp:TextBox ID="emailaddressTextBox" runat="server" Text='<%# Bind("emailaddress") %>' />
                <br />
                matchstatus:
                <asp:TextBox ID="matchstatusTextBox" runat="server" Text='<%# Bind("matchstatus") %>' />
                <br />
                availabletime:
                <asp:TextBox ID="availabletimeTextBox" runat="server" Text='<%# Bind("availabletime") %>' />
                <br />
                interetactivities:
                <asp:TextBox ID="interetactivitiesTextBox" runat="server" Text='<%# Bind("interetactivities") %>' />
                <br />
                faractivities:
                <asp:TextBox ID="faractivitiesTextBox" runat="server" Text='<%# Bind("faractivities") %>' />
                <br />
                personality:
                <asp:TextBox ID="personalityTextBox" runat="server" Text='<%# Bind("personality") %>' />
                <br />
                schoolsubject:
                <asp:TextBox ID="schoolsubjectTextBox" runat="server" Text='<%# Bind("schoolsubject") %>' />
                <br />
                sport:
                <asp:TextBox ID="sportTextBox" runat="server" Text='<%# Bind("sport") %>' />
                <br />
                littleID:
                <asp:Label ID="littleIDLabel1" runat="server" Text='<%# Eval("littleID") %>' />
                <br />
                UserName:
                <asp:TextBox ID="UserNameTextBox" runat="server" Text='<%# Bind("UserName") %>' />
                <br />
                userID:
                <asp:TextBox ID="userIDTextBox" runat="server" Text='<%# Bind("userID") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                RoleName:
                <asp:TextBox ID="RoleNameTextBox" runat="server" Text='<%# Bind("RoleName") %>' />
                <br />
                littleFN:
                <asp:TextBox ID="littleFNTextBox" runat="server" Text='<%# Bind("littleFN") %>' />
                <br />
                littleLN:
                <asp:TextBox ID="littleLNTextBox" runat="server" Text='<%# Bind("littleLN") %>' />
                <br />
                city:
                <asp:TextBox ID="cityTextBox" runat="server" Text='<%# Bind("city") %>' />
                <br />
                streetAddress:
                <asp:TextBox ID="streetAddressTextBox" runat="server" Text='<%# Bind("streetAddress") %>' />
                <br />
                state:
                <asp:TextBox ID="stateTextBox" runat="server" Text='<%# Bind("state") %>' />
                <br />
                postcode:
                <asp:TextBox ID="postcodeTextBox" runat="server" Text='<%# Bind("postcode") %>' />
                <br />
                phone:
                <asp:TextBox ID="phoneTextBox" runat="server" Text='<%# Bind("phone") %>' />
                <br />
                emailaddress:
                <asp:TextBox ID="emailaddressTextBox" runat="server" Text='<%# Bind("emailaddress") %>' />
                <br />
                matchstatus:
                <asp:TextBox ID="matchstatusTextBox" runat="server" Text='<%# Bind("matchstatus") %>' />
                <br />
                availabletime:
                <asp:TextBox ID="availabletimeTextBox" runat="server" Text='<%# Bind("availabletime") %>' />
                <br />
                interetactivities:
                <asp:TextBox ID="interetactivitiesTextBox" runat="server" Text='<%# Bind("interetactivities") %>' />
                <br />
                faractivities:
                <asp:TextBox ID="faractivitiesTextBox" runat="server" Text='<%# Bind("faractivities") %>' />
                <br />
                personality:
                <asp:TextBox ID="personalityTextBox" runat="server" Text='<%# Bind("personality") %>' />
                <br />
                schoolsubject:
                <asp:TextBox ID="schoolsubjectTextBox" runat="server" Text='<%# Bind("schoolsubject") %>' />
                <br />
                sport:
                <asp:TextBox ID="sportTextBox" runat="server" Text='<%# Bind("sport") %>' />
                <br />
                UserName:
                <asp:TextBox ID="UserNameTextBox" runat="server" Text='<%# Bind("UserName") %>' />
                <br />

                userID:
                <asp:TextBox ID="userIDTextBox" runat="server" Text='<%# Bind("userID") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                RoleName:
                <asp:Label ID="RoleNameLabel" runat="server" Text='<%# Bind("RoleName") %>' />
                <br />
                littleFN:
                <asp:Label ID="littleFNLabel" runat="server" Text='<%# Bind("littleFN") %>' />
                <br />
                littleLN:
                <asp:Label ID="littleLNLabel" runat="server" Text='<%# Bind("littleLN") %>' />
                <br />
                city:
                <asp:Label ID="cityLabel" runat="server" Text='<%# Bind("city") %>' />
                <br />
                streetAddress:
                <asp:Label ID="streetAddressLabel" runat="server" Text='<%# Bind("streetAddress") %>' />
                <br />
                state:
                <asp:Label ID="stateLabel" runat="server" Text='<%# Bind("state") %>' />
                <br />
                postcode:
                <asp:Label ID="postcodeLabel" runat="server" Text='<%# Bind("postcode") %>' />
                <br />
                phone:
                <asp:Label ID="phoneLabel" runat="server" Text='<%# Bind("phone") %>' />
                <br />
                emailaddress:
                <asp:Label ID="emailaddressLabel" runat="server" Text='<%# Bind("emailaddress") %>' />
                <br />
                matchstatus:
                <asp:Label ID="matchstatusLabel" runat="server" Text='<%# Bind("matchstatus") %>' />
                <br />
                availabletime:
                <asp:Label ID="availabletimeLabel" runat="server" Text='<%# Bind("availabletime") %>' />
                <br />
                interetactivities:
                <asp:Label ID="interetactivitiesLabel" runat="server" Text='<%# Bind("interetactivities") %>' />
                <br />
                faractivities:
                <asp:Label ID="faractivitiesLabel" runat="server" Text='<%# Bind("faractivities") %>' />
                <br />
                personality:
                <asp:Label ID="personalityLabel" runat="server" Text='<%# Bind("personality") %>' />
                <br />
                schoolsubject:
                <asp:Label ID="schoolsubjectLabel" runat="server" Text='<%# Bind("schoolsubject") %>' />
                <br />
                sport:
                <asp:Label ID="sportLabel" runat="server" Text='<%# Bind("sport") %>' />
                <br />
                littleID:
                <asp:Label ID="littleIDLabel" runat="server" Text='<%# Eval("littleID") %>' />
                <br />
                UserName:
                <asp:Label ID="UserNameLabel" runat="server" Text='<%# Bind("UserName") %>' />
                <br />
                userID:
                <asp:Label ID="userIDLabel" runat="server" Text='<%# Bind("userID") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
     </asp:FormView>
        <br />
        <br />
        <h3><a href="Littletable.aspx" > Back to Little's </a></h3>
</asp:Content>
