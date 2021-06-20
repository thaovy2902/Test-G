<?php

namespace Database\Seeders;

use Faker\Factory;
use App\Models\Test;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;

class TestTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    { 
        Test::factory()->count(30)->create();
    }
}
