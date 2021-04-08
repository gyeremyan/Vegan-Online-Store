<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Layout.Master" CodeBehind="Category.aspx.vb" Inherits="CIS4250Fall2020OnlineStore.Category" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="breadcrumbs-custom">
        <div class="parallax-container" data-parallax-img="images/bg-about-2.jpg">
            <div class="breadcrumbs-custom-body parallax-content context-dark">
            </div>
        </div>
        <div class="breadcrumbs-custom-footer">
            <div class="container">
                <ul class="breadcrumbs-custom-path">
                    <li><a href="index.html">Home</a></li>
                    <li class="active">Shop</li>
                </ul>
            </div>
        </div>
    </section>
    <!-- Section Shop-->
    <section class="section section-xxl bg-default text-md-left">
        <div class="container">
            <div class="row row-50">
                <div class="col-lg-4 col-xl-3">
                    <div class="aside row row-30 row-md-50 justify-content-md-between">
                        <div class="aside-item col-12">
                            <h6 class="aside-title">Filter by Price</h6>
                            <!-- RD Range-->
                            <div class="rd-range" data-min="0" data-max="999" data-min-diff="100" data-start="[13, 235]" data-step="1" data-tooltip="false" data-input=".rd-range-input-value-1" data-input-2=".rd-range-input-value-2"></div>
                            <div class="group-xs group-justify">
                                <div>
                                    <button class="button button-sm button-primary button-zakaria" type="button">Filter</button>
                                </div>
                                <div>
                                    <div class="rd-range-wrap">
                                        <div class="rd-range-title">Price:</div>
                                        <div class="rd-range-form-wrap">
                                            <span>$</span>
                                            <input class="rd-range-input rd-range-input-value-1" type="text" name="value-1">
                                        </div>
                                        <div class="rd-range-divider"></div>
                                        <div class="rd-range-form-wrap">
                                            <span>$</span>
                                            <input class="rd-range-input rd-range-input-value-2" type="text" name="value-2">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="aside-item col-sm-6 col-md-5 col-lg-12">
                            <h6 class="aside-title">
                                <asp:Label ID="lblMainCategoryName" runat="server" Text=""></asp:Label></h6>
                            <ul class="list-shop-filter">
                                <asp:SqlDataSource ID="SqlDSSubCategory" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="" runat="server"></asp:SqlDataSource>
                                <asp:Repeater ID="rpSubCategory" runat="server" DataSourceID="SqlDSSubCategory">
                                    <ItemTemplate>
                                        <li>
                                            <a href="Category.aspx?SubCategoryId=<%# Eval("ID")%>
                                    &SubCategoryName=<%# Trim(Eval("CategoryName")) %>&MainCategoryID=<% = Request.QueryString("MainCategoryID")%>
                                    &MainCategoryName=<% = Request.QueryString("MainCategoryName")%>"><%# Trim(Eval("CategoryName")) %></a>
                                        </li>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-lg-8 col-xl-9">
                    <div class="product-top-panel group-md">
                        <p class="product-top-panel-title">Showing All Results</p>
                        <div>
                            <div class="group-sm group-middle">
                                <div class="product-top-panel-sorting">
                                    <select>
                                        <option value="1">Sort by newness</option>
                                        <option value="2">Sort by popularity</option>
                                        <option value="3">Sort by alphabet</option>
                                    </select>
                                </div>
                                <div class="product-view-toggle"><a class="mdi mdi-apps product-view-link product-view-grid active" href="grid-shop.html"></a><a class="mdi mdi-format-list-bulleted product-view-link product-view-list" href="#"></a></div>
                            </div>
                        </div>
                    </div>
                    <h6 class="aside-title">
                        <asp:Label ID="lblProductList" runat="server" Text="Label"></asp:Label></h6>
                    <h6>
                        <asp:Label ID="lblFeaturedItems" runat="server" Text="Label">Featured Items</asp:Label></h6>

                    <div class="row row-30 row-lg-50">


                        <asp:SqlDataSource ID="SqlDSProductList" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="" runat="server"></asp:SqlDataSource>
                        <asp:Repeater ID="rpProductList" runat="server" DataSourceID="SqlDSProductList">
                            <ItemTemplate>
                                <div class="col-sm-6 col-md-4 col-lg-6 col-xl-4">
                                    <!-- Product-->
                                    <article class="product">
                                        <div class="product-body">
                                            <div class="product-figure">
                                                <a href="ProductDetail.aspx?ProductNO=<%# Eval("ProductNO") %>">
                                                    <img src="images/Database/<%# Trim(Eval("ProductNO")) %>.jpg" alt="home_store-product" width="196" height="134" />
                                                </a>
                                            </div>
                                            <h5 class="product-title"><a href="ProductDetail.aspx?ProductID=<%# Eval("ProductID") %>"><%# Trim(Eval("ProductName")) %></a></h5>
                                            <div class="product-price-wrap">
                                                <div class="product-price">$<%# Trim(Eval("UnitPrice")) %></div>
                                            </div>
                                        </div>
                                        <span class="product-badge product-badge-sale">Sale</span>
                                        <div class="product-button-wrap">
                                            <div class="product-button"><a class="button button-secondary button-zakaria fl-bigmug-line-search74" href="single-product.html"></a></div>
                                            <div class="product-button"><a class="button button-primary button-zakaria fl-bigmug-line-shopping202" href="cart-page.html"></a></div>
                                        </div>
                                    </article>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>


                    </div>
                    <div class="pagination-wrap">
                        <!-- Bootstrap Pagination-->
                        <nav aria-label="Page navigation">
                            <ul class="pagination">
                                <li class="page-item page-item-control disabled"><a class="page-link" href="#" aria-label="Previous"><span class="icon" aria-hidden="true"></span></a></li>
                                <li class="page-item active"><span class="page-link">1</span></li>
                                <li class="page-item"><a class="page-link" href="#">2</a></li>
                                <li class="page-item"><a class="page-link" href="#">3</a></li>
                                <li class="page-item page-item-control"><a class="page-link" href="#" aria-label="Next"><span class="icon" aria-hidden="true"></span></a></li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
