@php
  $cart=Cart::content();

@endphp
<a class="position-absolute" href="javascript:void(0)" onclick="cartopen()">
    <div id="sitebar-drawar" class="sitebar-drawar">
        <div class="cart-count d-flex align-items-center">
            <i class="fas fa-shopping-basket"></i>
            <span>{{ count($cart) }} Item</span>
        </div>
        <div class="total-price">{{ Cart::Subtotal() }} TK</div>
    </div>
</a>

 <!-- admin Modal -->
 <div class="modal fade" id="useradmin1" tabindex="-1" aria-labelledby="useradmin1" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-body">
                <div class="header-top-action-dropdown">
                    <ul>
                        <li class="signin-option"><a onclick="OpenSignUpForm()" href="#" data-dismiss="modal"><i class="fas fa-user mr-2"></i>Sign In</a></li>
                        <li class="site-phone"><a href="tel:{{ $sitesetting->phone_one }}"><i class="fas fa-phone"></i> {{ $sitesetting->phone_one }}</a></li>
                        <li class="site-help"><a href="#"><i class="fas fa-question-circle"></i> Help & More</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>

 <!--siteinfo Modal -->
 <div class="modal fade" id="siteinfo1" tabindex="-1" aria-labelledby="siteinfo1" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-body">
                <div class="header-top-action-dropdown">
                    <ul>
                        <li class="site-phone"><a href="tel:{{ $sitesetting->phone_one }}"><i class="fas fa-phone"></i> {{ $sitesetting->phone_one }}</a></li>
                        <li class="site-help"><a href="#"><i class="fas fa-question-circle"></i> Help & More</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
