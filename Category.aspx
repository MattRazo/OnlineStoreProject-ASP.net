<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Template.Master" CodeBehind="Category.aspx.vb" Inherits="OnlineStoreCIS4250F2021.Category" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
				<div class="col-sm-3">
					<div class="left-sidebar">
						<h2><asp:Label ID="lblMainCategoryName" runat="server" Text=""></asp:Label></h2>
						<div class="panel-group category-products" id="accordian"><!--category-productsr-->
							<!--category-productsr-->
							<asp:SqlDataSource ID="sqlDSSubCategory" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringOnlineStore %>" SelectCommand=""></asp:SqlDataSource>
							<asp:Repeater ID="rpSubCategory" runat="server" DataSourceID="sqlDSSubCategory">
								<ItemTemplate>
									<div class="panel panel-default">
										<div class="panel-heading">
											<h4 class="panel-title"><a href="Category.aspx?MainCategoryID=<%# Request.QueryString("MainCategoryID") %>&MainCategoryName=<%# Request.QueryString("MainCategoryName") %>&SubCategoryID=<%# CStr(Eval("CategoryID")) %>&SubCategoryName=<%# CStr(Eval("CategoryName")) %>"><%# Eval("CategoryName") %></a></h4>
										</div>
									</div>
								</ItemTemplate>
							</asp:Repeater> 
						</div><!--/category-productsr-->
					
						
						
					</div>
				</div>
				
				<div class="col-sm-9 padding-right">
					<div class="features_items"><!--features_items-->
						<h2 class="title text-center"><asp:Label ID="lblProductListType" runat="server" Text=""></asp:Label></h2>
						<asp:SqlDataSource ID="sqlDSProductList" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringOnlineStore %>" SelectCommand=""></asp:SqlDataSource>
						<asp:Repeater ID="rpProductList" runat="server" DataSourceID="sqlDSProductList">
							<ItemTemplate>
								<div class="col-sm-4">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<a href="ProductDetail.aspx?ProductID=<%# Eval("ProductID") %>"><img src="images/shop/product12.jpg" alt="" /></a>
												<h2>$<%# Eval("Price") %></h2>
												<a href="ProductDetail.aspx?ProductID=<%# Eval("ProductID") %>"><p><%# Eval("ProductName") %></a></p>
												<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
											</div>
										</div>
									</div>
								</div>
							</ItemTemplate>
						</asp:Repeater> 

						<div class="col-sm-4">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="images/shop/product12.jpg" alt="" />
										<h2>$56</h2>
										<p>Easy Polo Black Edition</p>
										<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
									</div>
								</div>
							</div>
						</div>


						
						<ul class="pagination">
							<li class="active"><a href="">1</a></li>
							<li><a href="">2</a></li>
							<li><a href="">3</a></li>
							<li><a href="">&raquo;</a></li>
						</ul>
					</div><!--features_items-->
				</div>
</asp:Content>
