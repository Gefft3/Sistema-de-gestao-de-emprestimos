<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
class Material extends Model
{
    protected $fillable = [
        'name',
        'description',
        'image',
        'serial_number',
    ];
}
