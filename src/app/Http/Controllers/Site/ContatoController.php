<?php

namespace App\Http\Controllers\Site;

use App\Http\Controllers\Controller;

class ContatoController extends Controller
{
    public function sobre(){
        
        return view('site.contato.contato');
    }

}