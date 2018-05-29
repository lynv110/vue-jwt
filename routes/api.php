<?php

use Illuminate\Http\Request;

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

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::group(['namespace' => 'Api'], function(){
    Route::group(['namespace' => 'Auth', 'prefix' => 'auth'], function(){

        Route::post('login', 'AuthController@login');

        Route::middleware('jwt.auth')->group(function (){
            // After login
            // Auth
            Route::post('logout', 'AuthController@logout');
            Route::get('user', 'AuthController@user');

        });

        Route::middleware('jwt.refresh')->group(function (){
            Route::get('refresh', 'AuthController@refresh');
        });

    });

    // After login
    Route::group(['namespace' => 'Staff', 'prefix' => 'staff', 'middleware' => 'jwt.auth'], function(){
        // Staff
        Route::get('staff-list', 'StaffController@index');

    });


});