@php
  $cart=Cart::content();
@endphp
<div class="mobile-footer d-flex justify-content-between align-items-center d-xl-none">
    <button class="info" type="button" data-toggle="modal" data-target="#siteinfo1"><i class="fas fa-info-circle"></i></button>

    <div class="footer-cart">
        <a onclick="cartopen()" href="#" class="d-flex align-items-center">
          <span class="cart-icon"><i class="fas fa-shopping-cart"></i><span class="count">{{ count($cart) }}</span>
        </span> <span class="cart-amount ml-2">{{ Cart::Subtotal() }} TK</span></a>
    </div>

    <div class="footer-admin-area">
        <!-- <span class="user-admin">
            <i class="fas fa-user"></i>
        </span> -->
        <button class="user-admin" type="button" data-toggle="modal" data-target="#useradmin1"><i class="fas fa-user"></i></button>
    </div>
</div>
