@extends('website.layout.app')
@section('title','Dashboard')
@push('css')

@endpush
@section('content')
  @php
    $order=DB::table('orders')->where('user_id',Auth::id())->orderBy('id','DESC')->limit(10)->get();
  @endphp
  <!-- page-header-section start -->
              <div class="page-header-section">
                  <div class="container">
                      <div class="row">
                          <div class="col-12 d-flex justify-content-between justify-content-md-start">
                              <ul class="breadcrumb">
                                  <li><a href="index-2.html">Home</a></li>
                                  <li><span>/</span></li>
                                  <li>My Account</li>
                              </ul>
                          </div>
                      </div>
                  </div>
              </div>
              <!-- page-header-section end -->

              <!-- admin-page start -->
            <section class="admin-page-section d-flex align-items-center">
                <div class="aps-wrapper w-100">
                    <div class="container">
                        <div class="row justify-content-center justify-content-md-start">
                            <div class="admin-content-area">
                                <div class="admin-thumb">
                                    <img src="{{ asset('/') }}public/assets/images/admin/thumb.jpg" alt="">
                                    <a href="#" class="image-change-option"><i class="fas fa-camera"></i></a>
                                </div>
                                <div class="admin-content">
                                    <h4 class="name">Jhone Doe</h4>
                                    <p class="desc">Lorem Ipsum is simply dummy text.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- admin-page end -->

            <!-- dashboard-section start -->
         <section id="dashboard-section" class="dashboard-section">
             <div class="container">
                 <div class="row">



                    @includeIf('website.users.home.pages.left_menu')



                     <div class="col-lg-9">
                       <div class="dashboard-body wishlist">
                               <div class="wishlist-header">
                                   <h6>My Wishlist</h6>
                               </div>
                               <div class="wish-list-container">

                                 @foreach($product as $row)

                                   <div class="wishlist-item product-item d-flex align-items-center">
                                       <a href="{{ route('wishlistRemove',$row->id) }}"><span class="close-item"><i class="fas fa-times"></i></span></a>
                                       <div class="thumb">
                                           <a onclick="openModal()"><img style="height:150px;" src="{{ asset( $row->image_one) }}" alt="products"></a>
                                       </div>
                                       <div class="product-content">
                                           <a href="product-detail.html" class="product-title">{{ $row->product_name }}</a>
                                           <div class="product-cart-info">
                                               Point
                                           </div>
                                           <div class="product-price">
                                               <del>{{ $row->regular_price }} TK</del><span class="ml-4">{{ $row->selling_price }} TK</span>
                                           </div>

                                           <div class="cart-btn-toggle">
                                               <a href="{{ route('wishlistCate',$row->id) }}"><span class="cart-btn"><i class="fas fa-shopping-cart"></i> Cart</span></a>
                                               <div class="price-btn">
                                                   <div class="price-increase-decrese-group d-flex">
                                                       <span class="decrease-btn">
                                                           <button type="button" class="btn quantity-left-minus" data-type="minus" data-field="">-
                                                           </button>
                                                       </span>
                                                       <input type="text" name="quantity" class="form-controls input-number" value="1">
                                                       <span class="increase">
                                                           <button type="button" class="btn quantity-right-plus" data-type="plus" data-field="">+
                                                           </button>
                                                       </span>
                                                   </div>
                                               </div>
                                           </div>
                                       </div>
                                   </div>

                   								@endforeach

                               </div>
                           </div>
                     </div>
                 </div>
             </div>
         </section>
         <!-- dashboard-section end -->
@endsection
@push('js')

@endpush
