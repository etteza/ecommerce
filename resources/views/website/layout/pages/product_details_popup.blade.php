<section id="product-details-popup-xxxxx" class="product-details-popup">
    <div class="modal-overlay" onclick="closeModal()"></div>
    <div class="container">
        <div class="product-zoom-info-container">
            <div id="closed-modal" class="closed-modal" onclick="closeModal()">X</div>
            <div class="row align-items-center">
                <div class="col-lg-6">
                    <div class="product-zoom-area">
                        <span class="batch">30%</span>
                        <div class="cart-btn-toggle d-lg-none">
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
                        <div class="product-slick">
                            <div><img src="{{ asset('/') }}public/assets/images/product-detail/01.jpg" alt=""
                                    class="img-fluid blur-up lazyload image_zoom_cls-0"></div>
                            <div><img src="{{ asset('/') }}public/assets/images/product-detail/02.jpg" alt=""
                                    class="img-fluid blur-up lazyload image_zoom_cls-1"></div>
                            <div><img src="{{ asset('/') }}public/assets/images/product-detail/03.jpg" alt=""
                                    class="img-fluid blur-up lazyload image_zoom_cls-2"></div>
                            <div><img src="{{ asset('/') }}public/assets/images/product-detail/01.jpg" alt=""
                                    class="img-fluid blur-up lazyload image_zoom_cls-3"></div>
                            <!-- <div><img src="{{ asset('/') }}public/assets/images/product-detail/02.jpg" alt=""
                                    class="img-fluid blur-up lazyload image_zoom_cls-4"></div> -->
                        </div>
                        <div class="row">
                            <div class="col-12">
                                <div class="slider-nav">
                                    <div><img src="{{ asset('/') }}public/assets/images/product-detail/01.jpg" alt=""
                                            class="img-fluid blur-up lazyload"></div>
                                    <div><img src="{{ asset('/') }}public/assets/images/product-detail/02.jpg" alt=""
                                            class="img-fluid blur-up lazyload"></div>
                                    <div><img src="{{ asset('/') }}public/assets/images/product-detail/03.jpg" alt=""
                                            class="img-fluid blur-up lazyload"></div>
                                    <div><img src="{{ asset('/') }}public/assets/images/product-detail/01.jpg" alt=""
                                            class="img-fluid blur-up lazyload"></div>
                                    <!-- <div><img src="{{ asset('/') }}public/assets/images/product-detail/02.jpg" alt=""
                                            class="img-fluid blur-up lazyload"></div> -->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="product-details-content">
                        <a class="wish-link" href="#">
                            <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="heart" class="svg-inline--fa fa-heart fa-w-16" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"><path d="M462.3 62.6C407.5 15.9 326 24.3 275.7 76.2L256 96.5l-19.7-20.3C186.1 24.3 104.5 15.9 49.7 62.6c-62.8 53.6-66.1 149.8-9.9 207.9l193.5 199.8c12.5 12.9 32.8 12.9 45.3 0l193.5-199.8c56.3-58.1 53-154.3-9.8-207.9z"></path></svg>
                        </a>
                        <a href="#" class="cata">Catagory</a>
                        <h2 id="pname">Test Product</h2>
                        <p class="quantity">1kg</p>
                        <h3 class="price">$329 <del>$400</del></h3>
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
                        <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penas et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem.</p>
                        <div class="d-flex justify-content-end">
                            <a href="#" class="buy-now">Buy Now</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
