<?php

namespace App\Http\Controllers;

use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\URL;
use Illuminate\Support\Facades\DB;

class userController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    public function index(Request $request){
        $query = $request->input('select');
        $limit = $request->input('limit');
        $conditions = $request->input('conditions');
        $current_page = $request->input('current_page');

        $data = User::select($query)
        ->whereColumn([
            [$conditions[0]['data'][1][0], $conditions[0]['data'][1][1], $conditions[0]['data'][1][2]],
            [$conditions[0]['data'][2][0], $conditions[0]['data'][2][1], $conditions[0]['data'][2][2]],
        ])
        ->whereNull($conditions[1]['data'][0])
        ->whereNotIn($conditions[2]['data'][0], $conditions[2]['data'][1])
        ->whereIn($conditions[3]['data'][0], $conditions[3]['data'][1])
        ->whereNotBetween($conditions[4]['data'][0], $conditions[4]['data'][1])
        ->whereBetween($conditions[5]['data'][0], $conditions[5]['data'][1])
        ->orWhere($conditions[6]['data'][0], $conditions[6]['data'][1], $conditions[6]['data'][2])
        ->whereNotIn($conditions[7]['function'][0]['data'][0], $conditions[7]['function'][0]['data'][1])
        ->whereIn($conditions[7]['function'][1]['data'][0], $conditions[7]['function'][1]['data'][1])
        ->take($limit)->get();

        $result = [
            "limit" => $limit,
            "total_row" => count($data),
            "total_data" => DB::table('User')->count(),
            "total_page" => $current_page,
            "current_page" => $current_page,
            "data" => response($data)
        ];
        return json_encode($result);
        // return response($data);
    } 
}