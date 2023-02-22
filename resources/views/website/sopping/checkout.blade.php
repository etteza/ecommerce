@extends('website.layout.app')
@section('title','Welcome to Satota Online Bazar')
@push('css')

@endpush
@section('content')
  @php
  	$setting=DB::table('settings')->first();
  	$charge=$setting->shipping_charge;

  @endphp
  <!-- page-header-section start -->
<div class="page-header-section">
    <div class="container">
        <div class="row">
            <div class="col-12 d-flex justify-content-between justify-content-md-start">
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

<!-- dashboard-section start -->
<section class="dashboard-section">
    <div class="container">
        <div class="row">
            <div class="col-lg-7">
              @if(Session::has('coupon'))
              @else
                <div class="form-item contact-number-item bg-color-white box-shadow p-3 p-lg-5 border-radius5">
                    <h6>Apply Coupon</h6>
                    <div class="mb-2">
                        <form action="{{ route('apply.coupon') }}" method="post" class="send-code-form">
                           @csrf
                            <input type="text" name="coupon">
                            <button class="submit" type="submit">Submit</button>
                        </form>
                    </div>
                </div>
                @endif

                <form action="{{ route('payment.process') }}" method="post">
                    @csrf
                <div class="form-item billing-item bg-color-white box-shadow p-3 p-lg-5 border-radius5">
                    <h6>Shipping Address</h6>
                        <div class="row billing-form">
                            <div class="col-lg-12">
                                <div class="input-item">
                                    <label>Name*</label>
                                    <input type="text" name="name" placeholder="Full Name" required>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="input-item">
                                    <label>Mobile*</label>
                                    <input type="text" name="phone" placeholder="Mobile Number" required>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="input-item">
                                    <label>Address*</label>
                                    <input type="text" name="address" placeholder="Address" required>
                                </div>
                            </div>
                        </div>
                </div>

                <div class="form-item payment-item bg-color-white box-shadow p-3 p-lg-5 border-radius5">
                    <h6>Payment</h6>

                        <div class="input-item radio">
                            <input type="radio" name="payment" value="check payment" disabled>
                            <label>Check Payment</label>
                        </div>

                        <div class="input-item radio">
                            <input type="radio" name="payment" value="cash" required>
                            <label>Cash on delivary</label>
                        </div>

                        <div class="input-item radio">
                            <input type="radio" name="payment" value="paypal" disabled>
                            <label>Paypal</label>
                        </div>
                    <div class="payment-image">
                        <img src="{{ asset('') }}public/assets/images/payment/01.png" alt="payment">
                    </div>
                    <div class="text-right">
                        <button type="submit" class="place-order-btn">Place Order</button>
                    </div>
                </div>
            </form>
            </div>





            <div class="col-lg-5">
                <div class="cart-item sitebar-cart bg-color-white box-shadow p-3 p-lg-5 border-radius5">
                    <div class="cart-product-container">


                      @foreach ($cart as  $row)

                          <div class="cart-product-item">
                            <div class="close-item"><a href="{{ url('remove/cart/'.$row->rowId) }}"><i class="fas fa-times"></i></a></div>
                            <div class="row align-items-center">
                                <div class="col-5 p-0">
                                    <div class="thumb">
                                        <a href="#"><img src="{{ asset( $row->options->image) }}" alt="products"></a>
                                    </div>
                                </div>
                                <div class="col-7">
                                    <div class="product-content">
                                        <a href="#" class="product-title">{{ $row->name }}</a>
                                        <div class="product-cart-info">
                                            1x 31b
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row align-items-center">
                                <div class="col-5">
                                  @if(Session::has('coupon'))

                                  @else
                                    <div class="price-increase-decrese-group d-flex">
                                        <span class="decrease-btn">
                                          <form action="{{ route('cartDown') }}" method="post">
                                            @csrf
                                            <input type="hidden" name="productid" value="{{ $row->rowId }}">
                                            <input type="hidden" name="quantity" value="{{ $row->qty }}">
                                            <button type="submit"
                                                class="btn quantity-left-minus" data-type="minus" data-field="">-
                                            </button>
                                            </form>
                                        </span>
                                        <input type="text" name="quantity" class="form-controls input-number" value="{{ $row->qty }}">
                                        <span class="increase">
                                          <form action="{{ route('cartUp') }}" method="post">
                                            @csrf
                                            <input type="hidden" name="productid" value="{{ $row->rowId }}">
                                            <input type="hidden" name="quantity" value="{{ $row->qty }}">
                                            <button type="submit"
                                                class="btn quantity-right-plus" data-type="plus" data-field="">+
                                            </button>
                                          </form>
                                        </span>
                                    </div>
                                  @endif
                                </div>
                                <div class="col-7">
                                    <div class="product-price">
                                        {{ $row->price }} TK <span class="ml-1"> | {{ $row->price * $row->qty }} TK</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                  @endforeach

                    </div>



                    <div class="cart-footer">
                        <div class="product-other-charge">
                            <p class="d-flex justify-content-between">
                                <span>Delevery charge</span>
                                <span>$8.00</span>
                            </p>
                            <a href="#">Do you have a voucher?</a>
                        </div>

                        <div class="cart-total">
                            @if(Session::has('coupon'))
                            <p class="saving d-flex justify-content-between">
                                <span>Sub Total</span>
                                <span>{{ Session::get('coupon')['balance'] }} TK</span>
                            </p>
                            <hr>
                            <p class="saving d-flex justify-content-between">
                                <span>Coupon ({{   Session::get('coupon')['name'] }}) <a href="{{ route('coupon.remove') }}"
          												 class="btn btn-danger btn-sm">x</a></span>
                                <span>{{ Session::get('coupon')['discount'] }} TK</span>
                            </p>
                            <hr>
                            <p class="saving d-flex justify-content-between">
                                <span>Shipping Charge </span>
                                <span>{{ $charge }} TK</span>
                            </p>
                          @else
                            <p class="saving d-flex justify-content-between">
                                <span>Sub Total</span>
                                <span>{{ Cart::Subtotal() }} TK</span>
                            </p>
                          @endif
                          <hr>
                            <p class="total-price d-flex justify-content-between">
                                <span>Total</span>
                                @if(Session::has('coupon'))
                                  <span>{{ Session::get('coupon')['balance'] + $charge }} TK</span>
                                @else
                                <span>{{ Cart::Subtotal() + $charge }} TK</span>
                                @endif
                            </p>
                        </div>
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
