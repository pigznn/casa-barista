<?php

namespace App\Http\Controllers\Site;

use App\Http\Controllers\Controller;
use App\Models\Banner;
use App\Models\Depoimento;

class HomeController extends Controller{

    // Metodo HOME - Carregar a INDEX (HOME)
    public function home(){

        $listabanner = Banner::where('status_banner', 'ATIVO')->inRandomOrder()->get();

        //dd($listabanner);
        //var_dump($listabanner);
        
        //Buscar os depoimentos APROVADO junto com os dados dos clientes
        $listadepo = Depoimento::with('DepoimentoCliente')->orderByDesc('id_depoimento')->get();
        //dd($listadepo->toArray());

        return view('site.home.home', compact('listabanner', 'listadepo'));
    
    }


} // FIM DA CLASS