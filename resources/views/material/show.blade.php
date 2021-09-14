@extends('layouts.app')

@section('content')
<h1>Detalhes do {{$material->name}}</h1>
    <form action="" method="post">
        <div class="container-fluid">
            <div class="row">
                <ul style='list-style-type: none;'>
                    <li><img src="{{Voyager::image($material->image)}}" class="card-img-top" style='height:250px; width:250px;' alt="imagem do equipamento"></li>
                    <li>{!!$material->description!!}</li>
                </ul>
            </div>
        </div>
        <button type="submit" class="btn btn-primary">Solicitar Material</button>
    </form>
@endsection
