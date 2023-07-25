@extends('layouts.base')
@section('content')
{{-- menu --}}
@include('produto.partials.menu')
{{-- /menu --}}

<h1> Produto:{{ $produto->nome }} </h1>
<h2> Tipo: {{ $produto->tipo->tipo }} </h2>
<p> Descrição: {!! nl2br($produto->descricao) !!}</p>
@if ($produto->observacoes)
    <p class="alert alert-info">
        {!! nl2br($produto->observacoes) !!}
    </p>
@endif
    <h6>
        <a class="btn btn-outline-success" href="{{ route('produto.createTamanho', ['id_produto'=>$produto->id_produto ]) }}">
            Adicionar novo tamanho
        </a>
    </h6>
<table class="table table-striped table-hover">

    <thead>
        <tr>
            <th class="col-2">Ações</th>
            <th>Tamanho</th>
            <th>Preço</th>
            <th>Obs.:</th>
        </tr>
    </thead>
    <tbody>
        @forelse ($produto->tamanhos()->get() as $item)
         <tr>
            <td>
                {{-- editar --}}
                <a class="btn btn-primary" href="#">
                    <i class="fa-solid fa-pen-to-square"></i>
                </a>
            </td>
            <td>
                {!! $item->tamanho->tamanho !!}
            </td>
            <td>
                {{ $item->preco }}
            </td>
            <td>
                {!! nl2br($item->observacoes) !!}
            </td>
        </tr>
        @empty
        <tr>
            <td colspan="4">
                Nenhum tamanho definido para esse produto
            </td>
        </tr>
        @endforelse
    </tbody>
</table>

@endsection
@section('scripts')

@endsection
