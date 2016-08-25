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
    public function viewTahapan($id_survey, $id_tahapan){
        if(Session::get('username')=="alvian" || Session::get('username')=="aneksa") {
        	$user = DB::table('users')->where('username', session::get('username'))->first();
            $level=$user->level_user;

            $survey = DB::table('survey')->get();
            $survey2 = DB::table('survey')->where('id_survey', $id_survey) -> first();
            $tahapanSurvey2 = DB::table('tahapansurvey') -> where('id_survey', $id_survey) -> get();

            return view('role.superadmin.tahapansurvey', compact('user','id_survey','id_tahapan','survey', 'survey2', 'tahapanSurvey2'));
        }
        $users=DB::table($id_survey.'-hakakses')->where('id_user', Session::get('username'))->first();
        if($users) { 
            $user=DB::table('users') -> where('username', Session::get('username')) -> first();
            $level=$users->hakakses;

            $survey = DB::table('survey')->get();
            $survey2 = DB::table('survey')->where('id_survey', $id_survey) -> first();
            $tahapanSurvey2 = DB::table('tahapansurvey') -> where('id_survey', $id_survey) -> get();

            if($level) {
                 return view('role.superadmin.tahapansurvey', compact('user','id_survey','id_tahapan','survey', 'survey2', 'tahapanSurvey2'));
            }
            else {
                return back();
            }
        }
        else {
            Alert::error("Maaf, anda tidak punya hak akses")->persistent("Oke");
            return back();
        }
    }
}
