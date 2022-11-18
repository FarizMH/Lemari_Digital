<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class EditNoPeg extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('cms_users', function (Blueprint $table) {
            //
        $table->string('kapreg')->nullable();    //
        $table->string('karis_su')->nullable();
        $table->string('kpe')->nullable();
        $table->string('taspem')->nullable();
        $table->string('npwp')->nullable();
        $table->string('nuptk')->nullable();
        $table->string('nidn')->nullable();
        $table->dropColumn(['nomor_kepegawaian']);
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
            //
            $table->dropColumn(["kpreg","karis_su","kpe","taspem", "npwp", "nuptk", "nidn"]);
        });
    }
}
