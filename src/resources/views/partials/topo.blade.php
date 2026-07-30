<header class="topo" id="topoFixo">
        <div class="site">

        <!-- LOGO -->
        <h1>Casa do Barista</h1>

        <!-- MENU -->
        <button class="abrir-menu"></button>
            <nav class="menu">
                <button class="fechar-menu"></button>
                <ul>
                    <li><a class="menu-ativo" href="{{ route('home') }}">Home</a></li>
                    <li><a class="" href="{{ route('sobre') }}">Sobre</a></li>
                    <li class="item-submenu">
                        <a class="" href="{{ route('cardapio') }}">Cardápio</a>
                        <!-- SUB MENU -->
                        <ul class="submenu">
                            @foreach ($categoriaMenu as $linha)

                            <li>
                                <a href="{{ route('cardapio.categoria',$linha->id_categoria) }}">{{ $linha->nome_categoria }}</a>
                            </li>

                            @endforeach
                        </ul>
                         <!-- FIM SUB MENU -->
                    </li>
                    <li><a class="" href="{{ route('eventos') }}">Eventos</a></li>
                    <li><a class="" href="{{ route('contato') }}">Contato</a></li>
                </ul>

                <!-- REDES SOCIAS | ul>li*3>a>img (codificação) --> 
                <ul class="redeSocial">
                    <li><a href="#" target="_blank"><img src="{{ asset('barista/img/facebook-24.png') }}" alt="Logo Facebook - Casa do Barista"></a></li>
                    <li><a href="#" target="_blank"><img src="{{ asset('barista/img/instagram-24.png') }}" alt="Logo Instagram - Casa do Barista"></a></li>
                    <li><a href="https://wa.me/551199999999" target="_blank"><img src="{{ asset('barista/img/whatsapp-24.png') }}" alt="Logo Whastapp - Casa do Barista"></a></li>
                </ul>
                <!-- LOGIN -->
                <a href="#" class="login"><img src="{{ asset('barista/img/login1.png') }}" alt="Login - Casa do Barista"></a>

            </nav>
        
    </div>

</header>
