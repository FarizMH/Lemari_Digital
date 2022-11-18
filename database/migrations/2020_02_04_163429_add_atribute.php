<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddAtribute extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('tb_kursus_latihan', function (Blueprint $table) {
            //
             $table->string('tgl_kursus')->nullable();
              $table->string('ijazah_kursus')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('tb_kursus_latihan', function (Blueprint $table) {
            //
            $table->dropColumn(["kecamatan","ijazah_kursus"]);
        });
    }
}
