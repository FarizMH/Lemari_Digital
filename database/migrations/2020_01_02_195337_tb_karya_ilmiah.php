<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class TbKaryaIlmiah extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tb_karya_ilmiah', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('dosen_id');
            $table->foreign('dosen_id')->references('id')->on('cms_users')->onDelete('cascade');
            $table->string('jenis')->nullable();
            $table->year('tahun')->nullable();
            $table->string('judul')->nullable();
            $table->string('penyelenggara')->nullable();
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
        Schema::dropIfExists('tb_karya_ilmiah');
    }
}
