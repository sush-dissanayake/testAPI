<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class SellerResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        return [
            'seller_id' => $this->id,
            'seller_name' => $this->name,
            'seller_price' => $this->pivot->seller_price,
            'seller_stock' => $this->seller_stock,
            //'seller_product_profit' => $this->product->price,
        ];
    }
}
