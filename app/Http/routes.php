<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/


//Login
Route::get('/','LoginController@index');
Route::get('login', 'LoginController@formLogin');
Route::post('login', 'LoginController@login');

//Logout
Route::get('logout', 'LoginController@logout');

//Home
Route::get('home', 'HomeController@index');

//Administrasi
Route::get('{id_survey}/administrasi', 'AdministrasiController@index');
Route::post('{id_survey}/administrasi/tambah', 'AdministrasiController@postAdministrasi');
Route::get('{id_survey}/administrasi/{user_hakakses}/edit', 'AdministrasiController@editAdministrasi');
Route::post('{id_survey}/administrasi/{user_hakakses}/edit', 'AdministrasiController@saveAdministrasi');


//Survey
Route::get('createsurvey', 'SurveyController@index');
Route::post('createsurvey', 'SurveyController@create');
Route::get('{id_survey}', 'SurveyController@survey');

Route::get('{id_survey}/{id_tahapan}', 'TahapanController@viewTahapan');

//input data
Route::get('{id_survey}/{id_tahapan}/input', 'InputController@index');
Route::post('{id_survey}/{id_Tahapan}/input/tambah', 'InputController@tambah');
Route::post('{id_survey}/{id_Tahapan}/input/tambah/file', 'InputController@tambahdgnfile');

