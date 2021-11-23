<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Item extends Model
{
  public function category(){
      return $this->belongsTo(Category::class);
  }

    public function orderItem(){
        return $this->hasMany(OrderItem::class);
    }
}
