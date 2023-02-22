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
                     <li><a href="{{ url('/') }}">Home</a></li>
                     <li><span>/</span></li>
                     <li>Sing In</li>
                 </ul>
             </div>
         </div>
     </div>
 </div>
 <!-- page-header-section end -->

<section class="login-section section-ptb">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-lg-6 mb--30 mb-lg-0">
                <div class="eflux-login-form-area">
                      <form action="{{ route('login') }}" id="contact_form" method="post" class="eflux-login-form">
                          @csrf
                              <div class="input-item">
                                  <label>Mobile</label>
                                  <input type="text" name="phone" placeholder="Mobile" min="11" max="12" value="{{ old('phone') }}" required/>
                              </div>

                        <div class="input-item">
                            <label>Password</label>
                            <input type="password" name="password" placeholder="Password"/>
                        </div>

                        <div>
                            <button type="submit" class="submit">Sign in</button>
                            <a href="{{ route('forgotPassword') }}"  class="signup-btn" style="margin-left: 20px;color:green;">Forgot Password</a>
                        </div>
                    </form>
                </div>
            </div>
            <div class="col-lg-5 pl-lg-5">
                <div class="new-customer-container">
                    <h6>New Customer</h6>
                    <div class="new-customer-box">
                        <h6>Create a New Account</h6>
                        <p>Sign up for a free account at our store. Registration is quick and easy. It allows you to be able to order from our shop. To start shopping click register.</p>
                        <a href="{{ route('register') }}"  class="signup-btn">Sign Up</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
@endsection
@push('js')

@endpush
