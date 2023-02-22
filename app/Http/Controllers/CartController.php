<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Cart;
use DB;
use Response;
use Auth;
use Session;
class CartController extends Controller
{

  public function wishlistRemove($id)
  {
    $userid=Auth::id();
    DB::table('wishlists')->where('user_id',$userid)->where('product_id',$id)->delete();
    $notification=array(
           'messege'=>'চাহিদা তালিকা সফল ভাবে সরানো হয়েছে',
            'alert-type'=>'success'
      );
    return Redirect()->back()->with($notification);
  }

    public function AddCart($id)
    {
    	  $product=DB::table('products')->where('id',$id)->first();
    	  $data=array();
    	  if ($product->discount_price == NULL) {
	            $data['id']=$product->id;
              $data['name']=$product->product_name;
              $data['qty']=1;
              $data['price']= $product->selling_price;
              $data['point']= $product->customer_poin;
				        $data['weight']=1;
              $data['options']['image']=$product->image_one;
                $data['options']['color']='';
                $data['options']['size']='';
             Cart::add($data);
             $userid=Auth::id();
             DB::table('wishlists')->where('user_id',$userid)->where('product_id',$product->id)->delete();
             $notification=array(
                    'messege'=>'প্রোডাক্ট ভ্যাগে যুক্ত করা হয়েছে',
                     'alert-type'=>'success'
               );
             return Redirect()->back()->with($notification);
    	   }else{
             $data['id']=$product->id;
              $data['name']=$product->product_name;
              $data['qty']=1;
              $data['price']= $product->discount_price;
              $data['point']= $product->customer_poin;
				         $data['weight']=1;
              $data['options']['image']=$product->image_one;
                $data['options']['color']='';
                $data['options']['size']='';

              Cart::add($data);
              $userid=Auth::id();
              DB::table('wishlists')->where('user_id',$userid)->where('product_id',$product->id)->delete();
              $notification=array(
                     'messege'=>'প্রোডাক্ট ভ্যাগে যুক্ত করা হয়েছে',
                      'alert-type'=>'success'
                );
              return Redirect()->back()->with($notification);
    	 }
    }

    public function check()
    {
    	$content=Cart::content();
    	return response()->json($content);
    }

    public function showCart()
    {
        $cart=Cart::content();
       return view('pages.cart',compact('cart'));
    }

    public function removeCart($rowId)
    {
        Cart::remove($rowId);
        return redirect()->back();
    }

    public function cartUp(Request $request)
    {
        $rowId =$request->productid;
        $qty=$request->quantity + 1;
        Cart::update($rowId, $qty);
        return redirect()->back();
    }
    public function cartDown(Request $request)
    {
        $rowId =$request->productid;
        $qty=$request->quantity - 1;
        Cart::update($rowId, $qty);
        return redirect()->back();
    }

    public function UpdateCart(Request $request)
    {
        $rowId =$request->productid;
        $qty=$request->qty;
        Cart::update($rowId, $qty);
        return redirect()->back();
    }

    public function ViewProduct($id)
    {
         $product=DB::table('products')
              ->join('categories','products.category_id','categories.id')
              ->join('subcategories','products.subcategory_id','subcategories.id')
              ->join('brands','products.brand_id','brands.id')
              ->select('products.*','categories.category_name','subcategories.subcategory_name','brands.brand_name')
              ->where('products.id',$id)->first();

        $color=$product->product_color;
        $product_color = explode(',', $color);

        $size=$product->product_size;
        $product_size = explode(',', $size);

       // return response()->json($product_color);
        return response::json(array(
                'product' => $product,
                'color' => $product_color,
                 'size' => $product_size,
         ));

    }

    public function InsertCart(Request $request)
    {
         $id=$request->product_id;
          $product=DB::table('products')->where('id',$id)->first();
          $data=array();
          if ($product->discount_price == NULL) {
              $data['id']=$product->id;
              $data['name']=$product->product_name;
              $data['qty']=$request->qty;
              $data['price']= $product->selling_price;
              $data['point']= $product->customer_poin;
              $data['weight']=1;
              $data['options']['image']=$product->image_one;
              $data['options']['color']=$request->color;
              $data['options']['size']=$request->size;
            Cart::add($data);
             $notification=array(
                    'messege'=>'প্রোডাক্ট ভ্যাগে যুক্ত করা হয়েছে',
                     'alert-type'=>'success'
               );
             return Redirect()->back()->with($notification);
           }else{
             $data['id']=$product->id;
              $data['name']=$product->product_name;
              $data['qty']=$request->qty;;
              $data['price']= $product->discount_price;
              $data['point']= $product->customer_poin;
              $data['weight']=1;
              $data['options']['image']=$product->image_one;
              $data['options']['color']=$request->color;
              $data['options']['size']=$request->size;
              Cart::add($data);
            $notification=array(
                    'messege'=>'প্রোডাক্ট ভ্যাগে যুক্ত করা হয়েছে',
                     'alert-type'=>'success'
               );
             return Redirect()->back()->with($notification);
         }
    }


    public function Checkout()
    {
        if (Auth::check()) {
              $cart=Cart::content();
              return view('website.sopping.checkout',compact('cart'));
        }else{
           $notification=array(
                'messege'=>'আপনি লগিন করা নাই! প্রথমে লগিন/রেজিষ্টেশন করুণ',
                 'alert-type'=>'success'
           );
          return redirect()->route('login')->with($notification);
        }
    }

    public function Wishlist()
    {
        $userid=Auth::id();
        $product=DB::table('wishlists')->join('products','wishlists.product_id','products.id')
                          ->select('products.*','wishlists.user_id')
                          ->where('wishlists.user_id',$userid)
                          ->get();
           return view('website.users.home.wishlist',compact('product'));
    }


    public function Coupon(Request $request)
    {
        $coupon=$request->coupon;
        $check=DB::table('coupons')->where('coupon',$coupon)->first();
        $str = Cart::Subtotal();
        $total = $res = str_replace( array( '\'', '"',
    ',' , ';', '<', '>' ), '', $str);
        if ($check) {

              session::put('coupon',[
                  'name' => $check->coupon,
                  'discount' => $check->discount,
                  'balance' => $total - $check->discount
              ]);
              $notification=array(
                  'messege'=>'আপনার কুপনের টাকা কমানো হয়েছে',
                   'alert-type'=>'success'
             );
            return redirect()->back()->with($notification);
        }else{
            $notification=array(
                'messege'=>'আপনার কুপনটি ব্যবহার যোগ্য নয়',
                 'alert-type'=>'error'
             );
            return redirect()->back()->with($notification);
        }

    }

    public function CouponRemove()
    {
         session::forget('coupon');
          return redirect()->back();
    }

    public function PymentPage()
    {
      $cart=Cart::content();
      return view('pages.payment',compact('cart'));
    }




}
