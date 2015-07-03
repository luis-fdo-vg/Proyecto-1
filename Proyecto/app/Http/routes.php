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
Route::get('/', 'WelcomeController@index');
Route::get('proyecto-1/Proyecto/public/materia', 'WelcomeController@Materia');
Route::get('proyecto-1/Proyecto/public/index', 'WelcomeController@index');
Route::get('proyecto-1/Proyecto/public/grupos/{id}', 'WelcomeController@Grupos');
Route::get('proyecto-1/Proyecto/public/grupos/pdf/{id}', 'PdfController@elPdf');
//Route::get('home', 'HomeController@index');



/*Route::get('/', function () {
    $alumnos = DB::table('alumnos')->where('id_alumno','=','1')->get();
    //get(); --regresa Todo
    return $alumnos;
    
});*/