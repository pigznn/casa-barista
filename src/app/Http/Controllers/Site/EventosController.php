<?php

namespace App\Http\Controllers\Site;

use App\Http\Controllers\Controller;
use App\Models\Depoimento;

class EventosController extends Controller
{
    public function sobre(){

        $listadepo = Depoimento::with('DepoimentoCliente')->orderByDesc('id_depoimento')->get();
        
        return view('site.eventos.eventos', compact('listadepo'));
    }

}