<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use DB;
use DateTime;
use Session;
use Schema;
use Excel;
use Illuminate\Support\Str;

class InputProgressController extends Controller
{
    public function index($id_Survey, $year, $id_Tahapan) {
        if(session::has('username')){
            $user=DB::table('users')
                ->where('username', session::get('username'))
                ->first();
            $survey = DB::table('survey')->get();
            $now2 = date('Y');
            $survey2 = DB::table('survey')->where('singkatan_Survey', $id_Survey)->where('tahun',$year) -> first();
            $tahapan = DB::table('tahapansurvey') ->where('id_Tahapan',$id_Tahapan) -> first();
            $tahapanSurvey2 = DB::table('tahapansurvey') -> where('id_Survey',$survey2 -> id_Survey) -> get();
            $ambiltabeltahapan = DB::table($tahapan -> data_Tahapan) -> get();
            
            return view('role.superadmin.inputprogress',compact('user','survey','now2','survey2','tahapan','tahapanSurvey2','ambiltabeltahapan'));
        }
        else {
            return redirect('/');
        }
    }
}
