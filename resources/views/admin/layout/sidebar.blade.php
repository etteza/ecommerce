@php
  $cname = DB::table('sitesetting')->first();
@endphp
<div class="sl-logo"><a href=""><i class="icon ion-android-star-outline"></i> {{ $cname->company_name }} </a></div>
<div class="sl-sideleft">
  <label class="sidebar-label">Navigation</label>
  <div class="sl-sideleft-menu">
    <a href="{{ url('admin/home') }}" class="sl-menu-link {{ Request::is('admin/home') ? 'active' : '' }}">
      <div class="sl-menu-item">
        <i class="menu-item-icon icon ion-ios-home-outline tx-22"></i>
        <span class="menu-item-label">Dashboard</span>
      </div><!-- menu-item -->
    </a><!-- sl-menu-link -->

    @if(Auth::user()->category == 1)
    <a href="#" class="sl-menu-link {{ Request::is('admin/catgories','edit/category*','admin/brands','admin/edit/brand*','admin/sub-category','edit/subcategory*') ? 'active show-sub' : '' }}">
      <div class="sl-menu-item">
        <i class="menu-item-icon icon ion-link tx-20"></i>
        <span class="menu-item-label">Category</span>
        <i class="menu-item-arrow fa fa-angle-down"></i>
      </div><!-- menu-item -->
    </a><!-- sl-menu-link -->
    <ul class="sl-menu-sub nav flex-column">
      <li class="nav-item"><a href="{{ route('categories') }}" class="nav-link {{ Request::is('admin/catgories') ? 'active' : '' }}">Category</a></li>
      <li class="nav-item"><a href="{{ route('sub.categories') }}" class="nav-link {{ Request::is('admin/sub-category') ? 'active' : '' }}">Sub Category</a></li>
      <li class="nav-item"><a href="{{ route('brands') }}" class="nav-link {{ Request::is('admin/brands') ? 'active' : '' }}">Brand</a></li>
    </ul>
    @else
    @endif

     @if(Auth::user()->coupon == 1)
    <a href="#" class="sl-menu-link {{ Request::is('admin/coupon','edit/coupon*') ? 'active show-sub' : ''}}">
      <div class="sl-menu-item">
        <i class="menu-item-icon icon ion-ios-gear-outline tx-24"></i>
        <span class="menu-item-label">Coupon</span>
        <i class="menu-item-arrow fa fa-angle-down"></i>
      </div><!-- menu-item -->
    </a><!-- sl-menu-link -->
    <ul class="sl-menu-sub nav flex-column">
      <li class="nav-item"><a href="{{ route('admin.coupon') }}" class="nav-link {{ Request::is('admin/coupon','edit/coupon*') ? 'active' : '' }}">Coupon</a></li>
    </ul>
    @else
    @endif

     @if(Auth::user()->product == 1)
    <a href="#" class="sl-menu-link {{ Request::is('admin/product/add','admin/product/all','view/product*','edit/product*') ? 'active show-sub' : '' }}">
      <div class="sl-menu-item">
        <i class="menu-item-icon icon ion-filing tx-24"></i>
        <span class="menu-item-label">Products</span>
        <i class="menu-item-arrow fa fa-angle-down"></i>
      </div><!-- menu-item -->
    </a><!-- sl-menu-link -->
    <ul class="sl-menu-sub nav flex-column">
      <li class="nav-item"><a href="{{ route('add.product') }}" class="nav-link {{ Request::is('admin/product/add') ? 'active' : '' }}">Add Product</a></li>
      <li class="nav-item"><a href="{{ route('all.product') }}" class="nav-link {{ Request::is('admin/product/all','view/product*','edit/product*') ? 'active' : '' }}">All Product</a></li>
    </ul>
    @else
    @endif

     @if(Auth::user()->order == 1)
     <a href="#" class="sl-menu-link {{ Request::is('admin/pending/order','admin/view/order','admin/accept/payment','admin/progress/payment','admin/success/payment','admin/cancel/payment*') ? 'active show-sub' : '' }}">
      <div class="sl-menu-item">
        <i class="menu-item-icon icon ion-clock tx-24"></i>
        <span class="menu-item-label">Orders</span>
        <i class="menu-item-arrow fa fa-angle-down"></i>
      </div><!-- menu-item -->
    </a><!-- sl-menu-link -->
    <ul class="sl-menu-sub nav flex-column">
      <li class="nav-item"><a href="{{ route('admin.neworder') }}" class="nav-link {{ Request::is('admin/pending/order') ? 'active' : '' }}">New Pending Order</a></li>
      <li class="nav-item"><a href="{{ route('admin.accept.payment') }}" class="nav-link {{ Request::is('admin/accept/payment') ? 'active' : '' }}">Accept Payments</a></li>
       <li class="nav-item"><a href="{{ route('admin.progress.payment') }}" class="nav-link {{ Request::is('admin/progress/payment') ? 'active' : '' }}">Progress Delevery</a></li>
        <li class="nav-item"><a href="{{ route('admin.success.payment') }}" class="nav-link {{ Request::is('admin/success/payment') ? 'active' : '' }}">Delevery Success</a></li>
      <li class="nav-item"><a href="{{ route('admin.cancel.order') }}" class="nav-link {{ Request::is('admin/cancel/payment*') ? 'active' : '' }}">Cancel Orders</a></li>
    </ul>
    @else
    @endif

     @if(Auth::user()->other == 1)
    <a href="#" class="sl-menu-link {{ Request::is('admin/newslater','admin/seo') ? 'active show-sub' : '' }}">
      <div class="sl-menu-item">
        <i class="menu-item-icon icon ion-help-buoy tx-22"></i>
        <span class="menu-item-label">Others</span>
        <i class="menu-item-arrow fa fa-angle-down"></i>
      </div><!-- menu-item -->
    </a><!-- sl-menu-link -->
    <ul class="sl-menu-sub nav flex-column">
      <li class="nav-item"><a href="{{ route('admin.newslater') }}" class="nav-link {{ Request::is('admin/newslater') ? 'active' : '' }}">Newslater</a></li>
      <li class="nav-item"><a href="{{ route('admin.seo') }}" class="nav-link {{ Request::is('admin/seo') ? 'active' : '' }}">Seo Settings</a></li>
    </ul>
    @else
    @endif

     @if(Auth::user()->report == 1)
    <a href="#" class="sl-menu-link {{ Request::is('admin/today/order','admin/today/deleverd','admin/this/month','admin/search/report') ? 'active show-sub' : '' }}">
      <div class="sl-menu-item">
        <i class="menu-item-icon icon ion-help-circled tx-22"></i>
        <span class="menu-item-label">Reports</span>
        <i class="menu-item-arrow fa fa-angle-down"></i>
      </div><!-- menu-item -->
    </a><!-- sl-menu-link -->
    <ul class="sl-menu-sub nav flex-column">
      <li class="nav-item"><a href="{{ route('today.order') }}" class="nav-link {{ Request::is('admin/today/order') ? 'active' : '' }}">Today Order</a></li>
      <li class="nav-item"><a href="{{ route('today.delevered') }}" class="nav-link {{ Request::is('admin/today/deleverd') ? 'active' : '' }}">Today Delevered</a></li>
      <li class="nav-item"><a href="{{ route('this.month') }}" class="nav-link {{ Request::is('admin/this/month') ? 'active' : '' }}">This Month</a></li>
      <li class="nav-item"><a href="{{ route('search.report') }}" class="nav-link {{ Request::is('admin/search/report') ? 'active' : '' }}">Search Report</a></li>
    </ul>
    @else
    @endif

     @if(Auth::user()->role == 1)
     <a href="#" class="sl-menu-link {{ Request::is('admin/create/admin','admin/create/role') ? 'active show-sub' : '' }}">
      <div class="sl-menu-item">
        <i class="menu-item-icon icon ion-edit tx-22"></i>
        <span class="menu-item-label">User Role</span>
        <i class="menu-item-arrow fa fa-angle-down"></i>
      </div><!-- menu-item -->
    </a><!-- sl-menu-link -->
    <ul class="sl-menu-sub nav flex-column">
      <li class="nav-item"><a href="{{ route('create.admin') }}" class="nav-link {{ Request::is('admin/create/admin') ? 'active' : '' }}">Create User</a></li>
      <li class="nav-item"><a href="{{ route('create.user.role') }}" class="nav-link {{ Request::is('admin/create/role') ? 'active' : '' }}">All User</a></li>
    </ul>
    @else
    @endif

     @if(Auth::user()->return == 1)
      <a href="#" class="sl-menu-link {{ Request::is('admin/return/request','admin/all/return') ? 'active show-sub' : '' }}">
      <div class="sl-menu-item">
        <i class="menu-item-icon icon ion-reply-all tx-22"></i>
        <span class="menu-item-label">Return Order</span>
        <i class="menu-item-arrow fa fa-angle-down"></i>
      </div><!-- menu-item -->
    </a><!-- sl-menu-link -->
    <ul class="sl-menu-sub nav flex-column">
          <li class="nav-item"><a href="{{ route('admin.return.request') }}" class="nav-link {{ Request::is('admin/return/request') ? 'active' : '' }}">Return Request</a></li>
           <li class="nav-item"><a href="{{ route('admin.all.return') }}" class="nav-link {{ Request::is('admin/all/return') ? 'active' : '' }}">All Return</a></li>
    </ul>
    @else
    @endif

     @if(Auth::user()->stock == 1)
    <a href="#" class="sl-menu-link {{ Request::is('admin/product/stock') ? 'active show-sub' : '' }}">
      <div class="sl-menu-item">
        <i class="menu-item-icon icon ion-stats-bars tx-22"></i>
        <span class="menu-item-label">Product Stock</span>
        <i class="menu-item-arrow fa fa-angle-down"></i>
      </div><!-- menu-item -->
    </a><!-- sl-menu-link -->
    <ul class="sl-menu-sub nav flex-column">
          <li class="nav-item"><a href="{{ route('admin.product.stock') }}" class="nav-link {{ Request::is('admin/product/stock') ? 'active' : '' }}">Stock</a></li>
    </ul>
    @else
    @endif

     @if(Auth::user()->contact == 1)
     <a href="#" class="sl-menu-link {{ Request::is('') ? 'active show-sub' : '' }}">
      <div class="sl-menu-item">
        <i class="menu-item-icon icon ion-chatboxes tx-22"></i>
        <span class="menu-item-label">Contact Message</span>
        <i class="menu-item-arrow fa fa-angle-down"></i>
      </div><!-- menu-item -->
    </a><!-- sl-menu-link -->
    <ul class="sl-menu-sub nav flex-column">
          <li class="nav-item"><a href="#" class="nav-link {{ Request::is('') ? 'active' : '' }}">New Message</a></li>
           <li class="nav-item"><a href="#" class="nav-link {{ Request::is('') ? 'active' : '' }}">All Message</a></li>
    </ul>
    @else
    @endif


     @if(Auth::user()->setting == 1)
      <a href="#" class="sl-menu-link {{ Request::is('admin/database/backup') ? 'active show-sub' : '' }}">
      <div class="sl-menu-item">
        <i class="menu-item-icon icon ion-archive tx-22"></i>
        <span class="menu-item-label">Backup</span>
        <i class="menu-item-arrow fa fa-angle-down"></i>
      </div><!-- menu-item -->
    </a><!-- sl-menu-link -->
    <ul class="sl-menu-sub nav flex-column">
          <li class="nav-item"><a href="{{ route('admin.database.backup') }}" class="nav-link {{ Request::is('admin/database/backup') ? 'active' : '' }}">Databse Backup </a></li>
    </ul>
    @else
    @endif



  </div><!-- sl-sideleft-menu -->

  <br>
</div><!-- sl-sideleft -->
