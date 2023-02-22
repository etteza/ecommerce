@extends('website.layout.app')
@section('title','Welcome to Satota Online Bazar')
@push('css')

@endpush
@section('content')
  <!-- banner-section start -->
@includeIf('website.home.banner')
  <!-- banner-section end -->



  <!-- info-box-section start -->
  @includeIf('website.home.info_box')
  <!-- info-box-section end -->




  <!-- brand section start -->
  @includeIf('website.home.brand')
  <!-- brand section end -->


  <!-- trending product-section start -->
  @includeIf('website.home.trending_product')
  <!-- trending product-section end -->

  <!-- advertisement-section start -->
  @includeIf('website.home.advertisement')
  <!-- advertisement-section start -->





  <!-- recommended product-section start -->
  @includeIf('website.home.recomended_product')

  <!-- recommended product-section end -->


  <!-- advertisement-section start -->
  @includeIf('website.home.advertisement_banar')

  <!-- advertisement-section start -->



  <!-- testimonial-section start -->
  @includeIf('website.home.testimonial')

  <!-- testimonial-section end -->
@endsection
@push('js')

@endpush
