<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class TbRiwayatKepangkatan extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tb_riwayat_kepangkatan', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('dosen_id');
            $table->foreign('dosen_id')->references('id')->on('cms_users')->onDelete('cascade');
            $table->string('jenis_sk')->nullable();
            $table->string('pangkat')->nullable();
            $table->string('gol_ruang')->nullable();
            $table->bigInteger('no_sk')->nullable();
            $table->date('tgl_sk')->nullable();
            $table->date('tmt_sk')->nullable();
            $table->double('gaji')->nullable();
            $table->string('pak')->nullable();
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
        Schema::dropIfExists('tb_riwayat_kepangkatan');
    }
}
