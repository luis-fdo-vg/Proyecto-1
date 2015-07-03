<?php

namespace App;

use Illuminate\Auth\Authenticatable;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Auth\Passwords\CanResetPassword;
use Illuminate\Contracts\Auth\Authenticatable as AuthenticatableContract;
use Illuminate\Contracts\Auth\CanResetPassword as CanResetPasswordContract;

class Grupos extends Model
{
    protected $table = 'grupos';

    public static function Grupos($id){
       return self::join('materias','materias.id_materias','=','grupos.id_materias')
       				->join('maestros','maestros.id_maestros','=','grupos.id_maestros')
       				->select('maestros.nombre as maistro','grupos.nombre_aula','materias.nombre','grupos.id_grupos')
       				->where('materias.id_materias','=',$id)
       				->get();


    }   

}