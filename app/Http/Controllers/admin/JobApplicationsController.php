<?php

namespace App\Http\Controllers\admin;

use Illuminate\Http\Request;
use App\Models\JobApplication;
use App\Http\Controllers\Controller;

class JobApplicationsController extends Controller
{
    public function index()
    {
        $applications = JobApplication::orderByDesc('created_at')->with('job', 'user', 'employer')->paginate(10);

        return view('admin.jobs.applications', [
            'applications' => $applications
        ]);
    }

    public function delete(Request $request)
    {
        $id = $request->id;

        $job_id = JobApplication::find($id);

        if ($job_id == null) {
            session()->flash('error', 'Applicaiotn is not found.');
            return response()->json([
                   'status' => false
            ]);
        }

        $job_id->delete();
        session()->flash('success', 'Applicaion deleted successfylly.');
        return response()->json([
            'status' => true
         ]);




    }
}
