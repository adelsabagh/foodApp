<?php

namespace App\Http\Controllers\API\V1;

use App\Http\Controllers\Controller;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Str;

class UserController extends Controller
{
    public function login(Request $request)
    {
        $credntials = $request->only('email','password');
        $user= Auth::attempt($credntials);
        if($user)
        {
            return response()->json(Auth::user());
        }
        else{
            return response()->json('something went wrong');
        }
    }

    public function logout(Request $request)
    {
        Auth::logout();
        return response()->json('successfully');
    }

    public function register(Request $request)
    {
        return User::create([
           'name'=>$request->name,
           'email'=>$request->email,
           'password'=>Hash::make($request->password),
           'api_token'=>Str::random(80),
        ]);
    }
}
