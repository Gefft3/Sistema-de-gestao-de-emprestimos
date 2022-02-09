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
                {!!$order->justification!!}
            </div>
        </div>
    </div>
<hr>
    <div class="card">
        <div class="card-body">
            <div class="mb-3">
                <label for="resposta" class="control-label">Resposta</label>
                <textarea class="form-control richTextBox" name="reply" rows="3" style="height: 100px;"></textarea>
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
      <button type="submit" class="btn btn-primary">Finalizar</button>
</div>
</form>
@endsection
@push('javascript')
    <script>
        $(document).ready(function() {
            var additionalConfig = {
                selector: 'textarea.richTextBox[name="reply"]',
            }

            $.extend(additionalConfig, {!! json_encode($options->tinymceOptions ?? '{}') !!})

            tinymce.init(window.voyagerTinyMCE.getConfig(additionalConfig));
        });
    </script>
@endpush

