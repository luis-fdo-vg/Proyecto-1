<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateAlumngrupeTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
             Schema::create('alumngrupe', function (Blueprint $table) {

            $table->integer('id_alumno')->unsigned();
            $table->foreign('id_alumno')->references('id_alumno')->on('alumnos');

            $table->integer('id_grupos')->unsigned();
            $table->foreign('id_grupos')->references('id_grupos')->on('grupos');
            
            $table->primary(['id_alumno','id_grupos']);

        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
                                Schema::drop('alumngrupe');

    }
}
