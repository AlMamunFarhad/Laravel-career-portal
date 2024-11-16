<?php

use App\Http\Controllers\AccountController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;


Route::get('/', [HomeController::class, 'index'])->name('home');

Route::group(['prefix' => 'account'], function () {

    // Guest Route
    Route::group(['middleware' => 'guest'], function () {
        Route::get('/register',  [AccountController::class, 'registration'])->name('account.register');
        Route::post('/process-register', [AccountController::class, 'processRegister'])->name('account.processRegister');
        Route::get('/login', [AccountController::class, 'login'])->name('account.login');
        Route::post('/login', [AccountController::class, 'authenticate'])->name('account.authenticate');
    });
    // Authenticated route   
    Route::group(['middleware' => 'auth'], function () {
        Route::get('/profile',  [AccountController::class, 'profile'])->name('account.profile');
        Route::put('/update-profile',  [AccountController::class, 'updateProfile'])->name('account.updateProfile');
        Route::get('/logout',  [AccountController::class, 'logout'])->name('account.logout');
        Route::post('/update-profile-pic',  [AccountController::class, 'profilePic'])->name('account.updateProfilePic');
        Route::get('/create-job',  [AccountController::class, 'createJob'])->name('account.createJob');
        Route::post('/save-job',  [AccountController::class, 'saveJob'])->name('account.saveJob');
        Route::get('/my-jobs',  [AccountController::class, 'myJob'])->name('account.myJobs');
        Route::get('/edit-job/{jobId}',  [AccountController::class, 'editJob'])->name('account.editJob');
        Route::put('/update-job/{jobId}',  [AccountController::class, 'updateJob'])->name('account.updateJob');
    });
});
