<section class="galeria wow animate__animated animate__fadeInUp">
    <header class="parallax-padrao">
        <h2>Galeria</h2>
        <h3>Momentos que trazem felicidade</h3>
    </header>

    <div class="site slideGaleria wow animate__animated animate__fadeInUp">
        @foreach ($listagaleria as $linha)
            <img src="{{ asset("barista/img/$linha->imagem_galeria") }}" alt="{{ $linha->nome_galeria }}">         
        @endforeach
    </div>
</section>
