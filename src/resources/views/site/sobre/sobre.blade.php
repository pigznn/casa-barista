@extends('layout.site')

@section('content')
        <!-- BEM-VINDO -->
        @include('site.home.bemvindo')
        
        <!-- EQUIPE -->
        @include('site.home.equipe')

        <!-- DEPOIMENTOS -->
        @include('site.home.depoimento')
@endsection
