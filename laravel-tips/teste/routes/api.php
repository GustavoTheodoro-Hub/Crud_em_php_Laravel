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

//=============================================================================

Route::GET('/status','Api\ClienteController@status' );


Route::namespace('Api')->group( function(){

    Route::POST('/cliente/add', 'ClienteController@add');

    Route::GET('/cliente','ClienteController@list' ); 

    Route::GET('/cliente/{id}', 'ClienteController@select');

    Route::put('/cliente/{id}', 'ClienteController@update');

    Route::delete('/cliente/{id}', 'ClienteController@delete');

    Route::POST('/plano/add', 'PlanoController@add');

    Route::GET('/plano','PlanoController@list' ); 
        
    });

