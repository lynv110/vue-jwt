<?php

namespace App\Http\Controllers\Api\Staff;

use App\Facades\Export;
use App\Facades\Staff;
use App\Http\Controllers\Controller;
use App\Http\Requests\StaffRequest;
use App\Models\PartModel;
use App\Models\PositionModel;
use App\Models\StaffModel;
use Illuminate\Http\Request;
use Tymon\JWTAuth\Facades\JWTAuth;

class StaffController extends Controller
{
    private $positionModel;
    private $partModel;
    private $staffModel;

    public function __construct(PositionModel $positionModel, PartModel $partModel, StaffModel $staffModel) {
        $this->positionModel = $positionModel;
        $this->partModel = $partModel;
        $this->staffModel = $staffModel;
    }

    public function index() {

        $filterName = \Request::get('filter_name') ? \Request::get('filter_name') : '';
        $filterTelephone = \Request::get('filter_telephone') ? \Request::get('filter_telephone') : '';
        $filterStatus = \Request::has('filter_status') ? \Request::get('filter_status') : '';

        $filter = [
            'filter_name' => $filterName,
            'filter_status' => $filterStatus,
            'filter_telephone' => $filterTelephone,
            'sort' => 'name',
            'order' => 'asc',
            'paginate' => false,
        ];

        return response([
            'staffs' => $this->staffModel->getList($filter),
            'status' => 'success',
            'heading_title' => trans('staff.heading_title')
        ]);
    }

    public function info($id) {

        $staff = $this->staffModel->getById((int)$id);

        $partsTmp = $this->staffModel->getPartByStaff($id);
        $parts = [];
        if ($partsTmp) {
            foreach ($partsTmp as $part) {
                $data['parts'][] = $part->name;
            }
        }

        $positionsTmp = $this->staffModel->getPositionByStaff($id);
        $positions = [];
        if ($positionsTmp) {
            foreach ($positionsTmp as $position) {
                $positions[] = $position->name;
            }
        }

        return response([
            'staff' => $staff,
            'parts' => $parts,
            'positions' => $positions,
            'status' => 'success'
        ]);
    }
}
