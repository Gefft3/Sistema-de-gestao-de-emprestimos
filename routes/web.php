<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Auth;
use TCG\Voyager\Facades\Voyager;
use App\Http\Controllers\MaterialsController;
use App\Http\Controllers\OrdersController;

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
    //return view('welcome');
    return redirect()->route('material.index');
});

Route::get('/materials', [MaterialsController::class, 'index'])->name('material.index');
Route::get('/materials/{id}',[MaterialsController::class, 'show'])->name('material.show');



Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();

});

Auth::routes();
Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

Route::middleware(['auth', 'verified'])->group(function () {
    Route::view('home', 'home')->name('home');
    Route::put('/orders/edit/update/{id}',[OrdersController::class,'update'])->name('order.update');
    Route::get('/orders/edit/{id}',[OrdersController::class,'edit'])->name('order.edit');
    Route::get('/orders',[OrdersController::class,'index'])->name('order.index');
    Route::get('/orders/create/{id}',[OrdersController::class,'create'])->name('order.create');
    Route::post('/orders/store',[OrdersController::class,'store'])->name('order.store');
});
