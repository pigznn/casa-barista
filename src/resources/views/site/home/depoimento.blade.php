<section class="depoimentos wow animate__animated animate__fadeInUp">
    <header class="parallax-padrao">
        <h2>Depoimentos</h2>
        <h3>Mais que café: encontros que inspiram</h3>
    </header>

    <div class="site slideDepoimentos">
        
        @forelse ($listadepo as $linha)
        
        @php
         
            //Garantir que as estrelas fiquem entre 0 a 5
            $estrela = max(
                0,
                min(5, (int) $linha->nota_depoimento)
            );

            //Cliente relacionado com o Depoimento
            $cliente = $linha->DepoimentoCliente;

        @endphp

            <article class="dadosDepoimentos">
                @for ($i = 1; $i <= 5; $i++)
                <h4 class="{{ $i <= $estrela ? 'estrela-ativa' : 'estrela-inativa' }}">★</h4>
                @endfor
                <p>{{ $linha->descricao_depoimento }}</p>
                <img src="{{ asset('barista/img/'. $cliente->foto_cliente) }}" alt="{{ $cliente->nome_cliente }}">
                <h5>{{ $cliente->nome_cliente }}</h5>
                <h6>Data: {{ $linha->data_criacao_depoimento ? $linha->data_criacao_depoimento :'Data não Disponível' }} <span>{{ $linha->titulo_depoimento }}</span> </h6>
            </article>

        @empty
            
        @endforelse
    </div>
</section>
