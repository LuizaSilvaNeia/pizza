@extends('layouts.base')
@section('content')

    <h1>Cargos</h1>
    <table class="table table-striped table-hover">
        <thead>
            <tr>
                <th class="col-2">Ações</th>
                <th class="col-1">ID</th>
                <th>Cargo</th>
            </tr>
        </thead>
        <tbody>
            @foreach($cargos as $cargo)
            <tr>
                <td>
                    <a class="btn btn-outline-primary" href="{{ route('cargo.edit', ['id'=>$cargo->id_cargo]) }}">
                        <i class="fa-solid fa-pen-to-square"></i>
                    </a>
                    <a class="btn btn-outline-success" href="{{ route('cargo.show', ['id'=>$cargo->id_cargo]) }}">
                        <i class="fa-solid fa-eye"></i>
                    </a>
                    <a class="btn btn-outline-danger" href="{{ route('cargo.destroy', ['id'=>$cargo->id_cargo]) }}">
                        <i class="fa-solid fa-trash-can"></i>
                    </a>
                </td>
                <td>
                    {{ $cargo->id_cargo}}
                </td>
                <td>
                    {{ $cargo->cargo }}
                </td>
            </tr>
            @endforeach
        </tbody>
    </table>

@endsection
@section('scripts')

@endsection
