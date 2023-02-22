<section id="login-area" class="login-area">
    <div onclick="CloseSignUpForm()" class="overlay"></div>
    <div class="login-body-wrapper">
        <div class="login-body">
            <div class="close-icon" onclick="CloseSignUpForm()">
                <i class="fas fa-times"></i>
            </div>
            <div class="login-header">
                <h4>Login Your Account</h4>
                <p>Login with your Mobile Number & password</p>
            </div>
            <div class="login-content">
                <form action="{{ route('login') }}" method="post" class="login-form">
                  @csrf
                    <input type="text" name="phone" placeholder="Mobile Numbar">
                        <input type="password" name="password" placeholder="Password">
                    <button type="submit" class="submit">Login</button>
                </form>
                {{-- <div class="text-center seperator">
                    <span>Or</span>
                </div>
                <div class="othersignup-option">
                    <a class="facebook" href="#"><i class="fab fa-facebook-square"></i>Continue with Facebook</a>
                    <a class="google" href="#"><i class="fab fa-google-plus"></i>Continue with Google</a>
                </div> --}}
                <div class="text-center dont-account py-4">
                    <p class="mb-0">Don't have any account <a href="{{ route('register') }}">Sing Up</a></p>
                </div>
            </div>
        </div>
        <div class="forgot-password text-center">
            <p>forgot Passowrd? <a href="{{ route('forgotPassword') }}">Reset It</a></p>
        </div>
    </div>
</section>
