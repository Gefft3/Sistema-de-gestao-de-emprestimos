<?php

namespace App\Http\Controllers;

use App\Models\Material;
use Illuminate\Http\Request;

class MaterialsController extends Controller
{
    public function index()
    {
        $materials = Material::where('status', 0)
                            ->orderBy('name')
                            ->get();

        return view('material.index', compact('materials'));
    }
    public function show($id)
    {
        if(!$material = Material::find($id)){
            return redirect()->route('material.index');
        }
        return view('material.show', compact('material'));
    }

}
