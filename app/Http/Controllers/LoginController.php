<?php

namespace App\Http\Controllers;

use Request;
use DB;
use DateTime;
use Session;
use Auth;
use Alert;
use App\Loguser;

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
            $id_user = $cek -> id_user;
            $status = 1;
            $ambiltgl =  new DateTime();
            DB::table('loguser')->insert(['id_users'=>$id_user, 'status'=>$status, 'waktu_login'=>$ambiltgl]);
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
    public function logout($id_user){
        $status = 0;
        $ambiltgl2 =  new DateTime();
        $tgl_skrg = $ambiltgl2->format('Y-m-d H:i:s');
        $loguser=DB::table('loguser')->where('id_users', $id_user)->where('waktu_logout','0000-00-00 00:00:00')->first();

        $updatestatus = DB::table('loguser')->where('id_users',$id_user)->where('id_log', $loguser->id_log)->update(['status'=>$status, 'waktu_logout'=>$tgl_skrg]);
        if($updatestatus) {
            session::forget('username');
            return redirect('login');
        }
        else {
            Session::flash('flash_notif', ["level"=>"danger", "message"=>"Oops, logout bermasalah. Silahkan coba kembali."]);
            return redirect('home');
        }
    }
}
