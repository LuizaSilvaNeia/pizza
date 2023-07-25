@extends('layouts.base')
@section('content')

    <h1>Produtos</h1>
    <table class="table table-striped table-hover">
        <thead>
            <tr>
                <th class="col-2">Ações</th>
                <th class="col-1">ID</th>
                <th>Produto</th>
                <th>Observações</th>
                <th>Qtd Tamanhos</th>

            </tr>
        </thead>
        <tbody>
            @foreach($produtos->get() as $produto)
            <tr>
                <td>
                    <a class="btn btn-outline-primary" href="{{ route('produto.edit', ['id'=>$produto->id_produto]) }}">
                        <i class="fa-solid fa-pen-to-square"></i>
                    </a>
                    <a class="btn btn-outline-success" href="{{ route('produto.show', ['id'=>$produto->id_produto]) }}">
                        <i class="fa-solid fa-eye"></i>
                    </a>
                    <a class="btn btn-outline-danger" href="{{ route('produto.destroy', ['id'=>$produto->id_produto]) }}">
                        <i class="fa-solid fa-trash-can"></i>
                    </a>
                </td>
                <td>
                    {{ $produto->id_produto}}
                </td>
                <td>
                    {{ $produto->nome }}
                </td>
                <td>{{ nl2br($produto->observacoes) }}</td>
                <td>
                    {!!
                        $produto->tamanhos()->count()
                    !!}
                </td>
            </tr>
            @endforeach
        </tbody>
    </table>

@endsection
@section('scripts')

@endsection
