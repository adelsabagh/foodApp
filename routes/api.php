<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\API\V1\CategoryController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/
    //User Routes
    Route::prefix('users')->group(function () {
        Route::post('/login', 'API\V1\UserController@login');
        Route::post('/register', 'API\V1\UserController@register');
        Route::get('/logout', 'API\V1\UserController@logout');
    });

    Route::middleware('auth:api')->group(function () {

        //User Route
        Route::get('/users/all','API\V1\UserController@getAllUsers');
        Route::post('/users/update/{id}','API\V1\UserController@update');

        // Notification Route
        Route::get('/notify/{userToken}','API\V1\UserController@notifyUser');

    //Category Routes
    Route::prefix('categories')->group(function () {
        Route::get('/index','API\V1\CategoryController@index');
        Route::get('/show/{id}','API\V1\CategoryController@show');
    });

    //Order Routes
    Route::prefix('orders')->group(function () {
        Route::post('/store', 'API\V1\OrderController@store');
        Route::get('/show/{id}','API\V1\OrderController@show');
        Route::post('/update/{id}','API\V1\OrderController@update');
        Route::get('/destroy/{id}','API\V1\OrderController@destroy');
    });

    //Item Routes
    Route::prefix('items')->group(function () {
        Route::get('/index','API\V1\ItemController@index');
        Route::get('/show/{id}','API\V1\ItemController@show');
    });

    //Order Items Routes
        Route::prefix('orderItems')->group(function () {
        Route::get('/show/{id}', 'API\V1\OrderItemController@show');
        Route::post('/update/{id}', 'API\V1\OrderItemController@update');
        Route::post('/store', 'API\V1\OrderItemController@store');
        Route::get('/destroy/{id}', 'API\V1\OrderItemController@destroy');
    });

    //Branch Routes
    Route::prefix('branches')->group(function () {
        Route::get('/index','API\V1\BranchController@index');
    });
});

