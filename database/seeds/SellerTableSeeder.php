<?php

use Illuminate\Database\Seeder;

class SellerTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        

        /*factory(App\Seller::class, 5)->create()->each(function($a){
            $faker = \Faker\Factory::create();
            $a->products()->attach(
                App\Product::all()->random()->id,
                [
                    'seller_price' => $faker->randomFloat(2, 350, 700),
                    'seller_stock' => $faker->numberBetween(1, 10),  
                ],
                
            ); 
        });*/

        /*factory(App\Seller::class, 5)->create();

        $faker = \Faker\Factory::create();

        // give each seller some products
        foreach(App\Seller::all() as $seller) {

            foreach(App\Product::all() as $product) {

                if (rand(1, 100) > 20) {
                        $seller->products()->attach(
                            App\Product::all()->random()->id,
                            [
                                'seller_price' => $faker->randomFloat(2, 350, 700),
                                'seller_stock' => $faker->numberBetween(1, 10),  
                            ]
                    );
                }
            }
            $seller->save();
            
        }*/

        // Populate sellers
        factory(App\Seller::class, 5)->create();

        // Get all the products attaching up to 3 random roles to each user
        $products = App\Product::all();

        // Populate the pivot table
        App\Seller::all()->each(function ($seller) use ($products) { 

            $faker = \Faker\Factory::create();
            $seller->products()->attach(
                $products->random(rand(1, 10))->pluck('id')->toArray(),
                //App\Product::all()->random()->id,
                [
                    'seller_price' => $faker->randomFloat(2, 350, 700),
                    'seller_stock' => $faker->numberBetween(1, 10),  
                ]
            ); 
        });

        

    }
}
