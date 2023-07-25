@extends('layouts.base')
@section('content')

<h1> Produto: {{$produto-> nome}}</h1>
<h2>
    {{
        ($produtoTamanho)?
        'Editar Tamanho':
        'Cadastrar Tamanho'
    }}
</h2>
<form action="
{{
        ($produtoTamanho)?
        route('produto.updateTamanho'):
        route('produto.storeTamanho',['id_produto'=>$produto->id_produto])
}}"

    method="post"
    enctype="multipart/form-data" >
    @csrf

    <div class="row">
        <div class="col-md-3">
            <label class="form-label" for="id_tamanho">
                Tamanho*
            </label>

            <select
                class="form-select" name="id_tamanho" id="id_tamanho" required>
                <option value="">Selecione</option>
                @foreach ($tamanhos::orderBy('tamanho')->get() as $item)
                    <option value="{{$item->id_tamanho}}"
                        @selected(
                            ($produtoTamanho && $produtoTamanho->id_tamanho == $item->id_tamanho)?
                            true
                            :
                            false
                        )
                    >
                        {{$item->tamanho}}
                    </option>
                @endforeach

            </select>

        </div>


        <div class="col-md-3">
            <label class="form-label" for="preco">Preço</label>
            <input class="form-control" type="number" name="preco" id="preco" step="0.01" min="0" value="{{
                ($produtoTamanho)?
                $produtoTamanho->preco:
                old('preco')
            }}" required>
        </div>

        <div class="col-12">
            <label class="form-label" for="observacoes">
                Observações
            </label>
            <textarea class="form-control" name="observacoes" id="observacoes">
                {{($produtoTamanho)?$produtoTamanho->observacoes:old('observacoes')}}
            </textarea>
        </div>
    </div>

    @if ($produtoTamanho)
        <input class="btn btn-outline-primary" type="submit" value="Atulizar tamanho do produto">
    @else
        <input class="btn btn-outline-success" type="submit" value="Atulizar tamanho do produto">
    @endif

</form>

@endsection
@section('scripts')

@endsection
