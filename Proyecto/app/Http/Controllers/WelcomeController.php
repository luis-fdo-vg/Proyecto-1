<?php namespace App\Http\Controllers;

use DB;
use App\Http\Controllers\Controller;
use App\Quotation;
use App\Materia;
use App\Grupos;

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
		$mates=Materia::todamateria();

		return view('materia',compact("mates"));
	}

	public function Grupos($id){
		$grupos = Grupos::Grupos($id);
		$mates=Materia::todamateria();

		return view('muestra',compact("grupos","mates"));
	}

}