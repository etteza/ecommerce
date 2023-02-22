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
                     <li>Forgot Password</li>
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
                      <form action="{{ route('forgotPasswordUpdate') }}" id="contact_form" method="post" class="eflux-login-form">
                          @csrf
                              <div class="input-item">
                                  <label>Mobile Number</label>
                                  <input type="text" name="phone" placeholder="Enter Register Mobile Number" min="11" max="12" value="{{ old('phone') }}" />
                              </div>

                        <div class="input-item">
                            <label>New Password</label>
                            <input type="password" name="password" placeholder="Enter New Password"/>
                        </div>

                        <div>
                            <button type="submit" class="submit">Update Password</button>
                        </div>
                    </form>
                </div>
            </div>
            <div class="col-lg-5 pl-lg-5">
                <div class="new-customer-container">
                    <div class="new-customer-box">
                      <a href="{{ route('login') }}"  class="signup-btn" style="margin-left: 45px;">Log In</a>
                      <a href="{{ route('register') }}"  class="signup-btn" style="margin-left: 10px;">Register</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
@endsection
@push('js')

@endpush
