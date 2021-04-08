<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/layout.Master" CodeBehind="tastyTreats.aspx.vb" Inherits="CIS4250Fall2020OnlineStore.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

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
                        <div class="rd-range-form-wrap"><span>$</span>
                          <input class="rd-range-input rd-range-input-value-1" type="text" name="value-1">
                        </div>
                        <div class="rd-range-divider"></div>
                        <div class="rd-range-form-wrap"><span>$</span>
                          <input class="rd-range-input rd-range-input-value-2" type="text" name="value-2">
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="aside-item col-sm-6 col-md-5 col-lg-12">
                  <h6 class="aside-title">Categories</h6>
                  <ul class="list-shop-filter">
                    <li>
                      <label class="checkbox-inline">
                        <input name="input-group-radio" value="checkbox-1" type="checkbox">All
                      </label><span class="list-shop-filter-number">(18)</span>
                    </li>
                    <li>
                      <label class="checkbox-inline">
                        <input name="input-group-radio" value="checkbox-2" type="checkbox">Drinks
                      </label><span class="list-shop-filter-number">(9)</span>
                    </li>
                    <li>
                      <label class="checkbox-inline">
                        <input name="input-group-radio" value="checkbox-3" type="checkbox">Vegetables
                      </label><span class="list-shop-filter-number">(5)</span>
                    </li>
                    <li>
                      <label class="checkbox-inline">
                        <input name="input-group-radio" value="checkbox-4" type="checkbox">Exotic
                      </label><span class="list-shop-filter-number">(8)</span>
                    </li>
                  </ul>
                  <!-- RD Search Form-->
                  <form class="rd-search form-search" action="search-results.html" method="GET">
                    <div class="form-wrap">
                      <input class="form-input" id="search-form" type="text" name="s" autocomplete="off">
                      <label class="form-label" for="search-form">Search in shop...</label>
                      <button class="button-search fl-bigmug-line-search74" type="submit"></button>
                    </div>
                  </form>
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
                    <div class="product-view-toggle"><a class="mdi mdi-apps product-view-link product-view-grid" href="grid-shop.html"></a><a class="mdi mdi-format-list-bulleted product-view-link product-view-list active" href="shop-list.html"></a></div>
                  </div>
                </div>
              </div>
              <div class="row row-30 row-md-50 row-lg-60">
                <div class="col-12">
                  <!-- Product-->
                  <article class="product-modern text-center text-sm-left">
                    <div class="unit unit-spacing-0 flex-column flex-sm-row">
                      <div class="unit-left"><a class="product-modern-figure" href="single-product.html"><img src="images/product-big-1-328x330.png" alt="" width="328" height="330"/></a></div>
                      <div class="unit-body">
                        <div class="product-modern-body">
                          <h4 class="product-modern-title"><a href="single-product.html">Bananas</a></h4>
                          <div class="product-price-wrap">
                            <div class="product-price">$16.00</div>
                          </div>
                          <p class="product-modern-text">Sed eleifend, lacus nec bibendum pulvinar, nibh mauris vehicula augue, sit amet mattis ligula lorem eu nisl. Integer a egestas</p><a class="button button-primary button-zakaria" href="cart-page.html">Add to cart</a>
                        </div>
                      </div>
                    </div>
                  </article>
                </div>
                <div class="col-12">
                  <!-- Product-->
                  <article class="product-modern text-center text-sm-left">
                    <div class="unit unit-spacing-0 flex-column flex-sm-row">
                      <div class="unit-left"><a class="product-modern-figure" href="single-product.html"><img src="images/product-big-2-328x330.png" alt="" width="328" height="330"/></a></div>
                      <div class="unit-body">
                        <div class="product-modern-body">
                          <h4 class="product-modern-title"><a href="single-product.html">Tomatoes</a></h4>
                          <div class="product-price-wrap">
                            <div class="product-price">$16.00</div>
                          </div>
                          <p class="product-modern-text">Elogiums peregrinationes in lotus quadrata! Caniss accelerare, tanquam neuter guttus. Cum barcas persuadere</p><a class="button button-primary button-zakaria" href="cart-page.html">Add to cart</a>
                        </div>
                      </div>
                    </div>
                  </article>
                </div>
                <div class="col-12">
                  <!-- Product-->
                  <article class="product-modern text-center text-sm-left">
                    <div class="unit unit-spacing-0 flex-column flex-sm-row">
                      <div class="unit-left"><a class="product-modern-figure" href="single-product.html"><img src="images/product-big-3-328x330.png" alt="" width="328" height="330"/></a></div>
                      <div class="unit-body">
                        <div class="product-modern-body">
                          <h4 class="product-modern-title"><a href="single-product.html">Carrots</a></h4>
                          <div class="product-price-wrap">
                            <div class="product-price product-price-old">$30.00</div>
                            <div class="product-price">$23.00</div>
                          </div>
                          <p class="product-modern-text">Canis, mons, et fluctus. Cur silva observare? Cum luna studere, omnes cottaes demitto gratis, altus absolutioes</p><a class="button button-primary button-zakaria" href="cart-page.html">Add to cart</a>
                        </div>
                      </div>
                    </div><span class="product-badge product-badge-sale">Sale</span>
                  </article>
                </div>
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
