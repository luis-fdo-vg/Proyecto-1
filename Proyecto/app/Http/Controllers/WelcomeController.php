<?php namespace App\Http\Controllers;

use DB;
use App\Http\Controllers\Controller;
use App\Quotation;


class WelcomeController extends Controller {

	public function __construct()
	{
		$this->middleware('guest');
	}

	public function index()
	{
		return view('welcome');
	
	}

	public function materia(){
		/*
		$mate1 = DB::table('materias')->select('nombre')->where('id_materias','=','1')->get();
		$mate2 = DB::table('materias')->select('nombre')->where('id_materias','=','2')->get();
		$mate3 = DB::table('materias')->select('nombre')->where('id_materias','=','3')->get();

		, ['materia1' => $mate1], ['materia2' => $mate2], ['materia3' => $mate3]
*/
		return view('materia');
	}

}