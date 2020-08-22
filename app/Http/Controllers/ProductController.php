<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests;
use App\Product;
use App\Http\Resources\ProductCollection;
use App\Http\Resources\ProductResource;
use App\Http\Resources\SellerCollection;


class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Product $product)
    {
        if(count($product->sellers) == 0) {
            return response()->json(['message'=> "No sellers found"], 404);
        }
        return SellerCollection::collection($product->sellers);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $product = Product::find($id);
        if(is_null($product)) {
            return response()->json(['message'=> "Record not found"], 404);
        }
        return new ProductResource($product);
    }
}
