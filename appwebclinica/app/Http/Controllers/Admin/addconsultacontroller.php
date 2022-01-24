<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;

class addconsultacontroller extends Controller
{
    public function adicionarconsulta(){
        $response = Http::get('http://localhost:4000/seleccionpaciente');
        $addconsulta = $response->json();
        $addconsultaArray = $addconsulta[0];
        return view('admin.addconsulta', compact('addconsultaArray'));
        
    }

}
