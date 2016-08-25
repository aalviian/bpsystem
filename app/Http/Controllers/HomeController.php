<?php

namespace App\Http\Controllers;

use Request;
use DB;
use DateTime;
use Session;

use App\Http\Requests;

class HomeController extends Controller
{
    //INDEX
    public function index(){
        if(session::has('username')){
            $user=DB::table('users') -> where('username', session::get('username')) -> first();
            $level=$user->level_user;
            $survey=DB::table('survey')->get();

            if($level == 1){
                return view('role.superadmin.home', compact('user','survey'));
            } else if($level == 2) {
                return view('');
            }
            
        } else {
            return redirect('login');
        }
    }
}
