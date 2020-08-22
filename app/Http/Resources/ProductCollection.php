<?php

namespace App\Http\Resources;

//use Illuminate\Http\Resources\Json\ResourceCollection;
use Illuminate\Http\Resources\Json\JsonResource;


class ProductCollection extends JsonResource
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
            'description' => $this->description,
            'image' => $this->image,
            'product_price' => $this->price,
            'product_stock' => $this->stock,
            //'seller_stock_total' => $this->sellers->sum('seller_stock'), 
            /*'href' => [
                'product_link' => route('products.show', $this->id)
            ]*/
        ];
    }
}
