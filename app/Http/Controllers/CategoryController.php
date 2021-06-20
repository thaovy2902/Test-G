<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Category;
class CategoryController extends Controller
{
    public function index(){
        $data = Category::paginate(5);
        return view('category.index',compact('data'));
    }

    public function detail(){
        $data = Category::select('select * from category where id = :id', ['id' => 1]);
        return view('category.detail',compact('data'));
    }
}
