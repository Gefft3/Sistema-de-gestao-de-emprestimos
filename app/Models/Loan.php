<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
class Loan extends Model
{
    protected $fillable = [
        'equipment',
        'withdrawal_at',
        'returned_at',
        'employee_loan',
        'employee_returned',
        'obs',
        'order_id',
    ];

}
