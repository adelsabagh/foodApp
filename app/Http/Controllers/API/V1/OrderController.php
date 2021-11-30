<?php

namespace App\Http\Controllers\API\V1;

use App\Branch;
use App\Http\Controllers\Controller;
use App\Order;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Database;

class OrderController extends Controller
{

    public function store(Request $request)
    {
        $new_order = new Order();
        $new_order->user_id = Auth::id();
        $new_order->total_amount = $request->total_amount;
        $new_order->status = $request->status;
        $new_order->save();

        return response()->json($new_order);
    }


    public function show($id)
    {
        //return response()->json(Order::find($id));
        return response()->json(Order::find($id)->with(["orderItem"])->get());
    }



    public function update(Request $request, $id)
    {
        $update_order = Order::find($id);
        $update_order->user_id = Auth::id();
        $update_order->total_amount = $request->total_amount;
        $update_order->status = $request->status;
        $update_order->save();

        return response()->json($update_order);
    }


    public function destroy($id)
    {
        $delete_order = Order::find($id);
        $delete_order->delete();
        return response()->json('Order Deleted Successfully');
    }
}
