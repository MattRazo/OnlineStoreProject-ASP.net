Public Class Category
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Request.QueryString("MainCategoryID") <> "" Then
            lblMainCategoryName.Text = Request.QueryString("MainCategoryName")
            sqlDSSubCategory.SelectCommand = "Select * From Category Where Parent = " & CInt(Request.QueryString("MainCategoryID"))
            lblProductListType.Text = "Featured Product for Subcategory " + Request.QueryString("MainCategoryName")
            sqlDSProductList.SelectCommand = "Select * From Product Where MainCategoryID = " & CInt(Request.QueryString("MainCategoryID")) & " And Featured = 'Y'"
            Response.Write(sqlDSProductList.SelectCommand)
        End If
    End Sub

End Class