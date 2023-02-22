<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
class BrandControll extends Controller
{
  public function ProductBrandById($id,$brand_name)
  {
    $brandProduct = DB::table('products')
    ->join('categories','products.category_id','categories.id')
    ->join('subcategories','products.subcategory_id','subcategories.id')
    ->join('brands','products.brand_id','brands.id')
    ->select('products.*','categories.category_name','subcategories.subcategory_name','brands.brand_name')
    ->where('products.brand_id',$id)->get();
    return view('website.brand.index',compact('brandProduct'));
  }
}
