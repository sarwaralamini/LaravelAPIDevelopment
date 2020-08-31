<?php

namespace App\Http\Resources\Product;

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
            'name'        => $this->name,
            'discount'    => $this->discount,
            'totalPrice'  =>  round((1- ($this->discount/100)) * $this->price, 2),
            'rating'      => $this->reviews->count() > 0 ? round($this->reviews->sum('star')/$this->reviews->count(), 2) : 'No rating',
            'href'        => [
<<<<<<< HEAD
                'link' => route('products.show', $this->id)
=======
                'reviews' => route('products.show', $this->id)
>>>>>>> 8be7e4680d536de94208f1fd74e9cd981a472ce5
            ]
        ];
    }
}
