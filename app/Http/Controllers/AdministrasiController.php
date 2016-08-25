<?php

namespace App\Http\Controllers;

use Request;
use DB;
use DateTime;
use DateTimeZone;
use Session;
use Schema;
use Excel;
use Alert;

use App\Http\Requests;

class AdministrasiController extends Controller
{
    //VIEW ADMINISTRASI
    public function index($id_survey){
        if(session::has('username')){
        	$user = DB::table('users')->where('username', session::get('username'))->first();
            $level=$user->level_user;
        	$survey = DB::table('survey')->get();
        	$tahapan_Survey = DB::table('tahapansurvey')->where('id_survey', $id_survey)->get();
        	$daftarHakAkses = DB::table($id_survey.'-hakakses')->get();
            $daftarWilayah = DB::table('wilayah')->where('id_survey',$id_survey)->get();
            $wilayah = DB::table('wilayah')->where('id_survey', $id_survey)->where('nama_wilayah', $daftarWilayah[count($daftarWilayah)-1]->nama_wilayah)->first();
            if($level == 1){
        	   return view('role.superadmin.administrasi', compact('user', 'id_survey', 'survey', 'tahapan_Survey', 'daftarHakAkses','wilayah'));
            }
            if($level == 2){
               return view('role.admin.administrasi', compact('user', 'id_survey', 'survey', 'tahapan_Survey', 'daftarHakAkses','wilayah'));         
            }
            if($level == 3){
               return view('role.operator.administrasi', compact('user', 'id_survey', 'survey', 'tahapan_Survey', 'daftarHakAkses','wilayah'));         
            }
            if($level == 3){
               return view('role.operator.administrasi', compact('user', 'id_survey', 'survey', 'tahapan_Survey', 'daftarHakAkses','wilayah'));         
            }

    }
    //tambah hak akses
    public function postAdministrasi($id_survey){
        $now = new DateTime('now', new DateTimeZone('Asia/Jakarta'));
        $user_login = Session::get('username');
    	$counter = Request::get('counter');
        $id_wilayah = Request::get('wilayah');
        $nip = Request::get('nip');
        $hakakses = Request::get('hakakses');
        $pegawai = DB::table('users')->where('nip_user', $nip)->first();

        if($pegawai){            
            $wilayah = DB::table('wilayah')->where('id_survey', $id_survey)->get();

            $cek_hakakses = DB::table($id_survey.'-hakakses')->where('id_user', $pegawai->username)->first();
            if(!$cek_hakakses){
                DB::table($id_survey.'-hakakses')->insert(['id_user'=>$pegawai->username, 'hakakses'=>$hakakses, 'tgl_create'=>$now, 'tgl_update'=>$now, 'user_create'=>$user_login, 'user_update'=>$user_login]);
            }

            foreach($id_wilayah as $f_id_wilayah){
                $get_wilayah = DB::table($id_survey.'-'.$wilayah[count($wilayah)-1]->nama_wilayah)->where('id_'.$wilayah[count($wilayah)-1]->nama_wilayah, $f_id_wilayah)->first();
                $get_header_wilayah = Schema::getColumnListing($id_survey.'-'.$wilayah[count($wilayah)-1]->nama_wilayah);
                for($i=0;$i<count($get_header_wilayah)-1;$i++){
                    $row_wilayah[$get_header_wilayah[$i]] = $get_wilayah->$get_header_wilayah[$i];
                }
                $row_wilayah['id_user'] = $pegawai->username;

                $cek_wilayah = DB::table($id_survey.'-hakakses-wilayah')->where($row_wilayah)->first();
                if(!$cek_wilayah){
                    $row_wilayah['tgl_create'] = $now;
                    $row_wilayah['tgl_update'] = $now;
                    $row_wilayah['user_create'] = $user_login;
                    $row_wilayah['user_update'] = $user_login;
                    DB::table($id_survey.'-hakakses-wilayah')->insert([$row_wilayah]);
                }
            }
            Alert::success($pegawai->name.' telah ditambahkan sebagai '.$hakakses)->persistent('oke');
            return redirect($id_survey.'/administrasi');     
        } else {
            Alert::warning('Pegawai dengan NIP '.$nip.' tidak ditemukan')->persistent('oke');
            return redirect($id_survey.'/administrasi');
        }
    }

    //edit hak akses
    public function editAdministrasi($id_survey, $user_hakakses){
        $user = DB::table('users')->where('username', session::get('username'))->first();
        $survey = DB::table('survey')->get();
        $tahapan_survey = DB::table('tahapansurvey')->where('id_survey', $id_survey)->get();
        $daftarHakAkses = DB::table($id_survey.'-hakakses')->get();
        $daftarWilayah = DB::table('wilayah')->where('id_survey',$id_survey)->get();
        $wilayah = DB::table('wilayah')->where('id_survey', $id_survey)->where('nama_wilayah', $daftarWilayah[count($daftarWilayah)-1]->nama_wilayah)->first();
        return view('role.superadmin.editadministrasi', compact('user', 'user_hakakses', 'id_survey', 'survey', 'tahapan_survey', 'daftarHakAkses','wilayah'));
    }

    //save hak akses
    public function saveAdministrasi($id_survey, $user_hakakses){
        $now = new DateTime('now', new DateTimeZone('Asia/Jakarta'));
        $user_login = Session::get('username');
        $counter = Request::get('counter');
        $id_wilayah = Request::get('wilayah');
        $nip = Request::get('nip');
        $hakakses = Request::get('hakakses');
        $pegawai = DB::table('users')->where('nip_user', $nip)->first();

        if($pegawai){
            $wilayah = DB::table('wilayah')->where('id_survey', $id_survey)->get();

            DB::table($id_survey.'-hakakses')->where('id_user', $user_hakakses)->update(['id_user'=>$pegawai->username, 'hakakses'=>$hakakses, 'tgl_update'=>$now, 'user_update'=>$user_login]);        

            DB::table($id_survey.'-hakakses-wilayah')->where('id_user', $user_hakakses)->delete();
            foreach($id_wilayah as $f_id_wilayah){
                $get_wilayah = DB::table($id_survey.'-'.$wilayah[count($wilayah)-1]->nama_wilayah)->where('id_'.$wilayah[count($wilayah)-1]->nama_wilayah, $f_id_wilayah)->first();
                $get_header_wilayah = Schema::getColumnListing($id_survey.'-'.$wilayah[count($wilayah)-1]->nama_wilayah);

                for($i=0;$i<count($get_header_wilayah)-1;$i++){
                    $row_wilayah[$get_header_wilayah[$i]] = $get_wilayah->$get_header_wilayah[$i];
                }
                $row_wilayah['id_user'] = $pegawai->username;

                $cek_wilayah = DB::table($id_survey.'-hakakses-wilayah')->where($row_wilayah)->first();
                if(!$cek_wilayah){
                    $row_wilayah['tgl_create'] = $now;
                    $row_wilayah['tgl_update'] = $now;
                    $row_wilayah['user_create'] = $user_login;
                    $row_wilayah['user_update'] = $user_login;
                    DB::table($id_survey.'-hakakses-wilayah')->insert([$row_wilayah]);
                }
            }
            Alert::success('Pegawai telah berhasil diedit')->persistent('oke');
            return redirect($id_survey.'/administrasi');     
        } else {
            Alert::warning('Pegawai dengan NIP '.$nip.' tidak ditemukan')->persistent('oke');
            return redirect($id_survey.'/administrasi');
        }
    }
}
