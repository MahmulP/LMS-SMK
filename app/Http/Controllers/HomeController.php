<?php

namespace App\Http\Controllers;

use App\Models\Settings;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index(){
        $setting = Settings::firstOrFail();
        return view('home.home', compact('setting'));
    }
}
