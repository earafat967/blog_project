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

Route::get('/', function () {
    return view('welcome');
})->name('home');

Auth::routes();
/*
Route::get('/home', 'HomeController@index')->name('home');*/

Route::group(['as'=>'admin.','prefix'=>'admin','namespace'=>'Admin','middleware'=>['auth','admin']],
    function (){
        Route::get('dashboard','DashboardController@index')->name('dashboard');

//        Tag Route
        Route::resource('tag','TagController');
//        Category Route
        Route::resource('category','CategoryController');
//        Post Route
        Route::resource('post','PostController');

        //        Pending route
        Route::get('pending/post','PostController@pending')->name('post.pending');
//        Approve route
        Route::put('/post/{id}/approve','PostController@approval')->name('post.apporve');

    });

Route::group(['as'=>'author.','prefix'=>'author','namespace'=>'Author','middleware'=>['auth','author']],
    function (){
        Route::get('dashboard','DashboardController@index')->name('dashboard');

        //        Post Route
        Route::resource('post','PostController');
    });
