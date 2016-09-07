<?php

namespace App\Http\Controllers;

use Validator;
use Input;
use Messages;
use Request;
use DB;
use DateTime;
use Session;
use Schema;
use Excel;
use Alert;
use DateTimeZone;
use App\User;

class UserController extends Controller
{
    public function index() {
        $user = DB::table('users')->where('username', session::get('username'))->first();
        $users = DB::table('users')->orderBy('id_user','desc')->get();
        $level=$user->level_user;
        $survey=DB::table('survey')->get();

        if($level == "1") {
            return view('role.superadmin.user', compact('user','users', 'survey'));
        }else{
            Alert::error("Maaf, anda tidak punya hak akses")->persistent("Oke");
            return redirect('login');
        } 
    }

    public function create(Request $request) {
        $users = new User;
        $users->name = Input::get('name');
        $users->username = str_random(6);
        $users->nip_user = Input::get('nip');
        $users->level_user = Input::get('level');
        $users->created_at = new DateTime('now', new DateTimeZone('Asia/Jakarta'));
        $users->updated_at = new DateTime('now', new DateTimeZone('Asia/Jakarta'));
            if($users->level_user == "1") {
                $level="Superadmin";
                $newline="\n";
                $huruf = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
                $users -> save();
                Alert::success($users->name.' telah ditambahkan sebagai '.$level.$newline.' username : '.$users->username)->persistent('oke');
                return redirect('/user');   
            } 
            else if ($users->level_user == "2") {
                $level="User";
                $newline="\n";
                $huruf = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
                $users -> save();
                Alert::success($users->name.' telah ditambahkan sebagai '.$level.$newline.' username : '.$users->username)->persistent('oke');
                return redirect('/user');   
            }
    }

    public function edit($id_user) {
        $user = User::find();
        Session::flash('success_message','Data '.$user -> username.' berhasil di edit');
        return redirect('/user');
    }

    public function delete($id_user) {
    	$data = DB::table('users') -> where('id_user', $id_user) -> first();
    	DB::table('users')->where('id_user', $id_user)->delete();
        return redirect('/user');  
    }

    public function tableuser() {
        $user = DB::table('users')->where('username', session::get('username'))->first();
        $users = DB::table('users')->orderBy('id_user','desc')->get();
        $level=$user->level_user;
        
        return view('role.superadmin.tableuser', compact('user','users'));
    }
}
