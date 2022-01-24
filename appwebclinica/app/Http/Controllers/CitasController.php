<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;

class CitasController extends Controller
{

  public function __construct()
    {
        $this->middleware('auth');
    }

   // mostar todas las citas
    public function citasmostar (){
        $reponse =http::get('http://localhost:4000/GETCITAS');
        $mostrarcitas = $reponse->json();
        $mostrarcitasArray = $mostrarcitas[0];
        return view('admin.cita', compact('mostrarcitasArray'));
      } 
 
      // registar una cita
      public function citasregistar (Request $request){
        $reponse =http::post('http://localhost:4000/POSTCITA',[
          'NUMERO_ID'=> $request->get('dni_paciente'),
          'ASUNTO_NOMBRE'=> $request->get('asunto_cita'),
          'LUGAR_CLINICA'=> $request->get('lugar_cita'),
          'FECHA_INICIO'=> $request->get('fecha_hora_inicio'),
          'FECHA_FIN'=> $request->get('fecha_hora_fin'),
          'ESTADO_CITA'=> $request->get('estado_cita')
        ]);

        return redirect('/cita')->with('agregado', 'ok');
      } 
    
      //aCtualizar una cita

      public function edit(Request $request, $id)
      {
        $COD_CITA = $request->id;
        $response = Http::get('http://localhost:4000/GETCITA/' . $COD_CITA);
        $cita = $response->json();
        $citaArray = $cita[0][0];

         //dd($citaArray);
          return view('admin.editarcita', compact('citaArray'));
      }

   

      // actualizar cita
      public function update(Request $request,$id){
        $COD_CITA = $request->id;
        $reponse =http::put('http://localhost:4000/PUTCITA',[
          'COD_CITA ' => $COD_CITA ,
          'NUMERO_ID'=> $request->get('dni_paciente'),
          'ASUNTO_NOMBRE'=> $request->get('asunto_cita'),
          'LUGAR_CLINICA'=> $request->get('lugar_clinica'),
          'FECHA_INICIO'=> $request->get('fecha_hora_inicio'),
          'FECHA_FIN'=> $request->get('fecha_hora_fin'),
          'ESTADO_CITA'=> $request->get('estado_cita')
         
        ]);
        //dd($request);
        return redirect('/cita')->with('actualizado', 'ok');
      } 



      /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    ///Eliminar la cita
    public function destroy(Request $request, $id)
    {
       $COD_CITA = $request->id;
        $response = Http::delete('http://localhost:4000/DELETECITA/' . $COD_CITA);
          return redirect('/cita')->with('eliminar', 'ok');

    }



  }


      
    
     


