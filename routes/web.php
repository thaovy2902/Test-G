<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});


Route::get('/mang', function () {
    $arr= ['Vy', 'Thao', 'Duong'];
    return view('about',compact('arr'));
});

Route::get('/HomeController','HomeController@product');

Route::middleware(['auth:sanctum', 'verified'])->get('/dashboard', function () {
    return view('dashboard');
})->name('dashboard');

Route::get('/category','CategoryController@index');
Route::get('/categorydetail','CategoryController@detail');

Route::get('/fakers', function(){
    $faker = Faker\Factory::create();
    $limit = 1000;
    $customers = [];
    for ($i = 0; $i < $limit; $i++) {
        $customers[$i] = [
            'Họ và tên'     => $faker->name,
            'Email'         => $faker->unique()->email,
            'Số điện thoại' => $faker->phoneNumber,
            'Website'       => $faker->domainName,
            'Tuổi'          => $faker->numberBetween(20,100),
            'Địa chỉ'       => $faker->address
        ];
    }
    return response()->json($customers);
});