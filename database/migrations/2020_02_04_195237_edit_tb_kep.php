<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class EditTbKep extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('tb_riwayat_kepangkatan', function (Blueprint $table) {
            //
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
        Schema::table('tb_riwayat_kepangkatan', function (Blueprint $table) {
            //
            $table->dropColumn(["pejabat"]);
        });
    }
}
