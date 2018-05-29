<?php

namespace App\Http\Controllers\Api\Auth;

use App\Models\Api\StaffModel;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Tymon\JWTAuth\Exceptions\JWTException;
use Tymon\JWTAuth\Facades\JWTAuth;

class AuthController extends Controller
{
    public function login(Request $request) {
        $credentials = $request->only('username', 'password');
        if (!$token = JWTAuth::attempt($credentials)) {
            return response([
                'status' => 'error',
                'msg' => 'Invalid Credentials.'
            ], 400);
        }

        $user = StaffModel::findOrFail(Auth::id());
        return response([
            'status' => 'success',
            'user' => $user
        ])->header('Authorization', $token);
    }

    public function logout(Request $request) {
        $this->validate($request, ['token' => 'required']);

        try {
            JWTAuth::invalidate($request->input('token'));
            return response([
                'status' => 'success',
                'msg' => 'You have successfully logged out.'
            ]);
        } catch (JWTException $e) {
            // something went wrong whilst attempting to encode the token
            return response([
                'status' => 'error',
                'msg' => 'Failed to logout, please try again.'
            ]);
        }
    }

    public function user(Request $request) {
        $user = StaffModel::findOrFail(Auth::id());
        return response([
            'status' => 'success',
            'data' => $user
        ]);
    }

    public function refresh() {
        return response([
            'status' => 'success'
        ]);
    }
}
