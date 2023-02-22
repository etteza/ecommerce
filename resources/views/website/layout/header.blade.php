<header class="header">
    <div class="header-top">
        <div class="mobile-header d-flex justify-content-between align-items-center d-xl-none">
            <div class="all-catagory-option mobile-device">
                <a class="bar-btn"><i class="fas fa-bars"></i><span class="ml-2 d-none d-md-inline">All Catagories</span></a>
                <a class="close-btn"><i class="fas fa-times"></i><span class="ml-2 d-none d-md-inline">All Catagories</span></a>
            </div>
            <a href="index-2.html" class="logo"><img src="{{ asset('/') }}public/assets/images/logo.png" alt="logo"></a>

            <!-- search select -->
            <div class="text-center mobile-search">
                <button type="button" data-toggle="modal" data-target="#search-select-id"><i class="fas fa-search"></i></button>
            </div>

            <!-- menubar -->
            <div>
                <button class="menu-bar" type="button" data-toggle="modal" data-target="#menu-id">
                    Home<i class="fas fa-caret-down"></i>
                </button>
            </div>

        </div>
        <div class="d-none d-xl-flex row align-items-center">
            <div class="col-5 col-md-9 col-lg-5">
                <ul class="site-action d-none d-lg-flex justify-content-start align-items-center">
                    <li class="site-phone mr-4"><a href="tel:{{ $sitesetting->phone_one }}"><i class="fas fa-phone"></i> {{ $sitesetting->phone_one }}</a></li>
                    <li class="site-help"><a href="#"><i class="fas fa-question-circle"></i> Help & More</a></li>
                </ul>
            </div>
            <div class="col-5 col-md-2">
                <a href="{{ url('/') }}" class="logo"><img src="{{ asset('/') }}public/assets/images/logo.png" alt="logo"></a>
            </div>
            <div class="col-2 col-md-1 col-lg-5">
                <ul class="site-action d-none d-lg-flex justify-content-end align-items-center ml-auto">
                    <li class="wish-list mr-4">
                      <div class="text-center mobile-search">
                          <button type="button" data-toggle="modal" data-target="#search-select-id"><i class="fas fa-search"></i></button>
                      </div>
                    </li>
                    @php
                      $userid=Auth::id();
                      $wlist =  DB::table('wishlists')->where('user_id',$userid)->get();
                    @endphp
                  <li class="wish-list mr-4"><a href="{{ route('user.wishlist') }}"><i class="fas fa-heart"></i> <span class="count">{{ count($wlist) }}</span></a></li>
                    @guest
                      <li class="signin-option"><a onclick="OpenSignUpForm()" href="#"><i class="fas fa-user mr-2"></i>Sign In</a></li>
                      @else
                        <li class="my-account item-has-children">
                            <a href="{{ route('home') }}"><i class="fas fa-user mr-1"></i> My Account</a>
                            <ul class="submenu">
                                <li><a class="active" href="{{ route('home') }}">Profile</a></li>
                                <li><a href="{{ route('user.logout') }}">Sign Out</a></li>
                            </ul>
                        </li>
                  @endguest
                </ul>
            </div>

        </div>
    </div>
    <hr>
    <div class="header-bottom">
        <div class="row m-0 align-items-center mega-menu-relative">
            <div class="col-md-2 p-0 d-none d-xl-block">
                <div class="all-catagory-option">
                    <a class="bar-btn"><i class="fas fa-bars"></i>All Catagories</a>
                    <a class="close-btn"><i class="fas fa-times"></i>All Catagories</a>
                </div>
            </div>
            <div class="col-md-8">
                <div class="menu-area d-none d-xl-flex justify-content-between align-items-center">
                    <ul class="menu d-xl-flex flex-wrap list-unstyled">
                        <li><a href="{{ url('/') }}">Home </a></li>
                        <li><a href="#">New Products</a></li>
                        <li class="item-has-mega-menu"><a href="#">Featured Products <i class="fas fa-angle-down"></i></a>
                            <div class="mega-menu-container">
                                <div class="row m-0">
                                    <div class="col-lg-7">
                                        <div class="row m-0">
                                            <div class="col-lg-4">
                                                <div class="ctagory-item">
                                                    <h6 class="title">Vegetables</h6>
                                                    <ul>
                                                        <li><a href="">Artichoke.</a></li>
                                                        <li><a href="">Aubergune</a></li>
                                                        <li><a href="">Asparagus</a></li>
                                                        <li><a href="">Broccoflower</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="ctagory-item">
                                                    <h6 class="title">Frouts</h6>
                                                    <ul>
                                                        <li><a href="">Artichoke.</a></li>
                                                        <li><a href="">Aubergune</a></li>
                                                        <li><a href="">Asparagus</a></li>
                                                        <li><a href="">Broccoflower</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="ctagory-item">
                                                    <h6 class="title">Salads</h6>
                                                    <ul>
                                                        <li><a href="">Artichoke.</a></li>
                                                        <li><a href="">Aubergune</a></li>
                                                        <li><a href="">Asparagus</a></li>
                                                        <li><a href="">Broccoflower</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="ctagory-item">
                                                    <h6 class="title">Health Care</h6>
                                                    <ul>
                                                        <li><a href="">Artichoke.</a></li>
                                                        <li><a href="">Aubergune</a></li>
                                                        <li><a href="">Asparagus</a></li>
                                                        <li><a href="">Broccoflower</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="ctagory-item">
                                                    <h6 class="title">Vegetables</h6>
                                                    <ul>
                                                        <li><a href="">Artichoke.</a></li>
                                                        <li><a href="">Aubergune</a></li>
                                                        <li><a href="">Asparagus</a></li>
                                                        <li><a href="">Broccoflower</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="ctagory-item">
                                                    <h6 class="title">Frouts</h6>
                                                    <ul>
                                                        <li><a href="">Artichoke.</a></li>
                                                        <li><a href="">Aubergune</a></li>
                                                        <li><a href="">Asparagus</a></li>
                                                        <li><a href="">Broccoflower</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-5">
                                        <div class="menu-img">
                                            <img class="w-100" src="{{ asset('/') }}public/assets/images/mega-menu-img.png" alt="menu-image">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li><a href="">Contact Us</a></li>
                    </ul>
                </div>
            </div>
            @php
              $cart=Cart::content();
            @endphp
            <div class="col-md-2 p-0 d-none d-xl-block">
                <div class="menu-area d-flex justify-content-end">
                    <ul class="menu-action d-none d-lg-block">
                        <li class="cart-option">
                          <a onclick="cartopen()" href="javascript:void(0)">
                            <span class="cart-icon"><i class="fas fa-shopping-cart"></i>
                              <span class="count">{{ count($cart) }}</span>
                          </span> <span class="cart-amount">{{ Cart::Subtotal() }} TK</span></a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</header>
