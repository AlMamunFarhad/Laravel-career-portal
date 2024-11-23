<?php

namespace App\Http\Controllers;

use App\Models\Job;
use App\Models\User;
use App\Models\JobType;
use App\Models\Category;
use App\Models\SavedJob;
use Illuminate\Http\Request;
use App\Mail\JobNotification;
use App\Models\JobApplication;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Mail;

class JobController extends Controller
{
    //***  Show Find jobs page
    public function index(Request $request)
    {
        $categories = Category::where('status', 1)->orderBy('name')->get();
        $jobTypes = JobType::where('status', 1)->orderBy('name')->get();
        $jobs = Job::where('status', 1);

        //*** search using keyword
        if (!empty($request->keyword)) {
            $jobs = $jobs->where(function ($query) use ($request) {
                $query->orWhere('title', 'like', '%' . $request->keyword . '%');
                $query->orWhere('keywords', 'like', '%' . $request->keyword . '%');
            });
        }
        //***  Search using location
        if (!empty($request->location)) {
            $jobs = $jobs->where('location', $request->location);
        }
        //***  Search using category
        if (!empty($request->category)) {
            $jobs = $jobs->where('category_id', $request->category);
        }
        //***  Search using Job type
        $jobTypeArray = [];
        if (!empty($request->jobType)) {
            $jobTypeArray = explode(',', $request->jobType);
            $jobs = $jobs->whereIn('job_type_id', $jobTypeArray);
        }
        //*** Search using Experience
        if (!empty($request->experience)) {
            $jobs = $jobs->where('experience', $request->experience);
        }

        if ($request->sort == '0') {
            $jobs = $jobs->orderBy('created_at', 'ASC');
        } else {
            $jobs = $jobs->orderBy('created_at', 'DESC');
        }

        $jobs = $jobs->with(['jobType', 'category'])->paginate(6);

        return view('front_page.jobs', [
            'categories' => $categories,
            'jobTypes' => $jobTypes,
            'jobs' => $jobs,
            'jobTypeArray' => $jobTypeArray
        ]);
    }
    public function jobDetail($id)
    {
        $job = Job::where([
            'id' => $id,
            'status' => 1,
        ])->with(['jobType', 'category'])->first();

        if ($job == null) {
            abort(404);
        }

        $count = 0;
        if (Auth::user()) {
            $count = SavedJob::where([
                'user_id' => Auth::user()->id,
                'job_id' => $id
            ])->count();
        }

        $appliedUsers = JobApplication::where('job_id', $id)->with('user')->get();

        return view('front_page.jobDetail', [
            'job' => $job,
            'count' => $count,
            'appliedUsers' => $appliedUsers,
        ]);
    }

    public function applyJob(Request $request)
    {
        $id = $request->id;

        $job = Job::where('id', $id)->first();
        //** If Job not found in db
        if ($job == null) {
            session()->flash('error', 'Job does not exist.');
            return response()->json([
                'status' => false,
                'message' => 'Job does not exist.',
            ]);
        }

        //** You can not apply on your own job
        $employerId = $job->user_id;
        if ($employerId == Auth::user()->id) {
            session()->flash('error', 'You can not apply on your own job.');
            return response()->json([
                'status' => false,
                'message' => 'You can not apply on your own job.',
            ]);
        }

        $jobApplyCount = JobApplication::where([
            'user_id' => Auth::user()->id,
            'job_id' => $id
        ])->count();

        // You can not apply on a job twise
        if ($jobApplyCount > 0) {
            session()->flash('error', 'You already applied on this job.');
            return response()->json([
                'status' => false,
                'message' => 'You already applied on this job.'
            ]);
        }

        $application = new JobApplication();
        $application->job_id = $id;
        $application->user_id = Auth::user()->id;
        $application->employer_id = $employerId;
        $application->applied_date = now();
        $application->save();

        // Sending Email Method
        $employer = User::where('id', $employerId)->first();
        $mailData = [
            'employer' => $employer,
            'user' => Auth::user(),
            'job' => $job,
        ];
        Mail::to($employer->email)->send(new JobNotification($mailData));

        $message = "You have successfully applied.";
        session()->flash('success', $message);

        return response()->json([
            'status' => true,
            'message' => $message
        ]);
    }

    public function saveJob(Request $request)
    {
        $id = $request->id;

        $job = Job::find($id);

        if ($job == null) {
            session()->flash('error', 'Job is not found.');
            return response()->json([
                'status' => false
            ]);
        }

        $count = SavedJob::where([
            'user_id' => Auth::user()->id,
            'job_id' => $id
        ])->count();

        if ($count > 0) {
            session()->flash('error', 'You already saved on this job.');
            return response()->json([
                'status' => false
            ]);
        }

        $saveJob = SavedJob::create([
            'user_id' => Auth::user()->id,
            'job_id' => $id,
        ]);

        session()->flash('success', 'You have successfully saved the job.');
        return response()->json([
            'status' => true
        ]);
    }
}
