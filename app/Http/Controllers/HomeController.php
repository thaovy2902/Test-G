<?php
namespace App\Http\Controllers;
use App\Models\Blog; // Same include
class HomeController extends Controller{
    public function index(){
        $data = Blog::getData();
        return view('home',compact('data'));
    }
    public function product(){
        return view('home');
    }
}
?>