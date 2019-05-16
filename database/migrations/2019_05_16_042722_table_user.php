<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class TableUser extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('user', function (Blueprint $table) {
            $table->increments('id');
            $table->string('firstname',200);
            $table->string('lastname',200);
            $table->enum('gender', ['male', 'female']);
            $table->enum('status', ['Active', 'Pending', 'Banned', 'Loss']);
            $table->string('email',200);
            $table->string('city',200);
            $table->text('address');
            $table->string('phone',200);
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
        Schema::dropIfExists('user');
    }
}
