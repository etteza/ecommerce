<section class="product-zoom-info-section section-ptb">
    <div class="container">
        <div class="product-zoom-info-container">
            <div class="row align-items-center">
                <div class="col-lg-6">
                    <div class="product-zoom-area">
                        <span class="batch">30%</span>
                            <div class="product-slick">
                                <div><img src="{{ asset($product->image_one) }}" alt=""
                                        class="img-fluid blur-up lazyload image_zoom_cls-0"></div>
                                <div><img src="{{ asset($product->image_two) }}" alt=""
                                        class="img-fluid blur-up lazyload image_zoom_cls-1"></div>
                                <div><img src="{{ asset($product->image_three) }}" alt=""
                                        class="img-fluid blur-up lazyload image_zoom_cls-2"></div>
                                <!-- <div><img src="assets/images/product-detail/02.jpg" alt=""
                                        class="img-fluid blur-up lazyload image_zoom_cls-4"></div> -->
                            </div>
                            <div class="row">
                                <div class="col-12">
                                    <div class="slider-nav">
                                        <div><img src="{{ asset($product->image_one) }}" alt=""
                                                class="img-fluid blur-up lazyload"></div>
                                        <div><img src="{{ asset($product->image_two) }}" alt=""
                                                class="img-fluid blur-up lazyload"></div>
                                        <div><img src="{{ asset($product->image_three) }}" alt=""
                                                class="img-fluid blur-up lazyload"></div>
                                        <!-- <div><img src="assets/images/product-detail/02.jpg" alt=""
                                                class="img-fluid blur-up lazyload"></div> -->
                                    </div>
                                </div>
                            </div>
                    </div>
                </div>
                <div class="col-lg-6">
                  <form action="{{ url('cart/product/add/'.$product->id) }}" method="post">
    								@csrf
                    <div class="product-details-content">
                        <a class="wish-link" href="#">
                            <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="heart" class="svg-inline--fa fa-heart fa-w-16" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"><path d="M462.3 62.6C407.5 15.9 326 24.3 275.7 76.2L256 96.5l-19.7-20.3C186.1 24.3 104.5 15.9 49.7 62.6c-62.8 53.6-66.1 149.8-9.9 207.9l193.5 199.8c12.5 12.9 32.8 12.9 45.3 0l193.5-199.8c56.3-58.1 53-154.3-9.8-207.9z"></path></svg>
                        </a>
                        <a href="#" class="cata">{{ $product->product_name }}</a>
                        <h2>{{ $product->product_name }}</h2>
                        <p class="quantity">{{ $product->customer_poin }}</p>
                        <h3 class="price">{{ $product->selling_price }} TK <del>{{ $product->regular_price }} TK</del></h3>
                        <div class="price-increase-decrese-group d-flex">

                            <span class="decrease-btn">
                                <button type="button"
                                    class="btn quantity-left-minus" data-type="minus" data-field="">-
                                </button>
                            </span>
                            <input type="text" name="qty" class="form-controls input-number" value="1">
                            <span class="increase">
                                <button type="button"
                                    class="btn quantity-right-plus" data-type="plus" data-field="">+
                                </button>
                            </span>

                        </div>
                        <p></p>
                        <div class="d-flex justify-content-end">
                            <button type="submit" class="buy-now">Buy Now</button>
                        </div>
                    </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>
