<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class EditDBDosen extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('cms_users', function (Blueprint $table) {
        $table->string('jalan')->nullable();    
        $table->string('kelurahan')->nullable();
        $table->string('kabupaten')->nullable();
        $table->string('provinsi')->nullable();
        $table->string('tinggi_badan')->nullable();
        $table->string('berat_badan')->nullable();
        $table->string('warna_rambut')->nullable();
        $table->string('bentuk_wajah')->nullable();
        $table->string('warna_kulit')->nullable();
        $table->string('ciri')->nullable();
        $table->string('cacat_tubuh')->nullable();
        $table->string('kegemaran')->nullable();
        $table->dropColumn(['alamat_rumah']);

        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('cms_users', function (Blueprint $table) {
            $table->dropColumn(["jalan","kelurahan","kabupaten","provinsi", "tinggi_badamn", "berat_badan", "warna_rambut","bentuk_wajah","warna_kulit","ciri","cacat_tubuh","kegemaran"]);   //
        });
    }
}
