Imports System.Data
Imports System.Data.SqlClient

Public Class Site1
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("Customer") <> "" Then
            hlLogin.Visible = False
            hlLogout.Visible = True
            lblCustomer.Text = Session("Customer")
            lblCustomer.Visible = True
            hrefDestination.HRef = "amazon.com"
        End If
        Dim strConn As String = System.Configuration.ConfigurationManager.ConnectionStrings("ConnectionString").ConnectionString
        Dim connMainCategory As SqlConnection
        Dim cmdMainCategory As SqlCommand
        Dim drMainCategory As SqlDataReader
        Dim strSQL As String = "Select * from Category Where parent = 0"
        connMainCategory = New SqlConnection(strConn)
        cmdMainCategory = New SqlCommand(strSQL, connMainCategory)
        connMainCategory.Open()
        drMainCategory = cmdMainCategory.ExecuteReader(CommandBehavior.CloseConnection)
        Dim strMainCategory As String = ""
        Do While drMainCategory.Read()
            strMainCategory = strMainCategory + "<li><a href=''>" + Trim(drMainCategory("CategoryName")) + "</a></li>"
        Loop

    End Sub

    Private Sub btnSearch_Click(sender As Object, e As EventArgs) Handles btnSearch.Click
        If tbSearch.Text <> "" Then
            Dim strURL As String = "ProductDetail.aspx"
            ' check the number of words in the textbox
            Dim strCheck As String = " "
            If Not Trim(tbSearch.Text).Contains(strCheck) Then
                ' check if there is a ProductID match in the Product table
                ' all the database objects declared and instantiated
                ' Dim strDQL as String = "Select * from Product Where ProductID - '" & tbSearch.Text & "'"
                ' If there is a match, redirect to ProductDetail.aspx?
                ' assign a dynamic value for strURL
                ' Response.Redirect(strURL)
            Else
                strURL = "Category.aspx?SearchString=" & Trim(tbSearch.Text)
                Response.Redirect(strURL)
            End If
        End If
    End Sub
End Class