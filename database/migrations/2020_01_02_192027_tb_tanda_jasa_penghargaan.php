<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class TbTandaJasaPenghargaan extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tb_tanda_jasa_penghargaan', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('dosen_id');
            $table->foreign('dosen_id')->references('id')->on('cms_users')->onDelete('cascade');
            $table->string('jenis')->nullable();
            $table->string('nama_tanda_jasa_penghargaan')->nullable();
            $table->year('tahun')->nullable();
            $table->string('pemberi')->nullable();
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
        Schema::dropIfExists('tb_tanda_jasa_penghargaan');
    }
}
