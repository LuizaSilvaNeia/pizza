@extends('layouts.base')
@section('content')

<h1> Cargo:{{ $cargo->cargo }} </h1>
<h2> Relação de Usuários com esse cargo</h2>

<table class="table table-striped table-hover">
    <thead>
        <tr>
            <th class="col-2">Ações</th>
            <th>Nome</th>
        </tr>
    </thead>
    <tbody>
        @forelse ($cargo->usuarios()->get() as $usuario)
         <tr>
            <td>
                <a class="btn btn-outline-primary" href="#">
                    <i class="fa-solid fa-pen-to-square"></i>
                </a>
                <a class="btn btn-outline-success" href="#">
                    <i class="fa-solid fa-eye"></i>
                </a>
            </td>
            <td>
                {{ $usuario->nome}}
            </td>
        </tr>
        @empty
        <tr>
            <td colspan="2">
                Nenhum usuário com esse cargo
            </td>
        </tr>
        @endforelse
    </tbody>
</table>

@endsection
@section('scripts')

@endsection
