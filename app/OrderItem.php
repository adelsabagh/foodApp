<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class OrderItem extends Model
{
    public function item(){
        return $this->belongsTo(Item::class);
    }

    public function order(){
        return $this->belongsTo(Order::class);
    }
}
