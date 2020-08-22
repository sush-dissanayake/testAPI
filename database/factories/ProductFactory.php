<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Model;
use Faker\Generator as Faker;

$factory->define(App\Product::class, function (Faker $faker) {
    return [
        'name' => $faker->text(10),
        'description' => $faker->text(50),
        'price' => $faker->randomFloat(2, 100, 300),
        'image' => '',
        'stock' => $faker->numberBetween(50, 100),
    ];
});
