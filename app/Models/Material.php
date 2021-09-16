<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
class Material extends Model
{
    protected $fillable = [
        'name',
        'description',
        'status',
        'image',
        'serial_number',
    ];
}
