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

Route::get('/','HomeController@index')->name('home');

Auth::routes();
/*
Route::get('/home', 'HomeController@index')->name('home');*/
// Subscriber Route
Route::post('subscriber','SubscriberController@store')->name('subscriber.store');

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
        Route::put('/post/{id}/approve','PostController@approval')->name('post.approve');
//        subscriber
        Route::get('/subscriber','SubscriberController@index')->name('subscriber.index');
        Route::delete('/subscriber/{id}','SubscriberController@destroy')->name('subscriber.destroy');

    });

Route::group(['as'=>'author.','prefix'=>'author','namespace'=>'Author','middleware'=>['auth','author']],
    function (){
        Route::get('dashboard','DashboardController@index')->name('dashboard');

        //        Post Route
        Route::resource('post','PostController');
    });
