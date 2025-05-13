<?php

namespace App\Http\Controllers\admin;

use App\Models\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Validator;

class UserController extends Controller
{
    // Show all users
    public function index()
    {
        $users = User::orderByDesc('created_at')->paginate(10);
        return view('admin.users.users', ['users' => $users]);
    }
    // Show edit user page
    public function edit($id)
    {
        $updateUser = User::findOrFail($id);
        return view('admin.users.updateUser', [
            'updateUser' => $updateUser
        ]);
    }
    // Update user
    public function update(string $id, Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required|min:4|max:30',
            'email' => 'required|email|unique:users,email,' . $id . ',id',
            'mobile' => 'required',
        ]);
        if ($validator->passes()) {
            $user = User::find($id);
            $user->name = $request->name;
            $user->email = $request->email;
            $user->designation = $request->designation;
            $user->mobile = $request->mobile;
            $user->save();
            session()->flash('success', 'User information updated successfully.');
            return response()->json([
                'status' => true,
                'errors' => []
            ]);
        } else {
            return response()->json([
                'status' => false,
                'errors' => $validator->errors()
            ]);
        }
    }
    // Delete user
    public function destroy(Request $request)
    {
        $id = $request->id;
        $user_id = User::findOrFail($id);
        if ($user_id == null) {
            session()->flash('error', 'User is not found.');
            return response()->json([
                'status' => false
            ]);
        }
        $user_id->delete();
        session()->flash('success', 'User deleted successfully.');
        return response()->json([
            'status' => true
        ]);
    }
}
