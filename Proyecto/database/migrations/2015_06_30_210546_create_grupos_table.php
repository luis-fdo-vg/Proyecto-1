<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateGruposTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
                Schema::create('grupos', function (Blueprint $table) {
            $table->increments('id_grupos');

            $table->integer('id_materias')->unsigned();
            $table->foreign('id_materias')->references('id_materias')->on('materias');

            $table->integer('id_maestros')->unsigned();
            $table->foreign('id_maestros')->references('id_maestros')->on('maestros');

            $table->string('nombre_aula', 20);
            $table->timestamps();
      });

    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
                        Schema::drop('grupos');

    }
}
