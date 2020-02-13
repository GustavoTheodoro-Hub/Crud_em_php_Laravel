<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateClientesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('clientes', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('nome', 50);
            $table->string('email',100)->unique();
            $table->string('telefone', 16);
            $table->string('estado', 50);
            $table->string('cidade', 50);
            $table->string('data_nasc', 10);
            $table->string('plano1', 16);
            $table->string('plano2', 16);
            $table->string('plano3', 16);
            
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('clientes');
    }
}
