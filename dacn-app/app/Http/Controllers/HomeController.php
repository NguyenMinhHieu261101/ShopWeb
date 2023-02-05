<?php

namespace App\Http\Controllers;

use App\Models\Models\Product;
use GuzzleHttp\Handler\Proxy;
use Illuminate\Http\Request;

class HomeController extends FrontendController
{
    public function __construct()
    {
        parent::__construct();
    }
    public function index(){
        $productHot = Product::where([
            'pro_hot' => Product::HOT_ON,
            'pro_active' => Product::STATUS_PUBLIC
        ])->limit(3)->get();

        $viewData = [
            'productHot' => $productHot
        ];
        return view('home.index', $viewData);
    }

    public function product_tabs(Request $request){
        $data = $request->all();
        $output = '';

        $product = Product::where([
            'pro_category_id'=> $data['cate_id'],
            'pro_active' => Product::STATUS_PUBLIC
            ])->get();
        //testQuestion::updateOrCreate(['question_id' => $request->questions[$key]['question_id']],$input)
        $product_count = $product->count();

        if($product_count>0){
            $output.= '
            <div class="row featured__filter">
        ';
        foreach($product as $product){
            $output.='
            <div class="col-lg-3 col-md-4 col-sm-6">
                        <div class="featured__item">
                            <div class="featured__item__pic set-bg">
                                <img src="'.url('/uploads').'/'.$product->pro_avatar.'" alt="">
                                <ul class="featured__item__pic__hover">
                                    <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                    <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                    <li><a href="'.route('get.detail.product', [$product->pro_slug, $product->id]).'"><i class="fa fa-shopping-cart"></i></a></li>    
                                </ul>
                            </div>
                            <div class="featured__item__text">
                                <h6><a href="#"></a>'.$product->pro_name.'</h6>
                                <h5>'.number_format($product->pro_price,0,',','.').'đ</h5>
                            </div>
                        </div>
                    </div>   
            ';
        }

        $output.='
        </div>
        ';
        }else{
            $output.= '
            <div class="tab-content">
            <div class="col-sm-12s">
                <p style="color:red; text-align:center;">Hiện chưa có sản phẩm trong danh mục này</p>
            </div>
        </div>
        ';
        }
        echo $output;
    }
}
