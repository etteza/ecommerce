<div class="sl-header">
  <div class="sl-header-left">
    <div class="navicon-left hidden-md-down"><a id="btnLeftMenu" href=""><i class="icon ion-navicon-round"></i></a></div>
    <div class="navicon-left hidden-lg-up"><a id="btnLeftMenuMobile" href=""><i class="icon ion-navicon-round"></i></a></div>
  </div><!-- sl-header-left -->
  <div class="sl-header-right">
    <nav class="nav">
      <div class="dropdown">
        <a href="" class="nav-link nav-link-profile" data-toggle="dropdown">
          <span class="logged-name">{{ Auth::user()->name }}</span>
          <img src="{{ asset('/') }}public/uploads/{{ Auth::user()->image }}" class="wd-32 rounded-circle" alt="">
        </a>
        <div class="dropdown-menu dropdown-menu-header wd-200">
          <ul class="list-unstyled user-profile-nav">
            <li><a target="_blank" href="{{ url('/') }}"><i class="icon ion-ios-home-outline"></i> Go Home</a></li>
            <li><a href="{{ route('admin.profile') }}"><i class="icon ion-ios-person-outline"></i> Edit Profile</a></li>
            <li><a href="{{ route('admin.password.change') }}"><i class="icon ion-key"></i> Change Password</a></li>
            <li><a href="{{ route('admin.site.setting') }}"><i class="icon ion-ios-gear-outline"></i> Settings</a></li>
            <li><a href="{{ route('admin.logout') }}"><i class="icon ion-power"></i> Sign Out</a></li>
          </ul>
        </div><!-- dropdown-menu -->
      </div><!-- dropdown -->
    </nav>
  </div><!-- sl-header-right -->
</div><!-- sl-header -->
