<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\JobController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\AccountController;


Route::get('/', [HomeController::class, 'index'])->name('home');
Route::get('/jobs', [JobController::class, 'index'])->name('jobs');
Route::get('/job/detail/{id}', [JobController::class, 'jobDetail'])->name('jobDetail');
Route::post('/apply-job', [JobController::class, 'applyJob'])->name('applyJob');

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
        Route::post('/delete-job',  [AccountController::class, 'deleteJob'])->name('account.deleteJob');
        Route::get('/my-applied-jobs',  [AccountController::class, 'appliedJob'])->name('account.appliedJob');
        Route::post('/remove-job-application',  [AccountController::class, 'removeJob'])->name('account.removeJob');
    });
});
