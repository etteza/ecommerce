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
                       <div class="my-account-box">
                               <div class="my-account-header">
                                   <h6>My Account</h6>
                               </div>
                               <div class="my-account-body">
                                   <form action="#" class="eflux-login-form">
                                       <div class="row">
                                           <div class="col-lg-6">
                                               <div class="input-item">
                                                   <label>Your Name</label>
                                                   <input type="text" name="name">
                                               </div>
                                           </div>

                                           <div class="col-lg-6">
                                               <div class="input-item">
                                                   <label>Email Address</label>
                                                   <input type="email" name="email">
                                               </div>
                                           </div>

                                           <div class="col-lg-6">
                                               <div class="input-item">
                                                   <label>Mobile Number</label>
                                                   <input type="text" name="number">
                                               </div>
                                           </div>

                                           <div class="col-lg-6">
                                               <div class="input-item">
                                                   <label>Website</label>
                                                   <input type="text" name="website">
                                               </div>
                                           </div>
                                       </div>

                                       <div>
                                           <button type="submit" class="submit">Save Changes</button>
                                       </div>
                                   </form>
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
