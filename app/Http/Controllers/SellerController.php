<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests;
use App\Seller;
use App\Product;
use App\Http\Resources\ProductCollection;
use App\Http\Resources\ProductResource;
use App\Http\Resources\SellerCollection;
use App\Http\Resources\SellerResource;


class SellerController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Seller $seller)
    {
        if(count($seller->products) == 0) {
            return response()->json(['message'=> "No products found"], 404);
        }
        return ProductCollection::collection($seller->products);
    }
}
