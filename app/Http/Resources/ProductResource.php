<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;
//use Illuminate\Http\Resources\Json\Resource;

class ProductResource extends JsonResource
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
            'product_id' => $this->id,
            'product_name' => $this->name,
            'product_description' => $this->description,
            'product_image' => $this->image,
            'product_price' => $this->price,
            'product_stock' => $this->stock,
            'seller_count' => count($this->sellers),
            //'sellers_stock_total' => $this->sellers->sum($thisseller_stock),
        ];
    }
}
