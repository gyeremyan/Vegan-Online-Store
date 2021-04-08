Imports System.Data
Imports System.Data.SqlClient

Public Class Category
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Request.QueryString("MainCategoryID") <> "" Then
            SqlDSSubCategory.SelectCommand = "Select * From Category Where parent = " & CInt(Request.QueryString("MainCategoryID"))
            lblMainCategoryName.Text = Request.QueryString("MainCategoryName")
        End If
        If Request.QueryString("SubCategoryID") = "" Then
            SqlDSProductList.SelectCommand = "Select * From Product Where MainCategoryID = " & CInt(Request.QueryString("MainCategoryID")) & " And Featured = 1"
            lblProductList.Visible = False
            lblFeaturedItems.Text = "Featured Items for " + Request.QueryString("MainCategoryName")
        End If
        If Request.QueryString("MainCategoryID") = "" Then
            SqlDSProductList.SelectCommand = "Select * From Product Where featured = 1"
            lblProductList.Visible = False
            lblFeaturedItems.Text = "Featured Items"
        End If
        If Request.QueryString("MainCategoryID") = 5 Or Request.QueryString("MainCategoryID") = 14 Then
            SqlDSProductList.SelectCommand = "Select * From Product Where subcategoryid = " & CInt(Request.QueryString("MainCategoryID"))
            lblProductList.Visible = True
            lblFeaturedItems.Visible = False
        End If
        If Request.QueryString("SubCategoryID") <> "" Then
            lblProductList.Text = "Product list for " + Request.QueryString("SubCategoryName")
            lblProductList.Visible = True
            lblFeaturedItems.Visible = False
            SqlDSProductList.SelectCommand = "Select * From Product Where subcategoryid = " & CInt(Request.QueryString("SubCategoryID"))
        End If
        If Request.QueryString("SearchString") <> "" Then
            lblFeaturedItems.Visible = False
            lblProductList.Text = "Search Results"
            lblProductList.Visible = True
            SqlDSProductList.SelectCommand = "Select * from Product where ProductName like " & "'%" & Request.QueryString("SearchString") & "%'"
        End If
    End Sub

    Private Sub btnSwitch_Click(sender As Object, e As EventArgs) Handles btnSwitch.Click
        If tbSearch.Text <> "" Then
            Dim strURL As String = ""
            ' check the number of words in the textbox
            Dim strCheck As String = " "
            If Not Trim(tbSearch.Text).Contains(strCheck) Then
                ' check if there is a ProductID match in the Product table 
                ' all the database objects delcared and instantiated 
                ' Dim strSQL As String = "Select * from Product Where ProductID = '" & Trim(tbSearch.Text) & "'"
                ' If there is a match, redirect to ProductDetail.aspx?...
                ' assign a dynamic value for strURL
                ' Response.Redirect(strURL)
            Else
                strURL = "Category.aspx?SearchString=" & Trim(tbSearch.Text)
                Response.Redirect(strURL)
            End If
        End If
    End Sub
End Class