<?php

namespace App\Models;
use App\Models\Produto;
use Illuminate\Database\Eloquent\Model;

Class Categoria extends Model{

    protected $table = 'tbl_categoria';
    protected $primaryKey = 'id_categoria';

    const CREATED_AT = 'data_criacao_cliente';
    const UPDATED_AT = 'data_atualizacao_cliente';

    protected $fillable = [
        'nome_categoria',
        'status_categoria',
    ];

    public function produtos(){
        return $this->hasMany(Produto::class, 'id_categoria', 'id_categoria' );
    }


}