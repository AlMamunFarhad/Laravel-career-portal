<?php

namespace App\Http\Controllers\admin;

use App\Models\Job;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class JobsController extends Controller
{
    public function index()
    {
        $jobs = Job::orderByDesc('created_at')->with('user', 'applicationsCount')->paginate(10);
        return view('admin.jobs.jobList', [
            'jobs' => $jobs
        ]);
    }



}
