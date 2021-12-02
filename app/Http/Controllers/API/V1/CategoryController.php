<?php

namespace App\Http\Controllers\API\V1;

use App\Category;
use App\Http\Controllers\Controller;
use App\Item;
use Illuminate\Http\Request;

class CategoryController extends Controller
{

    public function index()
    {
        return response()->json(Category::with('items')->get());
    }

    public function show($id)
    {
        return response()->json(Item::where('category_id',$id)->get());
    }

}
