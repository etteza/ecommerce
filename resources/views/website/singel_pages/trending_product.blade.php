<!-- trending product-section start -->
        <section class="trending-product-section">
            <div class="container">
                <div class="section-heading">
                    <h4 class="heading-title"><span class="heading-circle"></span> Trending Products</h4>
                </div>

                <div class="section-wrapper">
                    <!-- Add Arrows -->
                    <div class="slider-btn-group">
                        <div class="slider-btn-prev trending-slider-prev">
                            <svg version="1.1"  xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
            viewBox="0 0 443.52 443.52" style="enable-background:new 0 0 443.52 443.52;" xml:space="preserve"><g><path d="M143.492,221.863L336.226,29.129c6.663-6.664,6.663-17.468,0-24.132c-6.665-6.662-17.468-6.662-24.132,0l-204.8,204.8
                    c-6.662,6.664-6.662,17.468,0,24.132l204.8,204.8c6.78,6.548,17.584,6.36,24.132-0.42c6.387-6.614,6.387-17.099,0-23.712
                    L143.492,221.863z"/></g></svg>
                        </div>
                        <div class="slider-btn-next trending-slider-next">
                            <svg version="1.1"  xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 512.002 512.002" style="enable-background:new 0 0 512.002 512.002;" xml:space="preserve"><g><path d="M388.425,241.951L151.609,5.79c-7.759-7.733-20.321-7.72-28.067,0.04c-7.74,7.759-7.72,20.328,0.04,28.067l222.72,222.105
                    L123.574,478.106c-7.759,7.74-7.779,20.301-0.04,28.061c3.883,3.89,8.97,5.835,14.057,5.835c5.074,0,10.141-1.932,14.017-5.795
                    l236.817-236.155c3.737-3.718,5.834-8.778,5.834-14.05S392.156,245.676,388.425,241.951z"/></g></svg>
                        </div>
                    </div>
                    <div class="mlr-20">
                        <div class="trending-product-container">
                            <div class="swiper-wrapper">
                                <div class="swiper-slide">
                                    <div class="product-item">
                                        <div class="product-thumb">
                                            <a onclick="openModal()"><img src="assets/images/products/02.png" alt="product"></a>
                                            <span class="batch sale">Sale</span>
                                            <a class="wish-link" href="#">
                                                <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="heart" class="svg-inline--fa fa-heart fa-w-16" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"><path  d="M462.3 62.6C407.5 15.9 326 24.3 275.7 76.2L256 96.5l-19.7-20.3C186.1 24.3 104.5 15.9 49.7 62.6c-62.8 53.6-66.1 149.8-9.9 207.9l193.5 199.8c12.5 12.9 32.8 12.9 45.3 0l193.5-199.8c56.3-58.1 53-154.3-9.8-207.9z"></path></svg>
                                            </a>
                                        </div>
                                        <div class="product-content">
                                            <a href="#" class="cata">Catagory</a>
                                            <h6><a href="product-detail.html" class="product-title">Green Graves</a></h6>
                                            <p class="quantity">1 kg</p>
                                            <div class="d-flex justify-content-between align-items-center">
                                                <div class="price">$8.00 <del>$10.00</del></div>

                                                <div class="cart-btn-toggle" onclick="cartopen()">
                                                    <span class="cart-btn"><i class="fas fa-shopping-cart"></i> Cart</span>

                                                    <div class="price-btn">
                                                        <div class="price-increase-decrese-group d-flex">
                                                            <span class="decrease-btn">
                                                                <button type="button"
                                                                    class="btn quantity-left-minus" data-type="minus" data-field="">-
                                                                </button>
                                                            </span>
                                                            <input type="text" name="quantity" class="form-controls input-number" value="1">
                                                            <span class="increase">
                                                                <button type="button"
                                                                    class="btn quantity-right-plus" data-type="plus" data-field="">+
                                                                </button>
                                                            </span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="swiper-slide">
                                    <div class="product-item stock-out">
                                        <div class="product-thumb">
                                            <a onclick="openModal()"><img src="assets/images/products/03.png" alt="product"></a>
                                            <span class="batch">30%</span>
                                            <a class="wish-link" href="#">
                                                <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="heart" class="svg-inline--fa fa-heart fa-w-16" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"><path  d="M462.3 62.6C407.5 15.9 326 24.3 275.7 76.2L256 96.5l-19.7-20.3C186.1 24.3 104.5 15.9 49.7 62.6c-62.8 53.6-66.1 149.8-9.9 207.9l193.5 199.8c12.5 12.9 32.8 12.9 45.3 0l193.5-199.8c56.3-58.1 53-154.3-9.8-207.9z"></path></svg>
                                            </a>
                                        </div>
                                        <div class="product-content">
                                            <a href="#" class="cata">Catagory</a>
                                            <h6><a href="product-detail.html" class="product-title">Kiwi</a></h6>
                                            <p class="quantity">1 kg</p>
                                            <div class="d-flex justify-content-between align-items-center">
                                                <div class="price">$8.00 <del>$10.00</del></div>
                                                <div class="cart-btn-toggle" onclick="cartopen()">
                                                    <span class="cart-btn"><i class="fas fa-shopping-cart"></i> Cart</span>

                                                    <div class="price-btn">
                                                        <div class="price-increase-decrese-group d-flex">
                                                            <span class="decrease-btn">
                                                                <button type="button"
                                                                    class="btn quantity-left-minus" data-type="minus" data-field="">-
                                                                </button>
                                                            </span>
                                                            <input type="text" name="quantity" class="form-controls input-number" value="1">
                                                            <span class="increase">
                                                                <button type="button"
                                                                    class="btn quantity-right-plus" data-type="plus" data-field="">+
                                                                </button>
                                                            </span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="swiper-slide">
                                    <div class="product-item">
                                        <div class="product-thumb">
                                            <a onclick="openModal()"><img src="assets/images/products/04.png" alt="product"></a>
                                            <span class="batch">10%</span>
                                            <a class="wish-link" href="#">
                                                <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="heart" class="svg-inline--fa fa-heart fa-w-16" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"><path  d="M462.3 62.6C407.5 15.9 326 24.3 275.7 76.2L256 96.5l-19.7-20.3C186.1 24.3 104.5 15.9 49.7 62.6c-62.8 53.6-66.1 149.8-9.9 207.9l193.5 199.8c12.5 12.9 32.8 12.9 45.3 0l193.5-199.8c56.3-58.1 53-154.3-9.8-207.9z"></path></svg>
                                            </a>
                                        </div>
                                        <div class="product-content">
                                            <a href="#" class="cata">Catagory</a>
                                            <h6><a href="product-detail.html" class="product-title">Tomato</a></h6>
                                            <p class="quantity">1 kg</p>
                                            <div class="d-flex justify-content-between align-items-center">
                                                <div class="price">$8.00 <del>$10.00</del></div>
                                                <div class="cart-btn-toggle" onclick="cartopen()">
                                                    <span class="cart-btn"><i class="fas fa-shopping-cart"></i> Cart</span>

                                                    <div class="price-btn">
                                                        <div class="price-increase-decrese-group d-flex">
                                                            <span class="decrease-btn">
                                                                <button type="button"
                                                                    class="btn quantity-left-minus" data-type="minus" data-field="">-
                                                                </button>
                                                            </span>
                                                            <input type="text" name="quantity" class="form-controls input-number" value="1">
                                                            <span class="increase">
                                                                <button type="button"
                                                                    class="btn quantity-right-plus" data-type="plus" data-field="">+
                                                                </button>
                                                            </span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="swiper-slide">
                                    <div class="product-item">
                                        <div class="product-thumb">
                                            <a onclick="openModal()"><img src="assets/images/products/05.png" alt="product"></a>
                                            <span class="batch sale">Sale</span>
                                            <a class="wish-link" href="#">
                                                <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="heart" class="svg-inline--fa fa-heart fa-w-16" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"><path  d="M462.3 62.6C407.5 15.9 326 24.3 275.7 76.2L256 96.5l-19.7-20.3C186.1 24.3 104.5 15.9 49.7 62.6c-62.8 53.6-66.1 149.8-9.9 207.9l193.5 199.8c12.5 12.9 32.8 12.9 45.3 0l193.5-199.8c56.3-58.1 53-154.3-9.8-207.9z"></path></svg>
                                            </a>
                                        </div>
                                        <div class="product-content">
                                            <a href="#" class="cata">Catagory</a>
                                            <h6><a href="product-detail.html" class="product-title">Corn on the Cob</a></h6>
                                            <p class="quantity">1 kg</p>
                                            <div class="d-flex justify-content-between align-items-center">
                                                <div class="price">$8.00 <del>$10.00</del></div>
                                                <div class="cart-btn-toggle" onclick="cartopen()">
                                                    <span class="cart-btn"><i class="fas fa-shopping-cart"></i> Cart</span>

                                                    <div class="price-btn">
                                                        <div class="price-increase-decrese-group d-flex">
                                                            <span class="decrease-btn">
                                                                <button type="button"
                                                                    class="btn quantity-left-minus" data-type="minus" data-field="">-
                                                                </button>
                                                            </span>
                                                            <input type="text" name="quantity" class="form-controls input-number" value="1">
                                                            <span class="increase">
                                                                <button type="button"
                                                                    class="btn quantity-right-plus" data-type="plus" data-field="">+
                                                                </button>
                                                            </span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="swiper-slide">
                                    <div class="product-item">
                                        <div class="product-thumb">
                                            <a onclick="openModal()"><img src="assets/images/products/06.png" alt="product"></a>
                                            <span class="batch sale">Sale</span>
                                            <a class="wish-link" href="#">
                                                <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="heart" class="svg-inline--fa fa-heart fa-w-16" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"><path  d="M462.3 62.6C407.5 15.9 326 24.3 275.7 76.2L256 96.5l-19.7-20.3C186.1 24.3 104.5 15.9 49.7 62.6c-62.8 53.6-66.1 149.8-9.9 207.9l193.5 199.8c12.5 12.9 32.8 12.9 45.3 0l193.5-199.8c56.3-58.1 53-154.3-9.8-207.9z"></path></svg>
                                            </a>
                                        </div>
                                        <div class="product-content">
                                            <a href="#" class="cata">Catagory</a>
                                            <h6><a href="product-detail.html" class="product-title">Raddish Vegitable</a></h6>
                                            <p class="quantity">1 kg</p>
                                            <div class="d-flex justify-content-between align-items-center">
                                                <div class="price">$8.00 <del>$10.00</del></div>
                                                <div class="cart-btn-toggle" onclick="cartopen()">
                                                    <span class="cart-btn"><i class="fas fa-shopping-cart"></i> Cart</span>

                                                    <div class="price-btn">
                                                        <div class="price-increase-decrese-group d-flex">
                                                            <span class="decrease-btn">
                                                                <button type="button"
                                                                    class="btn quantity-left-minus" data-type="minus" data-field="">-
                                                                </button>
                                                            </span>
                                                            <input type="text" name="quantity" class="form-controls input-number" value="1">
                                                            <span class="increase">
                                                                <button type="button"
                                                                    class="btn quantity-right-plus" data-type="plus" data-field="">+
                                                                </button>
                                                            </span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- trending product-section end -->
