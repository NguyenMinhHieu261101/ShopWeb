<?php

namespace App\Http\Controllers;

use App\Models\Models\Product;
use Illuminate\Http\Request;

class ProductDetailController extends FrontendController
{
    public function __construct()
    {
        parent::__construct();
    }
    
    public function productDetail(Request $request, $id){
         $url = $request->segment(2);
         $url = preg_split('/(-)/i', $url);
         
         if($id = array_pop($url)){
            $productDetail = Product::where('pro_active', Product::STATUS_PUBLIC)->find($id);

            $viewData = [
                'productDetail'=>$productDetail
            ];

            return view('product.shop-details', $viewData);
         }
    }
}
