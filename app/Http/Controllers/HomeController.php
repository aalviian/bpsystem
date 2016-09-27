<?php

namespace App\Http\Controllers;

use Request;
use DB;
use DateTime;
use Session;
use App\Loguser;
use App\Http\Requests;

class HomeController extends Controller
{
    //INDEX
    public function index(){
        if(session::has('username')){
            $user = DB::table('users') -> where('username', session::get('username')) -> first();
            $survey=DB::table('survey')->get(); 
            return view('role.superadmin.home', compact('user','survey')); 
            
        } else { 
            return redirect('login');
        }
    }
}
