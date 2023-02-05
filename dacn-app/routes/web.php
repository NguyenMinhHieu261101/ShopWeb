<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\ProductDetailController;
use App\Http\Controllers\AjaxController;

Auth::routes();

//Route::get('/', 'HomeController@index') -> name('home');
Route::get('/', [HomeController::class, 'index']);

Route::post('product-tabs', [HomeController::class, 'product_tabs']);
Route::get('san-pham/{slug}-{id}', [ProductDetailController::class, 'productDetail'])->name('get.detail.product');
//Route::get('san-pham/{slug}-{id}', 'ProductDetailController@productDetail')->name('get.detail.product');


//Route::get('ajax-request', [AjaxController::class, 'create']);
//Route::post('product-tabs', [AjaxController::class, 'product_tabs']);

