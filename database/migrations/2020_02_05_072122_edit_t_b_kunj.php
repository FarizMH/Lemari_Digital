<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class EditTBKunj extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('tb_kunjungan_luar_negeri', function (Blueprint $table) {
            //
            $table->string('tujuan_kunjungan')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('tb_kunjungan_luar_negeri', function (Blueprint $table) {
            //
            $table->dropColumn(["tujuan_kunjungan"]);
        });
    }
}
