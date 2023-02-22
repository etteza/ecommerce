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
                      <li><span>/</span></li>
                      <li>Sing Up</li>
                  </ul>
              </div>
          </div>
      </div>
  </div>
  <!-- page-header-section end -->
  <section class="login-section section-ptb">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-lg-12">
                <div class="eflux-login-form-area">
                      <form action="{{ route('register') }}" id="contact_form" method="post" class="eflux-login-form">
                          @csrf
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="input-item">
                                    <label>Name</label>
                                    <input type="text" name="name" placeholder="Name" value="{{ old('name') }}" required/>
                                </div>
                            </div>

                            <div class="col-lg-6">
                                <div class="input-item">
                                    <label>Mobile</label>
                                    <input type="text" name="phone" placeholder="Mobile" min="11" max="12" value="{{ old('phone') }}" required/>
                                </div>
                            </div>

                            <div class="col-lg-6">
                                <div class="input-item">
                                    <label>Password</label>
                                    <input type="password" name="password" value="{{ old('password') }}" placeholder="Password" required/>
                                </div>
                            </div>

                            <div class="col-lg-6">
                                <div class="input-item">
                                    <label>Confirm Password</label>
                                    <input type="password" name="password_confirmation" placeholder="Re-type Password" required/>
                                </div>
                            </div>
                        </div>

                        <div>
                            <button type="submit" class="submit">Create Account</button>
                            <a href="{{ route('login') }}"  class="signup-btn" style="margin-left: 20px;color:green;">Login</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>
@endsection
@push('js')

@endpush
