@php
  $brand = DB::table('brands')->get();
@endphp
<section class="catagory-section">
    <div class="container p-lg-0">
        <div class="section-heading">
            <h4 class="heading-title"><span class="heading-circle green"></span> Brand</h4>
        </div>

        <div class="section-wrapper">
            <!-- Add Arrows -->
            <div class="slider-btn-group">
                <div class="slider-btn-prev catagory-slider-prev">
                    <svg version="1.1"  xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
    viewBox="0 0 443.52 443.52" style="enable-background:new 0 0 443.52 443.52;" xml:space="preserve"><g><path d="M143.492,221.863L336.226,29.129c6.663-6.664,6.663-17.468,0-24.132c-6.665-6.662-17.468-6.662-24.132,0l-204.8,204.8
            c-6.662,6.664-6.662,17.468,0,24.132l204.8,204.8c6.78,6.548,17.584,6.36,24.132-0.42c6.387-6.614,6.387-17.099,0-23.712
            L143.492,221.863z"/></g></svg>
                </div>
                <div class="slider-btn-next catagory-slider-next">
                    <svg version="1.1"  xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 512.002 512.002" style="enable-background:new 0 0 512.002 512.002;" xml:space="preserve"><g><path d="M388.425,241.951L151.609,5.79c-7.759-7.733-20.321-7.72-28.067,0.04c-7.74,7.759-7.72,20.328,0.04,28.067l222.72,222.105
            L123.574,478.106c-7.759,7.74-7.779,20.301-0.04,28.061c3.883,3.89,8.97,5.835,14.057,5.835c5.074,0,10.141-1.932,14.017-5.795
            l236.817-236.155c3.737-3.718,5.834-8.778,5.834-14.05S392.156,245.676,388.425,241.951z"/></g></svg>
                </div>
            </div>
            <div class="catagory-container">
                <div class="swiper-wrapper">

                  @foreach ($brand as $value)
                    <div class="swiper-slide">
                        <a href="{{ url('/product/brand/'.$value->id.'/'.$value->brand_name) }}" class="catagory-item">
                            <div class="catagory-icon">
                                  <img src="{{ $value->brand_logo }}" alt="" width="100" height="100">
                            </div>
                            <p class="catagory-name">{{ $value->brand_name }}</p>
                        </a>
                    </div>
                    @endforeach

                </div>
            </div>
        </div>
    </div>
</section>
