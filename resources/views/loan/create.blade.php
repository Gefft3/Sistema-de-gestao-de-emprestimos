@extends('voyager::master')

@section('content')

<h2>
     Dados dos empréstimo
</h2>
<form action="{{route('loan.store')}}" method="POST">

@csrf
<input type="hidden" name="material" value="{{$material->id}}">
<input type="hidden" name="order" value="{{$order->id}}">
<div class="container-fluid">
    <div class="card">
        <div class="card-body">
            <div class="mb-3">
                <label for="justificativa" class="control-label">Equipamento</label>
                <textarea readonly class="form-control" rows="3" style="height: 100px; width: 400px">{{$material->name}}</textarea>
            </div>
        </div>
    </div>
    <!--
    <div class="card">
        <div class="card-body">
            <div class="mb-3">
                <label for="docente" class="control-label">Docente a realizar o emprestimo</label>
                <textarea class="form-control" name="employee" rows="3" style="height: 100px; width: 400px"></textarea>
            </div>
        </div>
    </div>
    -->
    <div class="card">
        <div class="card-body">
            <div class="mb-3">
                <label for="resposta" class="control-label">Data de retirada</label>
                <input id="date" name="date" type="date">
            </div>
        </div>
    </div>

<div class="card">
    <div class="card-body">
        <div class="mb-3">
            <label for="docente" class="control-label">Observações</label>
             <textarea class="form-control" name="obs" rows="3" style="height: 100px; width: 400px"></textarea>
         </div>
    </div>

</div>

<button type="submit" class="btn btn-primary">Finalizar</button>
</div>

</form>
@endsection




