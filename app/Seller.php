<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Seller extends Model
{
    /**
     * The products that belong to the seller.
     */
    public function products() {
        return $this->belongsToMany(Product::class)
                ->withPivot('seller_price', 'seller_stock')
                ->withTimestamps();
    }
}
