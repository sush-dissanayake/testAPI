<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class SellerCollection extends JsonResource
{
    /**
     * Transform the resource collection into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        return [
            'id' => $this->id,
            'name' => $this->name,
            'seller_price' => $this->pivot->seller_price,
            'seller_stock' => $this->pivot->seller_stock,
            //'seller_product_profit' => '',
        ];
    }
}
