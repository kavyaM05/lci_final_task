<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\BookingLog;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;

class AnalyticsController extends Controller
{
    /**
     * @return JsonResponse
     */
    public function index()
    {
        $analytics = BookingLog::selectRaw('action, COUNT(*) as count')
            ->groupBy('action')
            ->get();

        return response()->json($analytics);
    }
}
