<?php

namespace App\Http\Controllers;

use App\User;
use Illuminate\Http\Request;

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

        // die(var_dump($conditions[2]['data'][1]));

        $data = User::select($query)
        ->whereColumn([
            ['firstname', '=', $conditions[0]['data'][0]['firstname']],
            ['lastname', '=', $conditions[0]['data'][0]['lastname']]
        ])
        ->whereNull($conditions[1]['data'][0])
        ->whereNotIn($conditions[2]['data'][0], $conditions[2]['data'][1])
        ->take($limit)->get();

        return response($data);
    } 
}