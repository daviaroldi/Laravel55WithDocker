<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

use \Illuminate\Http\Request;

Route::get('/', function () {
    return view('welcome');
});

Route::group(['prefix' => '/'], function(){
    Route::get('cliente/cadastrar', 'ClientsController@cadastrar');
});

Route::group(['prefix' => '/admin'], function(){
    Route::group(['prefix' => '/client'], function(){
        Route::get('cadastrar', 'ClientsController@cadastrar');
        Route::get('list', 'ClientsController@list');
    });
});

// Route::get('/product/{name?}', function ($name = null) {
//     return "Produto $name";
// });

// Route::match(['get', 'post'], '/more-than-one', function () {
//     //
// });

Route::get('/cliente/cadastrar', 'ClientsController@cadastrar');