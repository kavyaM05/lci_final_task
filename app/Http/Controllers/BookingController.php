<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Booking;
use App\Models\BookingLog;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;

class BookingController extends Controller
{

    /**
     * @param Request $request
     * @return JsonResponse
     */
    public function index(Request $request)
    {
        $query = Booking::query();

        // Filtering
        if ($request->status) $query->where('status', $request->status);
        if ($request->from && $request->to) {
            $query->whereBetween('booking_date', [$request->from, $request->to]);
        }

        return response()->json($query->paginate(10));
    }

    /**
     * @param Request $request
     * @return JsonResponse
     */
    public function store(Request $request)
    {
        $data = $request->validate([
            'customer_name' => 'required|string',
            'customer_email' => 'required|email',
            'booking_date' => 'required|date',
            'status' => 'sometimes|in:pending,confirmed,cancelled',
        ]);

        $booking = Booking::create($data);

        BookingLog::create([
            'booking_id' => $booking->id,
            'action' => 'created',
            'details' => json_encode($booking->toArray()),
        ]);

        return response()->json($booking, 201);
    }

    /**
     * @param $id
     * @return JsonResponse
     */
    public function show($id)
    {
        $booking = Booking::findOrFail($id);
        return response()->json($booking);
    }

    /**
     * @param Request $request
     * @param $id
     * @return JsonResponse
     */
    public function update(Request $request, $id)
    {
        $booking = Booking::findOrFail($id);

        $data = $request->validate([
            'customer_name' => 'sometimes|string',
            'customer_email' => 'sometimes|email',
            'booking_date' => 'sometimes|date',
            'status' => 'sometimes|in:pending,confirmed,cancelled',
        ]);

        $booking->update($data);

        BookingLog::create([
            'booking_id' => $booking->id,
            'action' => 'updated',
            'details' => json_encode($booking->toArray()),
        ]);

        return response()->json($booking);
    }

    /**
     * @param $id
     * @return JsonResponse
     */
    public function destroy($id)
    {
        $booking = Booking::findOrFail($id);
        $booking->delete();

        BookingLog::create([
            'booking_id' => $id,
            'action' => 'deleted',
            'details' => null,
        ]);

        return response()->json(['message' => 'Booking cancelled successfully']);
    }

}
