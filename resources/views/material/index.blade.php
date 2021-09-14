@extends('layouts.app')


@section('content')
<div>
    <h1>Lista de Materiais</h1>
</div>

<div class="container-fluid">
    <div class="row">
@foreach ($materials as $material)
<div class="card col-3 m-2" style="width: 20%; height: 50%;">
    <img src="{{Voyager::image($material->image)}}" class="card-img-top" alt="imagem do equipamento">
    <div class="card-body">
      <h5 class="card-title">{{$material->name}}</h5>
      <p class="card-text">{!!$material->description!!}</p>
      <a href="{{ route('material.show', $material->id) }}" class="btn btn-primary">Ver Material</a>
    </div>
  </div>
@endforeach
    </div>
</div>
@endsection
