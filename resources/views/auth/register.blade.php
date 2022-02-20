@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ __('Register') }}</div>

                <div class="card-body">
                    <form method="POST" action="{{ route('register') }}">
                        @csrf

                        <div class="form-group row">
                            <label for="name" class="col-md-4 col-form-label text-md-right">{{ __('Name') }}</label>

                            <div class="col-md-6">
                                <input id="name" type="text" class="form-control @error('name') is-invalid @enderror" name="name" value="{{ old('name') }}" required autocomplete="name" autofocus>

                                @error('name')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="email" class="col-md-4 col-form-label text-md-right">{{ __('E-Mail') }}</label>

                            <div class="col-md-6">
                                <input id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email" placeholder="Email acadêmico">

                                @error('email')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="cpf" class="col-md-4 col-form-label text-md-right" >CPF</label>

                            <div class="col-md-6">
                                <input id="cpf" type="number" class="form-control @error('cpf') is-invalid @enderror" name="cpf" value="{{ old('cpf') }}" required autocomplete="cpf" autofocus placeholder="Somente números">

                                @error('cpf')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="cell_number" class="col-md-4 col-form-label text-md-right">Celular</label>

                            <div class="col-md-6">
                                <input id="cell_number" type="number" class="form-control @error('cell_number') is-invalid @enderror" name="cell_number" value="{{ old('cell_number') }}" required autocomplete="cell_number" autofocus placeholder="(99) 99999-9999">

                                @error('cell_number')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="course" class="col-md-4 col-form-label text-md-right">Curso</label>

                            <div class="col-md-6">
                                <select class="form-control" name="course" id="course" @error('course') is-invalid @enderror" aria-label="Default select example" value="{{ old('course') }}" required autocomplete="course" autofocus>
                                    <option selected value="0">Selecione um curso</option>
                                    <option value="1">Técnico em Edificações</option>
                                    <option value="2">Técnico em Informática</option>
                                    <option value="3">Arquitetura e Urbanismo</option>
                                    <option value="4">Licenciatura em Computação</option>
                                    <option value="5">Especialização em Docência</option>
                                    <option value="6">Edificações PROEJA</option>
                                    <option value="7">Informática para Internet</option>
                                    <option value="8">Manutenção e Suporte em Informática</option>
                                    <option value="9">Desenhista da Construção Civil</option>
                                    <option value="10">Operador de computador</option>
                                    <option value="11">Administração</option>
                                  </select>


                                @error('course')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="course_period" class="col-md-4 col-form-label text-md-right">Período</label>

                            <div class="col-md-6">
                                <select class="form-control" name="course_period" id="course_period" @error('course_period') is-invalid @enderror" aria-label="Default select example" value="{{ old('course_period') }}" required autocomplete="course_period" autofocus>
                                    <option selected value="0">Selecione um semestre</option>
                                    <option value="1">Primeiro semestre</option>
                                    <option value="2">Segundo semestre</option>
                                    <option value="3">Terceiro semestre</option>
                                    <option value="4">Quarto semestre</option>
                                    <option value="5">Quinto semestre</option>
                                    <option value="6">Sexto semestre</option>
                                    <option value="7">Sétimo semestre</option>
                                    <option value="8">Oitavo semestre</option>
                                    <option value="9">Nono semestre</option>
                                    <option value="10">Décimo semestre</option>
                                  </select>

                                @error('course_period')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="name_responsible" class="col-md-4 col-form-label text-md-right">Nome do responsável</label>

                            <div class="col-md-6">
                                <input id="name_responsible" type="text" class="form-control @error('name_responsible') is-invalid @enderror" name="name_responsible" value="{{ old('name_responsible') }}" required autocomplete="name_responsible" autofocus>

                                @error('name_responsible')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="cell_number_responsible" class="col-md-4 col-form-label text-md-right">Celular do responsável</label>

                            <div class="col-md-6">
                                <input id="cell_number_responsible" type="number" class="form-control @error('cell_number_responsible') is-invalid @enderror" name="cell_number_responsible" value="{{ old('cell_number_responsible') }}" required autocomplete="cell_number_responsible" autofocus placeholder="(99) 99999-9999">

                                @error('cell_number_responsible')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="cpf_responsible" class="col-md-4 col-form-label text-md-right">CPF do responsável</label>

                            <div class="col-md-6">
                                <input id="cpf_responsible" type="text" class="form-control @error('cpf_responsible') is-invalid @enderror" name="cpf_responsible" value="{{ old('cpf_responsible') }}" required autocomplete="cpf_responsible" autofocus placeholder="Somente números">

                                @error('cpf_responsible')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>



                        <div class="form-group row">
                            <label for="password" class="col-md-4 col-form-label text-md-right">{{ __('Password') }}</label>

                            <div class="col-md-6">
                                <input id="password" type="password" class="form-control @error('password') is-invalid @enderror" name="password" required autocomplete="new-password">

                                @error('password')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="password-confirm" class="col-md-4 col-form-label text-md-right">{{ __('Confirm Password') }}</label>

                            <div class="col-md-6">
                                <input id="password-confirm" type="password" class="form-control" name="password_confirmation" required autocomplete="new-password">
                            </div>
                        </div>

                        <div class="form-group row mb-0">
                            <div class="col-md-6 offset-md-4">
                                <button type="submit" class="btn btn-primary">
                                    {{ __('Register') }}
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
