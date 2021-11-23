<?php

namespace App\Http\Controllers\API\V1;

use App\Http\Controllers\Controller;
use App\Item;
use Illuminate\Http\Request;

class ItemController extends Controller
{

    public function index()
    {
        return response()->json(Item::class);
    }


    public function show($id)
    {
        return response()->json(Item::find($id));
    }

}
