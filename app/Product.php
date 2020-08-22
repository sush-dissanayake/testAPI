<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    /**
     * The Sellers that belong to the product.
     */
    public function sellers() {
        return $this->belongsToMany(Seller::class)
                ->withPivot('seller_price', 'seller_stock')
                ->withTimestamps();
    }
}
