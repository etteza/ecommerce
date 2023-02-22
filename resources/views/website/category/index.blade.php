@extends('website.layout.app')
@section('title','Welcome to Satota Online Bazar')
@push('css')

@endpush
@section('content')
  <!-- page-header-section start -->
  <div class="page-header-section">
      <div class="container">
          <div class="row">
              <div class="col-12 d-flex justify-content-between justify-content-md-end">
                  <ul class="breadcrumb">
                      <li><a href="index-2.html">Home</a></li>
                      <li><span>/</span></li>
                      <li>Fruits & Vegetables</li>
                  </ul>
              </div>
          </div>
      </div>
  </div>
  <!-- page-header-section end -->

  <!-- page-content -->
            <section class="page-content section-ptb-90">
                <div class="container">
                    <div class="row">

                      @includeIf('website.category.left_bar')


                        <div class="col-lg-9">

                            <div class="row product-list">



                              @foreach ($categoryProduct as $row)
                                <div class="col-sm-6 col-xl-4">
                                    <div class="product-item @if($row->product_quantity == 0) stock-out @else  @endif">
                                        <div class="product-thumb">
                                            <a onclick="openModal()"><img src="{{ asset($row->image_one) }}" alt="product"></a>
                                            <span class="batch sale">Sale</span>
                                            <a href="{{ url('add/wishlist/'.$row->id) }}" class="wish-link">
                                                <svg aria-hidden="false" focusable="false" data-prefix="fas" data-icon="heart" class="svg-inline--fa fa-heart fa-w-16" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"><path  d="M462.3 62.6C407.5 15.9 326 24.3 275.7 76.2L256 96.5l-19.7-20.3C186.1 24.3 104.5 15.9 49.7 62.6c-62.8 53.6-66.1 149.8-9.9 207.9l193.5 199.8c12.5 12.9 32.8 12.9 45.3 0l193.5-199.8c56.3-58.1 53-154.3-9.8-207.9z"></path></svg>
                                            </a>
                                        </div>
                                        <div class="product-content">
                                            <a href="#" class="cata">{{ $row->category_name }}</a>
                                            <h6><a href="{{ url('product/details/'.$row->id.'/'.$row->product_name) }}" class="product-title">{{ $row->product_name }}</a></h6>
                                            <p class="quantity">{{ $row->customer_poin }} Pointe</p>
                                            <div class="d-flex justify-content-between align-items-center">
                                                <div class="price">{{ $row->selling_price }} TK <del>{{ $row->regular_price }} TK</del></div>

                                                <div class="cart-btn-toggle">
                                                  <form action="{{ route('insert.into.cart') }}" method="post">
                                                    @csrf
                                                    <input type="hidden" name="product_id" value="{{ $row->id }}">
                                                    <input type="hidden" class="form-control" value="1" name="qty">
                                                    <button type="submit" class="cart-btn"><i class="fas fa-shopping-cart"></i> Cart</button>
                                                    </form>
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
                                  @endforeach
                                <div class="col-12 text-center mt-4">
                                    <button class="loadMore">Load More</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- page-content -->
@endsection
@push('js')

@endpush
