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
Route::get('proyecto-1/proyecto/public/materia', 'WelcomeController@Materia');
Route::get('proyecto-1/proyecto/public/index', 'WelcomeController@index');
//Route::get('home', 'HomeController@index');



/*Route::get('/', function () {
    $alumnos = DB::table('alumnos')->where('id_alumno','=','1')->get();
    //get(); --regresa Todo
    return $alumnos;
    
});*/