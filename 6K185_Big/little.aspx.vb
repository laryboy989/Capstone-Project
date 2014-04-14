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
            Dim streetaddress As TextBox = CType(UserSetting.FindControl("tb_streetad"), TextBox)
            Dim state As TextBox = CType(UserSetting.FindControl("tb_state"), TextBox)
            Dim postcode As TextBox = CType(UserSetting.FindControl("tb_postcode"), TextBox)
            Dim phone As TextBox = CType(UserSetting.FindControl("tb_phone"), TextBox)
            Dim email As TextBox = CType(UserSetting.FindControl("tb_email"), TextBox)
            Dim availabletime As TextBox = CType(UserSetting.FindControl("tb_availabletime"), TextBox)
            Dim interestactivities As TextBox = CType(UserSetting.FindControl("tb_interestactivities"), TextBox)


            Dim newUser As MembershipUser = Membership.GetUser(CreateUserWizard1.UserName)
            Dim newUserID As Guid = CType(newUser.ProviderUserKey, Guid)

            'add the newly create user to the 'little' role
            Roles.AddUserToRole(newUser.UserName, "big_little")

            'Insert a new record into UserProfiles
            Dim connectionString As String = ConfigurationManager.ConnectionStrings("cs_big").ConnectionString
            Dim updatesql As String = "INSERT INTO [Big_little] ([UserID], [LittleFN], [littleLN], [city], [streetAddress],[state],[postcode],[phone],[emailaddress],[availabletime],[interetactivities]) VALUES (@userId, @FirstName, @lastName, @City,@streetaddress,@state,@postcode,@phone,@email,@availabletime,@interestactivities)"

            Using myConnection As New SqlConnection(connectionString)
                myConnection.Open()

                Dim myCommand As New SqlCommand(updatesql, myConnection)
                'myCommand.Parameters.Add(New SqlParameter("@postalCode",strPostalCode))
                myCommand.Parameters.AddWithValue("@FirstName", FirstName.Text.Trim())
                myCommand.Parameters.AddWithValue("@LastName", LastName.Text.Trim())
                myCommand.Parameters.AddWithValue("@city", City.Text.Trim())
                myCommand.Parameters.AddWithValue("@UserId", newUserID)
                myCommand.Parameters.AddWithValue("@streetAddress", streetaddress.Text.Trim())
                myCommand.Parameters.AddWithValue("@state", state.Text.Trim())
                myCommand.Parameters.AddWithValue("@postcode", postcode.Text.Trim())
                myCommand.Parameters.AddWithValue("@phone", phone.Text.Trim())
                myCommand.Parameters.AddWithValue("@email", email.Text.Trim())
                myCommand.Parameters.AddWithValue("@availabletime", availabletime.Text.Trim())
                myCommand.Parameters.AddWithValue("@interestactivities", interestactivities.Text.Trim())
                myCommand.ExecuteNonQuery()
                myConnection.Close()
            End Using

        End If


    End Sub

End Class
