<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
class CategoryControll extends Controller
{
    public function ProductCateById($id,$category_name)
    {
      $categoryProduct = DB::table('products')
      ->join('categories','products.category_id','categories.id')
    	->join('subcategories','products.subcategory_id','subcategories.id')
    	->join('brands','products.brand_id','brands.id')
    	->select('products.*','categories.category_name','subcategories.subcategory_name','brands.brand_name')
      ->where('products.category_id',$id)->orWhere('subcategory_id',$id)->get();
      return view('website.category.index',compact('categoryProduct'));
    }
}
