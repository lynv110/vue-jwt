<?php

namespace App\Http\Controllers\Api\Layout;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Tymon\JWTAuth\Facades\JWTAuth;

class NavController extends Controller
{
    public function index(Request $request) {

        $token = $request->bearerToken();
        $staff = JWTAuth::parseToken($token)->authenticate();

        return response([
            'avatar' => image_fit($staff->avatar, 50,50),
            'staff_name' => $staff->name,
        ]);
    }
}
