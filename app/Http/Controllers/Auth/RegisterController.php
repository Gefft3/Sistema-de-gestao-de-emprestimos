<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Models\Student;
use App\Providers\RouteServiceProvider;
use App\Models\User;
use Illuminate\Foundation\Auth\RegistersUsers;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;

class RegisterController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Register Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles the registration of new users as well as their
    | validation and creation. By default this controller uses a trait to
    | provide this functionality without requiring any additional code.
    |
    */

    use RegistersUsers;

    /**
     * Where to redirect users after registration.
     *
     * @var string
     */
    protected $redirectTo = RouteServiceProvider::HOME;

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest');
    }

    /**
     * Get a validator for an incoming registration request.
     *
     * @param  array  $data
     * @return \Illuminate\Contracts\Validation\Validator
     */
    protected function validator(array $data)
    {
        return Validator::make($data, [
            'name' => ['required', 'string', 'max:255'],
            'email' => ['required', 'string', 'email', 'max:255', 'unique:users', 'ends_with:ifms.edu.br'],
            'cpf' => ['required', 'string', 'cpf','max:11', 'unique:students'],
            'cpf_responsible' => ['required', 'string', 'cpf', 'max:11'],
            'password' => ['required', 'string', 'min:8', 'confirmed'],
            'course' => ['required'],
            'course_period' => ['required'],
            'cell_number' => ['required','celular_com_ddd'],
            'cell_number_responsible' => ['required','celular_com_ddd'],
        ]);
    }

    /**
     * Create a new user instance after a valid registration.
     *
     * @param  array  $data
     * @return \App\Models\User
     */
    protected function create(array $data)
    {
        $user = User::create([
            'name' => $data['name'],
            'email' => $data['email'],
            'password' => Hash::make($data['password']),
        ]);
         Student::create([
            'name' => $data['name'],
            'cpf' => $data['cpf'],
            'cell_number' => $data['cell_number'],
            'course_period' => $data['course_period'],
            'course' => $data['course'],
            'name_responsible' => $data['name_responsible'],
            'cpf_responsible' => $data['cpf_responsible'],
            'cell_number_responsible' => $data['cell_number_responsible'],
            'user_id' => $user->id
        ]);
        return $user;
    }
}
//cpf, cell_number, course_period, course, name_responsible, cpf_responsible, cell_number_responsible
