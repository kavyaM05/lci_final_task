<?php

use App\Http\Controllers\AnalyticsController;
use App\Http\Controllers\BookingController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

Route::get('/user', function (Request $request) {
    return $request->user();
})->middleware('auth:sanctum');

Route::prefix('v1')->middleware('auth:sanctum')->group(function() {
    Route::apiResource('bookings', BookingController::class);
    Route::get('analytics/bookings', [AnalyticsController::class, 'index']);
});
