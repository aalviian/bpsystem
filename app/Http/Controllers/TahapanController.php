<?php

namespace App\Http\Controllers;

use Request;
use DB;
use DateTime;
use Session;
use Schema;
use Excel;
use Illuminate\Database\Schema\Blueprint;

use App\Http\Requests;

class TahapanController extends Controller
{
    //VIEW TAHAPAN
    public function viewTahapan($id_Survey, $id_Tahapan){
    	$user = DB::table('users')->where('email', session::get('email'))->first();
    	$survey=DB::table('survey')->get();
    	$tahapan=DB::table('tahapansurvey')->where('id_Survey', $id_Survey)->get();
    	if(Session::has('email')){
            return view('role.superadmin.tahapansurvey', compact('user', 'survey', 'tahapan', 'id_Survey', 'id_Tahapan'));
        }else{
            return redirect('login');
        }
    }
}
