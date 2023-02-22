@php
  $sitesetting = DB::table('sitesetting')->first();
@endphp
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>@yield('title') - Satota Onlne Bazar</title>
    <link rel="shortcut icon" type="image/png" href="{{ asset('/') }}public/assets/images/favicon.png" />
    <link rel="stylesheet" href="{{ asset('/') }}public/assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="{{ asset('/') }}public/assets/css/all.min.css">
    <link rel="stylesheet" href="{{ asset('/') }}public/assets/css/animate.css">
    <link rel="stylesheet" href="{{ asset('/') }}public/assets/css/swiper.min.css">
    <link rel="stylesheet" type="text/css" href="{{ asset('/') }}public/assets/css/slick.css">
     <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.css">
    <link rel="stylesheet" type="text/css" href="{{ asset('/') }}public/assets/css/slick-theme.css">
    <link rel="stylesheet" href="{{ asset('/') }}public/assets/css/custom-select.css">
    <link rel="stylesheet" href="{{ asset('/') }}public/assets/css/style.css">
</head>
<body id="top-page">

    @includeIf('website.layout.pages.top')

     <!--search Modal -->
     @includeIf('website.layout.pages.search')


    <!-- Mobile menu modal -->
    @includeIf('website.layout.pages.mobile_menu')


    <!-- sidebar-cart -->
    @includeIf('website.layout.pages.sidebar_cart')


    <!-- header section start -->
    @includeIf('website.layout.header')
    <!-- header section end -->


    <div class="page-layout">
      <!-- catagory-sidebar-area -->
      @includeIf('website.layout.sidebar')


      <!--   main-content-area -->
        <div class="main-content-area">

          @yield('content')

            <!-- footer section -->
      @includeIf('website.layout.footer')
            <!-- footer section -->
        </div><!-- End  main-content-area -->
    </div>



    <!-- product-details-popup start -->
    @include('website.layout.pages.product_details_popup')

    <!-- product-details-popup end -->


    <!-- login-area -->
    @include('website.layout.pages.login')

    <!-- login-area -->


    <!-- mobile-footer -->
    @include('website.layout.pages.mobile_footer')
    <!-- mobile-footer -->





<a href="#top-page" class="to-top js-scroll-trigger"><span><i class="fas fa-arrow-up"></i></span></a>
    <script src='{{ asset('/') }}public/assets/js/jquery.min.js'></script>
    <script src='{{ asset('/') }}public/assets/js/bootstrap.bundle.min.js'></script>
    <script src='{{ asset('/') }}public/assets/js/swiper.min.js'></script>
    <script src="{{ asset('/') }}public/assets/js/slick.js"></script>
    <script src='{{ asset('/') }}public/assets/js/jquery-easeing.min.js'></script>
    <script src='{{ asset('/') }}public/assets/js/scroll-nav.js'></script>
    <script src="{{ asset('/') }}public/assets/js/jquery.elevatezoom.js"></script>
    <script src='{{ asset('/') }}public/assets/js/price-range.js'></script>
    <script src='{{ asset('/') }}public/assets/js/custom-select.js'></script>
    <script src='{{ asset('/') }}public/assets/js/multi-countdown.js'></script>
    <script src='{{ asset('/') }}public/assets/js/fly-cart.js'></script>
    <script src='{{ asset('/') }}public/assets/js/theia-sticky-sidebar.js'></script>
    <script src='{{ asset('/') }}public/assets/js/functions.js'></script>
    @stack('js')
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/js/toastr.min.js"></script>
    <script>
        @if(Session::has('messege'))
          var type="{{Session::get('alert-type','info')}}"
          switch(type){
              case 'info':
                   toastr.info("{{ Session::get('messege') }}");
                   break;
              case 'success':
                  toastr.success("{{ Session::get('messege') }}");
                  break;
              case 'warning':
                 toastr.warning("{{ Session::get('messege') }}");
                  break;
              case 'error':
                  toastr.error("{{ Session::get('messege') }}");
                  break;
          }
        @endif

        @if($errors->any())
        @foreach($errors->all() as $error)
        toastr.error("{{$error}}");

        @endforeach
        @endif
     </script>

</body>
</html>
