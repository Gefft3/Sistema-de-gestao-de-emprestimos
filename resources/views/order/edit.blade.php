@extends('voyager::master')

@section('content')

<h2>
     Avaliação da Solicitação
</h2>
<form action="{{route('order.update', $order->id)}}" method="POST">

    @csrf
    @method('put')
<div class="container-fluid">
    <div class="card">
        <div class="card-body">
            <div class="mb-3">
                <label for="justificativa" class="control-label">Justificativa</label>
                <textarea readonly class="form-control" rows="3" style="height: 200px; width: 500px">{{$order->justification}}</textarea>
            </div>
        </div>
    </div>
<hr>
    <div class="card">
        <div class="card-body">
            <div class="mb-3">
                <label for="resposta" class="control-label">Resposta</label>
                <textarea class="form-control" name="reply" rows="3" style="height: 200px; width: 500px"></textarea>
            </div>
        </div>
    </div>
    <div class="card">
        <div class="card-body">
            <select name="status" id="status" class="form-control">
                <option value="1" selected>Solicitado</option>
                <option value="2">Aprovado</option>
                <option value="3">Rejeitado</option>
              </select>
        </div>
      </div>

</div>
    <button type="submit" class="btn btn-primary">Finalizar</button>
</form>
@endsection




