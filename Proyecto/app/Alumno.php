<?php

namespace App;

use Illuminate\Auth\Authenticatable;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Auth\Passwords\CanResetPassword;
use Illuminate\Contracts\Auth\Authenticatable as AuthenticatableContract;
use Illuminate\Contracts\Auth\CanResetPassword as CanResetPasswordContract;

class Alumno extends Model
{
    protected $table = 'alumnos';

    public static function Alumbrado($id){
       return self::join('alumngrupe','alumngrupe.id_alumno','=','alumnos.id_alumno')
       				->select('alumnos.nombre_alumno')
       				->where('alumngrupe.id_grupos','=',$id)
       				->get();


    }   

}