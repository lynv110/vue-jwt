<?php

namespace App\Http\Controllers\Api\Layout;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use Tymon\JWTAuth\Facades\JWTAuth;

class MenuController extends Controller
{
    public function index(Request $request) {

        $token = $request->bearerToken();
        $staff = JWTAuth::parseToken($token)->authenticate();

        return response([
            'menus' => $this->navMenu(),
            'avatar' => image_fit($staff->avatar, 70,70),
            'staff_name' => $staff->name,
        ]);
    }


    protected function navMenu() {
        $menus = [];

        $menus[] = [
            'name' => trans('menu.text_dashboard'),
            'icon' => 'fa fa-dot-circle-o',
            'href' => 'dashboard',
        ];

        // staff
        $menus[] = [
            'name' => trans('menu.text_staff'),
            'icon' => 'fa fa-dot-circle-o',
            'href' => 'staff-list',
            'total' => DB::table('staff')->count() - 1,
        ];

        // Position
        $menus[] = [
            'name' => trans('menu.text_position'),
            'icon' => 'fa fa-dot-circle-o',
            'href' => 'position',
            'total' => DB::table('position')->count(),
        ];

        // Part
        $menus[] = [
            'name' => trans('menu.text_part'),
            'icon' => 'fa fa-dot-circle-o',
            'href' => 'part',
            'total' => DB::table('part')->count(),
        ];

        // Profile
        $menus[] = [
            'name' => trans('menu.text_profile'),
            'icon' => 'fa fa-dot-circle-o',
            'href' => 'profile'
        ];

        return $menus;
    }
}
