<?php

namespace App\Http\Controllers;

use Request;
use DB;
use DateTime;
use Session;
use Schema;
use Excel;
use Alert;
use Illuminate\Database\Schema\Blueprint;

use App\Http\Requests;

class SurveyController extends Controller
{
    //INDEX
    public function index()
    {  
        $user = DB::table('users')->where('username', session::get('username'))->first();
        $level=$user->level_user;

        $survey=DB::table('survey')->get();
        if($level == "1") {
            return view('role.superadmin.createsurvey', compact('user', 'survey'));
        }else{
            Alert::error("Maaf, anda tidak punya hak akses")->persistent("Oke");
            return back();
        } 
    }

    //CREATE
    public function create(){
        $now = new DateTime();
        $date = date('Y');
        $dateTime = date('d/m/Y');
        $identitas_survey = Request::get('surveyidentity');
        $survey_mulai = Request::get('tgl_mulai');
        $survey_selesai = Request::get('tgl_selesai');
        $user_login = Session::get('username');
        $tahapan_mulai = Request::get('tahapan_mulai');
        $tahapan_selesai = Request::get('tahapan_selesai');
        $nama_tahapan = Request::get('nama_tahapan');
        $size = count($nama_tahapan);
        $nama_wilayah = Request::get('nama_wilayah');
        $length_wilayah = Request::get('length_wilayah');
        $data_tahapan = Request::get('data_tahapan');
        $type_tahapan = Request::get('type_tahapan');
        
        DB::beginTransaction();

        try{
            //Monitoring/survey
            if($survey_mulai>=$survey_selesai or $survey_mulai<$dateTime or $survey_selesai<=$dateTime){
                Alert::error("Tanggal survey yang anda masukkan salah")->persistent("Oke");
                return redirect('createsurvey');
            } else {
                DB::table('survey')->insert([
                    'id_survey' => $identitas_survey,
                    'nama_survey' => Request::get('surveyname'),
                    'tgl_mulai' => $survey_mulai,
                    'tgl_selesai' => $survey_selesai,
                    'status' => 0,
                    'tahun' => $date,
                    'tgl_create' => $now,
                    'tgl_update' => $now,
                    'user_create' => $user_login,
                    'user_update' => $user_login
                ]);
            }
        }   catch (\Exception $e) {
            DB::table('survey')->where('id_survey', $identitas_survey)->where('tgl_create', $now)->delete();
            Alert::error("Terdapat data survey yang terisi secara tidak benar.")->persistent("Oke");
            return redirect('createsurvey');
        }

        $survey = DB::table('survey')->where('id_survey', $identitas_survey)->first();

        try{
            //Cakupan Wilayah
            $count=Request::get('count');
            $index=count($count);
            for($j=1;$j<=$index;$j++){
                $dat = Request::file('wilayah'.$j);
                DB::table('wilayah')->insert([
                    'id_wilayah'=>$j,
                    'id_survey'=>$survey->id_survey,
                    'nama_wilayah'=>$nama_wilayah[$j-1],
                    'data_wilayah'=>$identitas_survey.'-'.$nama_wilayah[$j-1],
                    'tgl_create'=>$now,
                    'tgl_update'=>$now
                ]);

                $exdata = Excel::selectSheetsByIndex(0)->load($dat, function($reader) {})->get();

                Schema::create($identitas_survey.'-'.$nama_wilayah[$j-1], function(Blueprint $table)use($j,$nama_wilayah,$length_wilayah){
                    for($k=$j-1;$k>=0;$k--){
                        if($k==$j-1){
                            $table->string('id_'.$nama_wilayah[$k],$length_wilayah[$k])->primary();
                        } else {
                            $table->string('id_'.$nama_wilayah[$k],$length_wilayah[$k]);
                        }
                    }
                    $table->string('nama_'.$nama_wilayah[$j-1]);
                        
                });
                foreach ($exdata->toArray() as $row) {
                    DB::table($identitas_survey.'-'.$nama_wilayah[$j-1])->insert([$row]);
                }
            }

            //Hak Akses
            $admin = Request::get('admin');

            Schema::create($identitas_survey.'-hakakses', function(Blueprint $table){

                $table->string('id_user');
                $row_hakakses[] = 'id_user';
                $table->string('hakakses');
                $row_hakakses[] = 'hakakses';
                $table->primary($row_hakakses);
                $table->dateTime('tgl_create');
                $table->dateTime('tgl_update');
                $table->string('user_create');
                $table->string('user_update');
            });

            Schema::create($identitas_survey.'-hakakses-wilayah', function(Blueprint $table)use($nama_wilayah,$length_wilayah){
                foreach(array_combine($nama_wilayah, $length_wilayah) as $wil=>$length){
                    $table->string('id_'.$wil,$length);
                    $row_hakakses[] = 'id_'.$wil;
                }
                $table->string('id_user');
                $row_hakakses[] = 'id_user';
                $table->primary($row_hakakses);
                $table->dateTime('tgl_create');
                $table->dateTime('tgl_update');
                $table->string('user_create');
                $table->string('user_update');
            });

        }catch (\Exception $e) {
            DB::table('survey')->where('id_survey', $identitas_survey)->where('tgl_create', $now)->delete();
            DB::table('wilayah')->where('id_survey', $identitas_survey)->where('tgl_create', $now)->delete();
            $this->deleteTableWilayah($index,$identitas_survey,$nama_wilayah);
            Alert::error("Terdapat data tahapan yang terisi secara tidak benar.")->persistent("Oke");
            return redirect('createsurvey');
        }

        try{
            //Tahapan Survey
            for($i=0;$i<$size;$i++){
                if($tahapan_mulai[$i]>=$tahapan_selesai[$i] or $tahapan_mulai[$i]<$survey_mulai or $tahapan_mulai[$i]>$survey_selesai or $tahapan_selesai[$i]<$survey_mulai or $tahapan_selesai[$i]>$survey_selesai){

                    DB::table('survey')->where('id_survey', $identitas_survey)->where('tgl_create', $now)->delete();
                    DB::table('wilayah')->where('id_survey', $identitas_survey)->where('tgl_create', $now)->delete();
                    DB::table('tahapansurvey')->where('id_survey', $identitas_survey)->where('tgl_create', $now)->delete();
                    $this->deleteTableWilayah($index,$identitas_survey,$nama_wilayah);
                    Alert::error("Tanggal tahapan yang anda masukkan salah")->persistent("Oke");
                    return redirect('createsurvey');

                } else {    
                    DB::table('tahapansurvey')->insert([
                        'id_tahapan'=>$i+1,
                        'id_survey'=> $survey->id_survey,
                        'nama_tahapan'=>$nama_tahapan[$i],
                        'tgl_mulai'=>$tahapan_mulai[$i],
                        'tgl_selesai'=>$tahapan_selesai[$i],
                        'tgl_create'=>$now,
                        'tgl_update'=>$now,
                        'user_create' => $user_login,
                        'user_update' => $user_login

                    ]);

                    $this->createTableTahapan($identitas_survey,$nama_tahapan,$nama_wilayah,$length_wilayah,$data_tahapan,$type_tahapan,$i);
                }
            }
        }catch (\Exception $e) {
            DB::table('survey')->where('id_survey', $identitas_survey)->where('tgl_create', $now)->delete();
            DB::table('wilayah')->where('id_survey', $identitas_survey)->where('tgl_create', $now)->delete();
            DB::table('tahapansurvey')->where('id_survey', $identitas_survey)->where('tgl_create', $now)->delete();
            $this->deleteTableTahapan($index,$nama_tahapan,$identitas_survey,$nama_wilayah);
            Alert::error("Terdapat data tahapan yang terisi secara tidak benar.")->persistent("Oke");
            return redirect('createsurvey');
        }

        DB::commit();
        Alert::success("Survey telah berhasil dibuat, silakan atur hak akses terlebih dahulu")->persistent("Oke");
        return redirect($survey->id_survey.'/administrasi');

    } 

    public function survey($id_survey){
        if(Session::get('username')=="alvian" || Session::get('username')=="aneksa") {
            $user=DB::table('users') -> where('username', Session::get('username')) -> first();
            $level=$user->level_user;

            $survey = DB::table('survey')->get();
            $survey2 = DB::table('survey')->where('id_survey', $id_survey) -> first();
            $tahapanSurvey2 = DB::table('tahapansurvey') -> where('id_survey', $id_survey) -> get();

            return view('role.superadmin.survey', compact('user', 'id_survey', 'survey','$survey2','tahapanSurvey2','survey2'));
        }
        $users=DB::table($id_survey.'-hakakses')->where('id_user', Session::get('username'))->first();
        if($users) {   
            $user=DB::table('users') -> where('username', Session::get('username')) -> first();
            $level=$users->hakakses;

            $survey = DB::table('survey')->get();
            $survey2 = DB::table('survey')->where('id_survey', $id_survey) -> first();
            $tahapanSurvey2 = DB::table('tahapansurvey') -> where('id_survey', $id_survey) -> get();

            if($level) {
                return view('role.superadmin.survey', compact('user', 'id_survey', 'survey','$survey2','tahapanSurvey2','survey2'));
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


    protected function createTableTahapan($identitas_survey,$nama_tahapan,$nama_wilayah,$length_wilayah,$data_tahapan,$type_tahapan,$i){
        Schema::create($identitas_survey.'-'.$nama_tahapan[$i], function(Blueprint $table)use($nama_wilayah,$length_wilayah,$data_tahapan,$type_tahapan,$i){    
            foreach(array_combine($nama_wilayah, $length_wilayah) as $wil=>$length){
                $table->string('id_'.$wil,$length);
                $primary[] = 'id_'.$wil;
            }
            $size_tambah_tahapan=count($data_tahapan[$i+1]);
            for($j=0;$j<$size_tambah_tahapan;$j++){
                if($type_tahapan[$i+1][$j]=='1'){
                    $table->string($data_tahapan[$i+1][$j]);
                }else if($type_tahapan[$i+1][$j]=='2'){
                    $table->integer($data_tahapan[$i+1][$j]);
                }else if($type_tahapan[$i+1][$j]=='3'){
                    $table->float($data_tahapan[$i+1][$j]);
                }
            }
            $table->primary($primary);
            $table->dateTime('tgl_create');
            $table->dateTime('tgl_update');
            $table->string('user_create');
            $table->string('user_update');
        });
                    
        Schema::create($identitas_survey.'-'.$nama_tahapan[$i].'-hist', function(Blueprint $table)use($nama_wilayah,$length_wilayah,$data_tahapan,$type_tahapan,$i){      
            foreach(array_combine($nama_wilayah, $length_wilayah) as $wil=>$length){
                $table->string('id_'.$wil,$length);
                $primary[] = 'id_'.$wil;
            }
            $size_tambah_tahapan=count($data_tahapan[$i+1]);
            for($j=0;$j<$size_tambah_tahapan;$j++){
                if($type_tahapan[$i+1][$j]=='1'){
                    $table->string($data_tahapan[$i+1][$j]);
                }else if($type_tahapan[$i+1][$j]=='2'){
                    $table->integer($data_tahapan[$i+1][$j]);
                }else if($type_tahapan[$i+1][$j]=='3'){
                    $table->float($data_tahapan[$i+1][$j]);
                }
            }
            $table->dateTime('tgl_create');
            $primary[] = 'tgl_create';
            $table->primary($primary);
            $table->dateTime('tgl_update');
            $table->string('user_create');
            $table->string('user_update');
        });

        Schema::create($identitas_survey.'-'.$nama_tahapan[$i].'-histgl', function(Blueprint $table)use($nama_wilayah,$length_wilayah,$data_tahapan,$type_tahapan,$i){      
            foreach(array_combine($nama_wilayah, $length_wilayah) as $wil=>$length){
                $table->string('id_'.$wil,$length);
                $primary[] = 'id_'.$wil;
            }
            $size_tambah_tahapan=count($data_tahapan[$i+1]);
            for($j=0;$j<$size_tambah_tahapan;$j++){
                if($type_tahapan[$i+1][$j]=='1'){
                    $table->string($data_tahapan[$i+1][$j]);
                }else if($type_tahapan[$i+1][$j]=='2'){
                    $table->integer($data_tahapan[$i+1][$j]);
                }else if($type[$i+1][$j]=='3'){
                    $table->float($data_tahapan[$i+1][$j]);
                }
            }
            $table->date('tgl_create');
            $primary[] = 'tgl_create';
            $table->primary($primary);
            $table->dateTime('tgl_update');
            $table->string('user_create');
            $table->string('user_update');
        });
    }

    protected function deleteTableTahapan($nama_tahapan,$identitas_survey,$nama_wilayah){
        foreach ($nama_tahapan as $f_nama_tahapan) {
            Schema::drop($identitas_survey.'-'.$f_nama_tahapan);
            Schema::drop($identitas_survey.'-'.$f_nama_tahapan.'-hist');
            Schema::drop($identitas_survey.'-'.$f_nama_tahapan.'-histgl');
            $this->deleteTableWilayah($index,$identitas_survey,$nama_wilayah);
        }
    }

    protected function deleteTableWilayah($index,$identitas_survey,$nama_wilayah){
        for($j=1;$j<=$index;$j++){
            Schema::drop($identitas_survey.'-'.$nama_wilayah[$j-1]);
        }
        Schema::drop($identitas_survey.'-hakakses-wilayah');
    }
}
