<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class EditTbJab extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('tb_riwayat_jabatan', function (Blueprint $table) {
            //
            $table->string('tgl_mulai')->nullable();
            $table->string('pejabat')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('tb_riwayat_jabatan', function (Blueprint $table) {
            //
            $table->dropColumn(["tgl_mulai","pejabat"]);
        });
    }
}
