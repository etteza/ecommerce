@extends('website.layout.app')
@section('title','Address')
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
                       <div class="dashboard-body">
                                <div class="profile-address-book">
                                    <h3 class="title">Address Book</h3>
                                    <ul class="address-list">
                                        <li class="active">
                                            <span class="icon"><i class="fas fa-check-circle"></i></span>
                                            <div class="address-text">
                                                <h6>Office</h6>
                                                <p class="address">2548 Broaddus Maple Court Avenue, Madisonville KY 4783, United States of America</p>
                                                <p class="country">America</p>
                                            </div>
                                            <div class="edit-delete-btn">
                                                <button class="edit" type="button" data-toggle="modal" data-target="#address-edit"><i class="fas fa-edit"></i></button>
                                                <button class="delete"><i class="fas fa-trash-alt"></i></button>
                                            </div>
                                        </li>

                                        <li>
                                            <span class="icon"><i class="fas fa-check-circle"></i></span>
                                            <div class="address-text">
                                                <h6>Home</h6>
                                                <p class="address">2548 Broaddus Maple Court Avenue, Madisonville KY 4783, United States of America</p>
                                                <p class="country">America</p>
                                            </div>
                                            <div class="edit-delete-btn">
                                                <button class="edit" type="button" data-toggle="modal" data-target="#address-edit"><i class="fas fa-edit"></i></button>
                                                <button class="delete"><i class="fas fa-trash-alt"></i></button>
                                            </div>
                                        </li>

                                        <li>
                                            <span class="icon"><i class="fas fa-check-circle"></i></span>
                                            <div class="address-text">
                                                <h6>Office2</h6>
                                                <p class="address">2548 Broaddus Maple Court Avenue, Madisonville KY 4783, United States of America</p>
                                                <p class="country">America</p>
                                            </div>
                                            <div class="edit-delete-btn">
                                                <button class="edit" type="button" data-toggle="modal" data-target="#address-edit"><i class="fas fa-edit"></i></button>
                                                <button class="delete"><i class="fas fa-trash-alt"></i></button>
                                            </div>
                                        </li>

                                        <li>
                                            <span class="icon"><i class="fas fa-check-circle"></i></span>
                                            <div class="address-text">
                                                <h6>Home2</h6>
                                                <p class="address">2548 Broaddus Maple Court Avenue, Madisonville KY 4783, United States of America</p>
                                                <p class="country">America</p>
                                            </div>
                                            <div class="edit-delete-btn">
                                                <button class="edit" type="button" data-toggle="modal" data-target="#address-edit"><i class="fas fa-edit"></i></button>
                                                <button class="delete"><i class="fas fa-trash-alt"></i></button>
                                            </div>
                                        </li>
                                        <li class="addnew">
                                            <button type="button" data-toggle="modal" data-target="#address-add" class="add-new-btn">Add New Address</button>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                     </div>
                 </div>
             </div>
         </section>
         <!-- dashboard-section end -->

         <!-- menu modal -->
<div class="modal fade address-edit-box" id="address-edit" tabindex="-1" aria-labelledby="address-edit" aria-hidden="true">
    <div class="modal-dialog  modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-body">
                <h4>Edit Your Address</h4>
                <form action="#" class="address-form">
                    <!-- <div class="input-item">
                        <label>Address Type</label>
                        <input type="text" name="name" placeholder="Home">
                    </div> -->
                    <div class="input-item">
                        <label>Address</label>
                        <input type="text" name="name" placeholder="2548 Broaddus Maple Court Avenue">
                    </div>
                    <div class="input-item">
                        <label>City</label>
                        <div class="flux-custom-select">
                            <select>
                              <option value="0">Alberta</option>
                              <option value="1">British Columbia</option>
                              <option value="2">Manitoba</option>
                              <option value="3">New Brunswick</option>
                              <option value="4">Nova Scotia</option>
                              <option value="5">Ontario</option>
                            </select>
                        </div>
                    </div>
                    <div class="input-item">
                        <label>State</label>
                        <!-- <input type="text" name="name" placeholder="Sun fransico"> -->
                        <div class="flux-custom-select">
                            <select>
                              <option value="0">Nunavut</option>
                              <option value="1">Northwest Territories</option>
                              <option value="2"> Ontario</option>
                              <option value="3">British Columbia</option>
                              <option value="4">Nova Scotia</option>
                              <option value="5">Prince Edward Island</option>
                            </select>
                        </div>
                    </div>
                    <div class="input-item">
                        <label>zip</label>
                        <input type="text" name="name" placeholder="9847">
                    </div>
                    <div class="input-item">
                        <label>Country</label>
                        <!-- <input type="text" name="name" placeholder="USA"> -->
                        <div class="flux-custom-select">
                            <select>
                              <option value="0">Canada</option>
                              <option value="1">USA</option>
                              <option value="2"> UK</option>
                              <option value="3">Spain</option>
                              <option value="4">Italy</option>
                              <option value="5">Portgal</option>
                            </select>
                        </div>
                    </div>
                    <div>
                        <button class="submit">Save</button>
                        <button data-dismiss="modal" class="cancel">Cancel</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
@endsection
@push('js')

@endpush
