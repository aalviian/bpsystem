<?php

namespace App\Http\Controllers;

use Request;
use DB;
use DateTime;
use Session;
use Auth;
use Alert;

use App\Http\Requests;

class LoginController extends Controller
{
    //INDEX
    public function index(){
        if(session::has('username')){
            return redirect('home');
        } else {
            return redirect('login');
        }
    }

    //FORM LOGIN
    public function formLogin(){
    	return view('auth.login');
    }

    //LOGIN
    public function login(){
    	$cek=DB::table('users')->where('username', Request::get('username'))->first();
        if ($cek)
        {
            session::put('username', $cek->username);
            Alert::success('Welcome '.$cek->name, 'Login Success')->persistent("Oke");
            return redirect('home');
        }
        else {
            Alert::warning("Username salah")->persistent("Oke");
            return redirect('login');
        }
    }

    //LOGOUT
    public function logout(){
        session::forget('username');
        return redirect('login');
    }
}
