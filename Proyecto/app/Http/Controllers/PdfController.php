<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use DB;
use App\Grupos;
use App\Materia;
use App\Alumno;
use App\Http\Requests;
use App\Http\Controllers\Controller;

class PdfController extends Controller
{
   public function elPdf($id){

        $grupos = Grupos::Grupos($id);
        $mates=Materia::todamateria();
        $alems=Alumno::Alumbrado($id);

        $date = date('Y-m-d');
        $view =  \View::make('elPdf', compact("grupos", "mates", "alems", "date"))->render();
        $pdf = \App::make('dompdf.wrapper');
        $pdf->loadHTML($view);
        return $pdf->stream('elPdf');
    }

}
