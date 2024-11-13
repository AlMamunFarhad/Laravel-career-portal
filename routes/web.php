<?php

use App\Http\Controllers\AccountController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

// Route::get('/', function () {
//     return view('welcome');
// });
Route::get('/', [HomeController::class, 'index'])->name('home');

Route::controller(AccountController::class)->group(function(){
    Route::get('/register',  'registration')->name('account.register');
    Route::post('/account/process-register','processRegister')->name('account.processRegister');
    Route::get('/account/login','login')->name('account.login')->middleware('guest');
    Route::post('/account/login','authenticate')->name('account.authenticate');
    Route::get('/account/profile',  'profile')->name('account.profile');
    Route::get('/account/logout',  'logout')->name('account.logout');
});


