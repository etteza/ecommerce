<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Auth;
use Illuminate\Support\Facades\Hash;
use App\Admin;
use Image;
class AdminController extends Controller
{
        /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth:admin');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('admin.home');
    }

    public function profile()
    {
        return view('admin.auth.profile');
    }
    public function ChangePassword()
    {
        return view('admin.auth.passwordchange');
    }

    public function profileUpdate(Request $request)
    {
        $Image = Auth::user()->image;
        if ($request->file('image')) {
            $image    = $request->file('image');
            $fileName = rand(0, 999999999) . '_' . date('Ymdhis') . '_' . rand(99999, 999999999) . '.' . $image->getClientOriginalExtension();
            if ($image->isValid()) {
                if ($image->getMimeType() == "image/png" || $image->getMimeType() == "image/jpeg" || $image->getMimeType() == "image/jpg") {
                    Image::make($image)
                ->save('public/uploads/' . $fileName);
            $user = Admin::find(Auth::id());
            $user->name = $request->name;
            $user->phone = $request->phone;
            $user->email = $request->email;
            $user->image = $fileName;
            $user->save();
            $notification=array(
            'messege'=>'profile Update Success!!',
            'alert-type'=>'success'
            );
            return Redirect()->route('admin.profile')->with($notification);
            }
          }
        }else{
            $user=Admin::find(Auth::id());
            $user->name = $request->name;
            $user->phone = $request->phone;
            $user->email = $request->email;
            $user->image = $request->image;
            $user->save();
            $notification=array(
            'messege'=>'profile Update Success!!',
            'alert-type'=>'success'
            );
            return Redirect()->route('admin.profile')->with($notification);
        }
    }

    public function Update_pass(Request $request)
    {
      $password=Auth::user()->password;
      $oldpass=$request->oldpass;
      $newpass=$request->password;
      $confirm=$request->password_confirmation;
      if (Hash::check($oldpass,$password)) {
           if ($newpass === $confirm) {
                      $user=Admin::find(Auth::id());
                      $user->password=Hash::make($request->password);
                      $user->save();
                      Auth::logout();
                      $notification=array(
                        'messege'=>'Password Changed Successfully ! Now Login with Your New Password',
                        'alert-type'=>'success'
                         );
                       return Redirect()->route('admin.login')->with($notification);
                 }else{
                     $notification=array(
                        'messege'=>'New password and Confirm Password not matched!',
                        'alert-type'=>'error'
                         );
                       return Redirect()->back()->with($notification);
                 }
      }else{
        $notification=array(
                'messege'=>'Old Password not matched!',
                'alert-type'=>'error'
                 );
               return Redirect()->back()->with($notification);
      }
    }

    public function logout()
    {
        Auth::logout();
            $notification=array(
                'messege'=>'Logout Success ',
                'alert-type'=>'success'
                 );
             return Redirect()->route('admin.login')->with($notification);
    }

}
