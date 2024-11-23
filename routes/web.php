<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\JobController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\AccountController;
use App\Http\Controllers\admin\DashboardController;
use App\Http\Controllers\admin\UserController;
use App\Http\Controllers\admin\JobsController;

Route::get('/', [HomeController::class, 'index'])->name('home');
Route::get('/jobs', [JobController::class, 'index'])->name('jobs');
Route::get('/job/detail/{id}', [JobController::class, 'jobDetail'])->name('jobDetail');
Route::post('/apply-job', [JobController::class, 'applyJob'])->name('applyJob');
Route::post('/save-job', [JobController::class, 'saveJob'])->name('saveJob');


Route::group(['prefix' => 'admin', 'middleware' => 'checkRole'], function(){
    Route::get('/dashboard', [DashboardController::class, 'index'])->name('admin.dashboard');
    Route::get('/users', [UserController::class, 'index'])->name('admin.users');
    Route::get('/edit/user/{id}', [UserController::class, 'edit'])->name('admin.user.edit');
    Route::put('/update-user/{id}', [UserController::class, 'update'])->name('admin.user.update');
    Route::delete('/delete-user/{id}', [UserController::class, 'destroy'])->name('admin.user.delete');
    Route::get('/jobs', [jobsController::class, 'index'])->name('admin.jobs');
});

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
        Route::get('/saved-jobs',  [AccountController::class, 'savedJobs'])->name('account.savedJobs');
        Route::post('/saved-job-delete',  [AccountController::class, 'removeSavedJob'])->name('account.removeSavedJob');
        Route::post('/update-password',  [AccountController::class, 'updatePassword'])->name('account.updatePassword');
    });
});
