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

Route::get('/',['as'=>'index','uses'=>'FrontController@index']);

Route::get('single-{id}.html',['as'=>'single','uses'=>'FrontController@single']);
Route::get('login.html',['as'=>'getLogin','uses'=>'FrontController@getLogin']);
Route::post('login',['as'=>'postLogin','uses'=>'FrontController@postLogin']);
Route::get('logout',['as'=>'getLogout','uses'=>'FrontController@getLogout']);
Route::post('search',['as'=>'postSearch','uses'=>'FrontController@postSearch']);
Route::get('books-{id}.html',['as'=>'single','uses'=>'FrontController@books']);



Route::group(['middleware' => 'auth'], function () {
    Route::group(['prefix'=>'admin'],function(){
         Route::get('/',['as'=>'admin', function () {
            return view('pages.admin');
        }]);
    });
});