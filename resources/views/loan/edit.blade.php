@extends('voyager::master')

@section('content')

<h2>
     Confirme os dados para devolução do equipamento
</h2>
<form action="{{route('loan.update',$order->id)}}" method="POST">

@method('put')
@csrf
<input type="hidden" name="material" value="{{$material->name}}">
<input type="hidden" name="order" readonly value="{{$order->id}}">
<div class="container-fluid">
    <div class="card">
        <div class="card-body">
            <div class="mb-3">
                <label for="justificativa" class="control-label">Equipamento</label>
                <textarea readonly class="form-control" rows="3" style="height: 100px; width: 400px">{{$material->name}}</textarea>
            </div>
        </div>
    </div>
    <!--<div class="card">
        <div class="card-body">
            <div class="mb-3">
                <label for="docente" class="control-label">Docente que realizar o emprestimo</label>
                <textarea class="form-control" name="employee" rows="3" style="height: 100px; width: 400px"></textarea>
            </div>
        </div>
    </div>-->
    <div class="card">
        <div class="card-body">
            <div class="mb-3">
                <label for="resposta" class="control-label">Data de retirada</label>
                <input readonly id="date" name="date" type="date" value="">
            </div>
        </div>
    </div>
    <div class="card">
        <div class="card-body">
            <div class="mb-3">
                <label for="resposta" class="control-label">Data de devolução</label>
                <input id="date_return" name="date_return" type="date">
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




