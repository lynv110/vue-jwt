<?php

namespace App\Http\Controllers\Api\Staff;

use App\Facades\Export;
use App\Facades\Staff;
use App\Http\Controllers\Controller;
use App\Http\Requests\StaffRequest;
use App\Models\PartModel;
use App\Models\PositionModel;
use App\Models\StaffModel;
use Illuminate\Support\Facades\Request;

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

        $filter = [
            'sort' => 'name',
            'order' => 'asc',
        ];

        return response([
            'staffs' => $this->staffModel->getList($filter),
            'status' => 'success'
        ]);
    }
}
