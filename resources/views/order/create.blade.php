@extends('voyager::master')

@section('content')
<h1></h1>
<form action="{{route('order.store')}}" method="POST">
    @csrf
        <input type="hidden" name="material" value="{{$material->id}}">
        <h3>Justifique por que precisa da(o) {{$material->name}}:</h3>
        <textarea class="form-control richTextBox" name="justification"></textarea>
        <button class='btn btn-success' type="submit">Reservar</button>
</form>
@endsection
@push('javascript')
    <script>
        $(document).ready(function() {
            var additionalConfig = {
                selector: 'textarea.richTextBox[name="justification"]',
            }

            $.extend(additionalConfig, {!! json_encode($options->tinymceOptions ?? '{}') !!})

            tinymce.init(window.voyagerTinyMCE.getConfig(additionalConfig));
        });
    </script>
@endpush
