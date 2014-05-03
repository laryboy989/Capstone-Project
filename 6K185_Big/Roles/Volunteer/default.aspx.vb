
Partial Class _6K185_Big_Roles_Volunteer_default
    Inherits System.Web.UI.Page
    Protected Sub SqlDataSource1_Selecting(sender As Object, e As SqlDataSourceSelectingEventArgs) Handles SqlDataSource1.Selecting
        Dim currentUser As MembershipUser = Membership.GetUser()

        Dim currentUserId As Guid = currentUser.ProviderUserKey

        e.Command.Parameters("@UserID").Value = currentUserId

    End Sub
End Class
