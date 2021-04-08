<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Layout.Master" CodeBehind="ProductDetail.aspx.vb" Inherits="CIS4250Fall2020OnlineStore.ProductDetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
 <div class="col-center padding-right">
        <div class="product-details">
            <!--product-details-->
            <div class="col-sm-5">
                <div class="view-product">
                    <h3>Vegano</h3>
                </div>
            </div>
            <div class="col-center">
                <div class="product-information">
                    <!--/product-information-->
                    <asp:Image ID="imgProduct" runat="server" />
                    <h2>
                        <asp:Label ID="lblProductName" runat="server" Text=""></asp:Label></h2>
                    <h3>
                        <div>US $<asp:Label ID="lblPrice" runat="server" Text=""></asp:Label></div>
                    </h3>
                    <img src="images/product-details/rating.png" alt="" />
                    <span>
                        <p>Product Description:
                            <asp:Label ID="lblProductDescription" runat="server" Text=""></asp:Label></p>
                        <p>Web ID:
                            <asp:Label ID="lblProductNo" runat="server" Text=""></asp:Label></p>
                        <p>
                            <asp:Label ID="lblRating" runat="server" Text=""></asp:Label></p>
                        <label>Quantity:</label>
                        <asp:TextBox ID="tbQuantity" runat="server"></asp:TextBox>
                        <asp:Button ID="btnAddtoCart" runat="server" Text="Add To Cart" class="btn btn-main"/>
                    </span>
                    <p><b>Availability:</b> In Stock</p>
                    <p><b>Brand:</b> Vegano</p>
                </div>
                <!--/product-information-->
            </div>
        </div>
</asp:Content>
