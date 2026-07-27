<?php

namespace App\Http\Controllers\Site;

use App\Http\Controllers\Controller;
use App\Models\Banner;

class HomeController extends Controller{

    // Metodo HOME - Carregar a INDEX (HOME)
    public function home(){

        $listabanner = Banner::where('status_banner', 'ATIVO')->inRandomOrder()->get();

        //dd($listabanner);
        
        return view('site.home.home', compact('listabanner'));
    
    }


} // FIM DA CLASS