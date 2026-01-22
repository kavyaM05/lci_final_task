<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class BookingLog extends Model
{
   use SoftDeletes;

    protected $connection = 'analytics';

    protected $table = 'booking_logs';

    protected $guarded = [];
}
