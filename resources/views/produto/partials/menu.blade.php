<ul>
    <li>
        <i class="bi bi-list-task"></i><a href="{{ route('produto.index') }}">
            Todos os produtos
        </a>
    </li>
    <li>
        <i class="fa-solid fa-pen-to-square"></i><a  href="{{ route('produto.edit', ['id'=>$produto->id_produto]) }}">
            Editar
        </a>
    </li>

</ul>
