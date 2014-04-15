Imports System.Data.SqlClient
Partial Class volunteer
    Inherits System.Web.UI.Page

    Protected Sub CreateUserWizard1_ActiveStepChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles CreateUserWizard1.ActiveStepChanged

        If CreateUserWizard1.ActiveStep.Title = "Complete" Then

            Dim UserSetting As WizardStep = CType(CreateUserWizard1.FindControl("UserProfile"), WizardStep)
            Dim Usersetting1 As WizardStep = CType(CreateUserWizard1.FindControl("MoreOptions"), WizardStep)
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
            'Dim interestactivities As TextBox = CType(UserSetting.FindControl("tb_interestactivities"), TextBox)
            Dim dob As TextBox = CType(UserSetting.FindControl("tb_dateofbirth"), TextBox)
            Dim ssn As TextBox = CType(UserSetting.FindControl("tb_ssn"), TextBox)

            Dim faractivities As TextBox = CType(Usersetting1.FindControl("tb_faractivities"), TextBox)
            Dim personality As TextBox = CType(Usersetting1.FindControl("tb_personality"), TextBox)
            Dim subject As TextBox = CType(Usersetting1.FindControl("tb_schoolsubject"), TextBox)
            Dim sport As TextBox = CType(Usersetting1.FindControl("tb_sport"), TextBox)

            Dim newUser As MembershipUser = Membership.GetUser(CreateUserWizard1.UserName)
            Dim newUserID As Guid = CType(newUser.ProviderUserKey, Guid)

            'add the newly create user to the 'little' role
            Roles.AddUserToRole(newUser.UserName, "big_volunteer")

            'Insert a new record into UserProfiles
            Dim connectionString As String = ConfigurationManager.ConnectionStrings("cs_big").ConnectionString
            Dim updatesql As String = "INSERT INTO [Big_volunteer] ([UserID], [volunteerFN], [volunteerLN], [dob],[ssn],[city],[streetaddress],[state],[postcode],[phone],[emailadress],[availabletime],[faractivities],[personality],[schoolsubject],[sport]) VALUES (@userId, @FirstName, @lastName,@dob,@ssn,@City,@streetaddress,@state,@postcode,@phone,@email,@availabletime,@faractivities,@personality,@schoolsubject,@sport)"

            Using myConnection As New SqlConnection(connectionString)
                myConnection.Open()

                Dim myCommand As New SqlCommand(updatesql, myConnection)
                'myCommand.Parameters.Add(New SqlParameter("@postalCode",strPostalCode))
                myCommand.Parameters.AddWithValue("@FirstName", FirstName.Text.Trim())
                myCommand.Parameters.AddWithValue("@LastName", LastName.Text.Trim())
                myCommand.Parameters.AddWithValue("@dob", dob.Text.Trim())
                myCommand.Parameters.AddWithValue("@ssn", ssn.Text.Trim())
                myCommand.Parameters.AddWithValue("@city", City.Text.Trim())
                myCommand.Parameters.AddWithValue("@UserId", newUserID)
                myCommand.Parameters.AddWithValue("@streetAddress", streetaddress.Text.Trim())
                myCommand.Parameters.AddWithValue("@state", state.Text.Trim())
                myCommand.Parameters.AddWithValue("@postcode", postcode.Text.Trim())
                myCommand.Parameters.AddWithValue("@phone", phone.Text.Trim())
                myCommand.Parameters.AddWithValue("@email", email.Text.Trim())
                myCommand.Parameters.AddWithValue("@availabletime", availabletime.Text.Trim())
                myCommand.Parameters.AddWithValue("@faractivities", faractivities.Text.Trim())
                myCommand.Parameters.AddWithValue("@personality", personality.Text.Trim())
                myCommand.Parameters.AddWithValue("@schoolsubject", subject.Text.Trim())
                myCommand.Parameters.AddWithValue("@sport", sport.Text.Trim())
                'myCommand.Parameters.AddWithValue("@interestactivities", interestactivities.Text.Trim())
                myCommand.ExecuteNonQuery()
                myConnection.Close()
            End Using

        End If


    End Sub

End Class





