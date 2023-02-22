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


            <!-- product-zoom-info section start -->
            @includeIf('website.singel_pages.product_zoom')
       <!-- product-zoom-info section end -->


       @includeIf('website.singel_pages.review_area')


       @includeIf('website.singel_pages.trending_product')
@endsection
@push('js')
@endpush
