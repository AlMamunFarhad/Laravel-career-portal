<?php

namespace App\Http\Controllers;

use App\Models\Job;
use App\Models\JobType;
use App\Models\Category;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index()
    {

        $categories = Category::where('status', 1)->take(8)->get();
        $homeCategories = Category::where('status', 1)->get();

        $featuredJobs = Job::where([
          'status' => 1,
          'isFeatured' => 1
        ])->orderBy('created_at', 'DESC')->take(6)->with('jobType')->get();
        
        $latestJobs = Job::where('status', 1)->orderBy('created_at', 'DESC')->take(6)->with('jobType')->get();

        return view('front_page.index', [
            'categories' => $categories,
            'featuredJobs' => $featuredJobs,
            'latestJobs' => $latestJobs,
            'homeCategories' => $homeCategories

        ]);        
    }
}
