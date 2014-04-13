Imports System.Data.SqlClient


Partial Class little
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load

        CreateUserWizard1.Focus()

    End Sub

    Protected Sub CreateUserWizard1_ActiveStepChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles CreateUserWizard1.ActiveStepChanged

        If CreateUserWizard1.ActiveStep.Title = "Complete" Then

            Dim UserSetting As WizardStep = CType(CreateUserWizard1.FindControl("UserProfile"), WizardStep)

            ' Programmatically reference the TextBox controls

            Dim FirstName As TextBox = CType(UserSetting.FindControl("tb_FirstName"), TextBox)
            Dim LastName As TextBox = CType(UserSetting.FindControl("tb_LastName"), TextBox)
            Dim City As TextBox = CType(UserSetting.FindControl("tb_City"), TextBox)

            Dim newUser As MembershipUser = Membership.GetUser(CreateUserWizard1.UserName)
            Dim newUserID As Guid = CType(newUser.ProviderUserKey, Guid)

            'add the newly create user to the 'little' role
            Roles.AddUserToRole(newUser.UserName, "big_little")

            'Insert a new record into UserProfiles
            Dim connectionString As String = ConfigurationManager.ConnectionStrings("cs_big").ConnectionString
            Dim updatesql As String = "INSERT INTO [Big_little] ([UserID], [LittleFN], [littleLN], [city]) VALUES (@userId, @FirstName, @lastName, @City)"

            Using myConnection As New SqlConnection(connectionString)
                myConnection.Open()

                Dim myCommand As New SqlCommand(updatesql, myConnection)
                'myCommand.Parameters.Add(New SqlParameter("@postalCode",strPostalCode))
                myCommand.Parameters.AddWithValue("@FirstName", FirstName.Text.Trim())
                myCommand.Parameters.AddWithValue("@LastName", LastName.Text.Trim())
                myCommand.Parameters.AddWithValue("@city", City.Text.Trim())
                myCommand.Parameters.AddWithValue("@UserId", newUserID)
                myCommand.ExecuteNonQuery()
                myConnection.Close()
            End Using

        End If


    End Sub

End Class
