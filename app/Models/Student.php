<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;


class Student extends Model
{
    protected $fillable = [
        'name',
        'academic_record',
        'user_id',
        'cpf',
        'course_period',
        'cell_number',
        'name_responsible',
        'cpf_responsible',
        'cell_number_responsible',
        'address',
        'course'
    ];
}
