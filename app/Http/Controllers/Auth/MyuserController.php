<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Hash;
use Illuminate\Http\Request;
use App\User;

class MyuserController extends Controller
{
    public function profile()
    {
      return view('website.users.home.profile');
    }
    public function addressBook()
    {
      return view('website.users.home.address_book');
    }

    public function forgotPassword()
    {
      return view('auth.forgot_password');
    }

    public function forgotPasswordUpdate(Request $request)
    {
      $request->validate([
        'phone' => 'required|min:11|max:12',
        'password' => 'required|min:5'
      ]);
      $userChack = User::where('phone',$request->phone)->first();
      if (isset($userChack)) {
        $user = User::find($userChack->id);
        $user->password = Hash::make($request->password);
        $user->save();
        $notification=array(
        'messege'=>'আপনার পাসওয়ার্ড আপডেট করা হয়েছে! নতুন পাসওয়ার্ডটি হলো - ('.$request->password .')',
        'alert-type'=>'error'
        );
        return back()->with($notification);
      } else {
        $notification=array(
        'messege'=>'কোন ইউজার খুজে পাওয়া যাচ্ছেনা',
        'alert-type'=>'error'
        );
        return back()->with($notification);
      }

    }
}
