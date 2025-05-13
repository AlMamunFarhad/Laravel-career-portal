<?php

namespace App\Http\Controllers\admin;

use App\Models\Job;
use App\Models\JobType;
use App\Models\Category;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Validator;


class JobsController extends Controller
{
    // Show all jobs
    public function index()
    {
        $jobs = Job::orderByDesc('created_at')->with('user', 'applicationsCount')->paginate(10);
        return view('admin.jobs.jobList', [
            'jobs' => $jobs
        ]);
    }
    // Show edit job page
    public function edit(string $id)
    {
        $updateJob = Job::find($id);
        $categories = Category::orderBy('name', 'ASC')->get();
        $jobTypes = JobType::orderBy('name', 'ASC')->get();
        return view('admin.jobs.update', [
            'updateJob' => $updateJob,
            'categories' => $categories,
            'jobTypes' => $jobTypes
        ]);
    }
    // Update job
    public function update(Request $request, $id)
    {
        $rules = [
            'title' => 'required|min:4|max:150',
            'category' => 'required',
            'jobType' => 'required',
            'vacancy' => 'required|integer',
            'location' => 'required|max:100',
            'description' => 'required',
            'experience' => 'required',
            'companyName' => 'required|min:3|max:100',
        ];
        $validator = validator::make($request->all(), $rules);
        $updateJob =  Job::find($id);
        if ($validator->passes()) {
            $updateJob->update([
                'title' => $request->title,
                'category_id' => $request->category,
                'job_type_id' => $request->jobType,
                'vacancy' => $request->vacancy,
                'salary' => $request->salary,
                'location' => $request->location,
                'description' => $request->description,
                'benefits' => $request->benefits,
                'responsibility' => $request->responsibility,
                'qualifications' => $request->qualifications,
                'experience' => $request->experience,
                'keywords' => $request->keywords,
                'company_name' => $request->companyName,
                'company_location' => $request->company_location,
                'company_website' => $request->website,
                'status' => $request->status,
                'isFeatured' => (!empty($request->isFeatured)) ? $request->isFeatured : 0,
            ]);
            session()->flash('success', 'Job updated Successfully.');
            return response()->json([
                'status' => true,
                'errors' => [],
            ]);
        } else {
            return response()->json([
                'status' => false,
                'errors' => $validator->errors()
            ]);
        }
    }
    // Delete job 
    public function destroy(Request $request)
    {
        $id = $request->id;
        $job = Job::findOrFail($id);
        if ($job == null) {
            session()->flash('error', 'Job is not found.');
            return response()->json([
                'status' => false
            ]);
        }
        $job->delete();
        session()->flash('success', 'Job deleted successfully.');
        return response()->json([
            'status' => true
        ]);
    }
}
