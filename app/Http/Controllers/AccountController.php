<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Auth;

class AccountController extends Controller
{
    // This method will show ragitration Page
    public function registration()
    {
        return view('front_page.account.registration');
    }

    // This method will save register user

    public function processRegister(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required',
            'email' => 'required|email|unique:users,email',
            'password' => 'required|min:4|same:confirm_password',
            'confirm_password' => 'required'
        ]);


        if ($validator->passes()) {

            $user = new User();
            $user->name = $request->name;
            $user->email = $request->email;
            $user->password = Hash::make($request->password);
            // $user->name = $request->name; 
            $user->save();

            session()->flash('success', 'You have registerd successfully.');

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

    // This method will show login Page
    public function login() {
        return view('front_page.account.login');
    }

    public function authenticate(Request $request)
    {
        $validator = Validator::make($request->all(),[
            'email' => 'required|email',
            'password' => 'required',
        ]);

        if($validator->passes()){
           
            if(Auth::attempt(['email' => $request->email, 'password' => $request->password])){
               return redirect()->route('account.profile');
            }else{
                return redirect()->route('account.login')->with('error', 'Either Email or Password is incorrect');
            }
        }else{
            return redirect()->route('account.login')->withErrors($validator)->withInput($request->only('email'));
        }
    }

    public function profile()
    {
        return view('front_page.account.profile');
    }

    public function logout()
    {
        Auth::logout();
        return redirect()->route('account.login');
    }
}
