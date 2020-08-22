<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProductSellerTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('product_seller', function (Blueprint $table) {

            $table->integer('product_id')->unsigned()->index();
            $table->foreign('product_id')->references('id')->on('products')->onDelete('cascade');

            $table->integer('seller_id')->unsigned()->index();
            $table->foreign('seller_id')->references('id')->on('sellers')->onDelete('cascade');

            $table->unique(['seller_id','product_id']);

            $table->decimal('seller_price');
            $table->integer('seller_stock');
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
        Schema::dropIfExists('product_seller');
    }
}
