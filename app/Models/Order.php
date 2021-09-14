<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;


class Order extends Model
{
    protected $fillable = [
        'justification',
        'status',
        'reply',
        'material_id',
        'user_id',
    ];
    /**
     * Get the user that owns the comment.
     */
    public function user()
    {
        return $this->belongsTo(User::class);
    }
    /**
     * Get the material that owns the comment.
     */
    public function material()
    {
        return $this->belongsTo(Material::class);
    }
}
