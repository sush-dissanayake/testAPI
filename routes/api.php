<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

/*Route::group(['middleware' => 'client'], function(){

    // List products.
    Route::get('products', 'ProductController@index');
    // List singel product.
    Route::get('products/{pid}', 'ProductController@show');
});*/

// List products.
//Route::get('products', 'ProductController@index');

Route::group(['middleware' => 'client'], function(){
    Route::apiResource('/products', 'ProductController');
    Route::group(['prefix' => 'products'], function(){
        Route::apiResource('/{product}/sellers', 'ProductController');
    });
    Route::group(['prefix' => 'sellers'], function(){
        Route::apiResource('/{seller}/products', 'SellerController');
    });
    
});



