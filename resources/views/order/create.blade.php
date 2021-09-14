@extends('voyager::master')

@section('content')
<h1></h1>
<form action="{{route('order.store')}}" method="POST">
    @csrf
        <input type="hidden" name="material" value="{{$material->id}}">
        <h3>Justifique por que precisa do {{$material->name}}:</h3>
        <textarea name="justification" cols="30" rows="10"></textarea>
        <button class='btn btn-success' type="submit">Reservar</button>
    </form>
@endsection
