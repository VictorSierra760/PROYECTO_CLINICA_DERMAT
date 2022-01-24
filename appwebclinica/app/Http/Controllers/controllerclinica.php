<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;
class controllerclinica extends Controller
{

  public function __construct()
    {
        $this->middleware('auth');
    }
    
    // registar una cita

    public function clinicaregistrar (Request $request){
        $reponse =http::post('localhost:4000/POSTCLINICA',[
          'NOM_CLINICA'=> $request->get('nom_clinica'),
          'HORARIO_CLINICA'=> $request->get('horario_clinica'),
          'TELEFONO_CLINICA'=> $request->get('telefono_clinica'),
          'UBICACION_CLI'=> $request->get('ubicacion_cli'),
          'RTN_CLINICA'=> $request->get('rtn_clinica'),
          'RED_SOCIAL'=> $request->get('red_social'),
          'LOGO_CLINICA'=> $request->get('logo_clinica'),
          'FECHA_REGISTRO'=> $request->get('fecha_registro'),
          'COD_CAI'=> $request->get('cod_cai')
        ]);

        return redirect('/clinicabuscar')->with('agregado', 'ok');
      } 

       // mostar todas las citas
    public function clinicamostrar (){
        $reponse =http::get('localhost:4000/GETCLINICA');
        $mostrarclinica = $reponse -> json();
        $mostrarclinicaArray = $mostrarclinica [0];
        return view('dash.clinicabuscar', compact('mostrarclinicaArray'));
      } 
}
