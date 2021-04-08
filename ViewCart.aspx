<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/layout.Master" CodeBehind="ViewCart.aspx.vb" Inherits="CIS4250Fall2020OnlineStore.ViewCart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:SqlDataSource ID="sqlDSCart1" runat="server"
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>"></asp:SqlDataSource>

    <!-- cart area start -->
    <div class="cart-main-area mtb-60px">
        <div class="container">
            <h3 class="cart-page-title">Your cart items
            </h3>


            <asp:ListView ID="lvCart" runat="server" DataSourceID="sqlDSCart1"
                OnItemCommand="lvCart_OnItemCommand" CellPadding="3" DataKeyField="CartNo"
                CellSpacing="0" RepeatColumns="1" DataKeyNames="ID">
                <LayoutTemplate>

                    <div class="table-content table-responsive cart-table-content">
                        <table>
                            <thead>
                                <tr>
                                    <th>Image</th>
                                    <th>Product Name</th>
                                    <th>Until Price</th>
                                    <th>Qty</th>
                                    <th>Subtotal</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <asp:PlaceHolder runat="server" ID="itemPlaceholder"></asp:PlaceHolder>
                            </tbody>
                        </table>
                </LayoutTemplate>
                <ItemTemplate>
                    <tr>
                        <td class="product-thumbnail">
                            <a href="#">
                                <img src="images/Database/<%# Trim(Eval("ProductNo")) %>.jpg" alt=""></a>
                        </td>
                        <td class="product-name">
                            <a style="font-size: 20px; color: #2a7e9f;" href=""><%# Trim(Eval("ProductName")) %></a>
                            <br />
                            <br />
                            <p><%# Eval("ProductNo") %></p>
                        </td>
                        <td class="product-price-cart">
                            <p>$<%# Eval("Price") %></p>

                        </td>
                        <td class="product-quantity">
                            <div class="cart-plus-minus">
                                <asp:TextBox ID="tbQuantity" Text='<%# Eval("Quantity")%>' Width="100px" class="cart-plus-minus-box" runat="server"></asp:TextBox>
                                <br />
                                <br />
                                <br />
                                <br />
                                <asp:LinkButton runat="server" ID="lbUpdate" Text='Update'
                                    CommandName="cmdUpdate" CommandArgument='<%# Eval("ProductNo")%>' />

                            </div>


                        </td>
                        <td class="product-subtotal">$<asp:Label ID="lblSubTotal" runat="server" Text='<%# Eval("Quantity") * Eval("Price")%>'></asp:Label>
                        </td>

                        <td class="product-remove">
                            <asp:LinkButton runat="server" ID="LinkButton1" Style="color: red;" class="fa fa-times"
                                CommandName="cmdDelete" CommandArgument='<%# Eval("ProductNo")%>' />
                            </div>                                             

                        </td>
                    </tr>

                    </div>
                </ItemTemplate>
            </asp:ListView>

            <div style="padding: 8px; width: 100%; text-align: center;">
                <div style="display: inline-block; margin-top: 5px">
                    <asp:Button runat="server" Text="&laquo;" ID="show_prev" class="fa fa-angle-double-left"></asp:Button>
                    <asp:DataPager ID="DataPager1" runat="server" PagedControlID="lvCart" PageSize="3">
                        <Fields>
                            <asp:NumericPagerField NextPageText='&raquo;' PreviousPageText='&laquo;' ButtonCount="5"
                                ButtonType="Button" NextPreviousButtonCssClass="next_prevx" NumericButtonCssClass="numericx"
                                CurrentPageLabelCssClass="currentx" RenderNonBreakingSpacesBetweenControls="False" />
                        </Fields>
                    </asp:DataPager>
                    <asp:Button runat="server" Text="&raquo;" ID="show_next" CssClass="show_nextx"></asp:Button>
                </div>
            </div>

            <div class="row">
                <div class="col-lg-12">
                    <div class="cart-shiping-update-wrapper">
                        <div class="cart-shiping-update">
                            <a href="#">Continue Shopping</a>
                        </div>
                        <div class="cart-clear">
                            <button>Update Shopping Cart</button>
                            <a style="background-color: #ff3e3e;" href="#">
                                <asp:Button ID="btnEmptyCart" runat="server" Text="Empty the Cart" Style="color: white;" /></a>
                        </div>
                    </div>
                </div>
            </div>



            <div class="col-lg-4 col-md-12 mt-md-30px">
                <div class="grand-totall">
                    <div class="title-wrap">
                        <h4 class="cart-bottom-title section-bg-gary-cart">Cart Total</h4>
                    </div>
                    <%--                                        <asp:Label ID="lblCartTotal" runat="server" Text=""></asp:Label>--%>
                    <%--<div class="total-shipping">
                                            <h5>Total shipping</h5>
                                            <ul>
                                                <li><input type="checkbox" /> Standard <span>$20.00</span></li>
                                                <li><input type="checkbox" /> Express <span>$30.00</span></li>
                                            </ul>
                                        </div>--%>
                    <h4 class="grand-totall-title">Grand Total 
                        <asp:Label ID="lblCartTotal" runat="server" Text=""></asp:Label></h4>
                    <a href="#">Proceed to Checkout</a>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
