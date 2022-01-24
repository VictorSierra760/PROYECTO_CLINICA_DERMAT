<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Http;
use App\Models\consulta;
use App\Models\destroy;
use App\Models\update;
use App\Models\edit;
use App\Models\store;
use Illuminate\pagination\paginator;


class consultacontroller extends Controller
{
    
    public function consulta(){
        $response = Http::get('http://localhost:4000/GET_EXPEDIENTES');
        $consulta = $response->json();
        $consultaArray = $consulta[0];
       
        return view('admin.consulta', compact('consultaArray'));
        
    }



    public function store(Request $request)
    {
        $response = Http::post('http://localhost:4000/INSERT_CONSULTA',[
            'COD_PACIENTE' => $request->get('cod_paciente'),
            'TIPO_CONSULTA' => $request->get('tipo_consulta'),
            'LUGAR' => $request->get('lugar_consulta'),
            'SEGURO_MEDICO' => $request->get('seguro_medico'),
            'ASEGURADORA' => $request->get('aseguradora'),
            'RELACION_POLIZA' => $request->get('relacion_poliza'),
            'ESTATURA' => $request->get('estatura'),
            'SATO2' => $request->get('sato2'),
            'PESO' => $request->get('peso'),
            'TEMPERATURA' => $request->get('temperatura'),
            'PRESIÓN_ALTERIAL' => $request->get('presion_arterial'),
            'FRECUENCIA_CARDIACA' => $request->get('frecuencia_cardiaca'),
            'FRECUENCIA_RESPIRATORIA' => $request->get('frecuencia_respiratoria'),
            'NOTAS' => $request->get('notas'),
            'DESCRIPCION_SIGNOS' => $request->get('descripcion_signos'),
            'FECHA_REGISTRO_SIGNOS' => $request->get('fecha_registro_signos'),
            'CIE' => $request->get('cie'),
            'NOMBRE_DIAGNOSTICO' => $request->get('nombre_diagnostico'),
            'EQUIVALENCIAS' => $request->get('equivalencias'),
            'DESCRIPCION_DIAGNOSTICO' => $request->get('descripcion_diagnostico'),
            'NOMBRE_EXAMEN' => $request->get('nombre_examen'),
            'ETIQUETAS_EXAMEN' => $request->get('etiqueta_examen'),
            'CODIGO_EXAMEN' => $request->get('codigo_examen'),
            'MEDICAMENTO' => $request->get('medicamento'),
            'MARCA_MEDICAMENTO' => $request->get('marca_medicamento'),
            'CANTIDAD_MEDICAMENTO' => $request->get('cantidad_medicamento'),
            'DOSIS_INDICACIONES' => $request->get('dosis_medicamento'),
            'DESCRIPCION_MEDICAMENTO' => $request->get('descripcion_medicamento'),
            'MENARQUIA' => $request->get('menarquia'),
            'EMBARAZOS' => $request->get('embarazos'),
            'PLANIFICACION' => $request->get('planificacion'),
            'PERIODO_MESTRUAL' => $request->get('periodo_mestruacion'),
            'FECHA_ULTIMA_MESTRU' => $request->get('fecha_ultima_mestruacion'),
            'ANTECEDENTE_PATOLOGICO' => $request->get('antecedente_patologico'),
            'ALERGIAS' => $request->get('alergia'),
            'HABITOS' => $request->get('habitos'),
            'CONSUMO_MEDICAMENTO' => $request->get('consumo_medicamento'),
            'TIPO_ANTECEDENTE' => $request->get('tipo_antecedente'),
            'ENFERMEDAD_PATOLOGICA' => $request->get('enfermedad_patologica'),
            'IMAGEN'=> $request->get('imagen'),
            'OBSERVACIONES_IMAGEN' => $request->get('observaciones'),
            'SUB_TOTAL_FACTURA' => $request->get('sub_total'),
            'IMPUESTO' => $request->get('impuesto'),
            'TOTAL_FACTURA' => $request->get('total'),
            'DESCRIPCION_FACTURA' => $request->get('descripcion_factura')
        ]);
       
       return redirect('admin/consulta');
    }
   public function delete($id){
       $response = Http::delete('http://localhost:4000/DELETE_CONSULTA/'.$id);
       return redirect('admin/consulta');
   }

   
    public function edit($id)
    { 
        $response = Http::get('http://localhost:4000/GET_EXPEDIENTE_PACIENTE/'.$id);
        $consulta = $response->json();
        $consultaArray = $consulta[0];
      return view('admin.editar', compact('consultaArray'));
    }

    
   public function update(Request $request){
   
       $response = Http::put('http://localhost:4000/UPDATE_CONSULTA_PACIENTE/',[
        'COD_CONSULTA' => $request->input('cod_consulta'),
        'TIPO_CONSULTA' => $request->input('tipo_consulta'),
        'LUGAR' => $request->input('lugar_consulta'),
        'SEGURO_MEDICO' => $request->input('seguro_medico'),
        'ASEGURADORA' => $request->input('aseguradora'),
        'RELACION_POLIZA' => $request->input('relacion_poliza'),
        'ESTATURA' => $request->input('estatura'),
        'SATO2' => $request->input('sato2'),
        'PESO' => $request->input('peso'),
        'TEMPERATURA' => $request->input('temperatura'),
        'PRESIÓN_ALTERIAL' => $request->input('presion_arterial'),
        'FRECUENCIA_CARDIACA' => $request->input('frecuencia_cardiaca'),
        'FRECUENCIA_RESPIRATORIA' => $request->input('frecuencia_respiratoria'),
        'NOTAS' => $request->input('notas'),
        'DESCRIPCION_SIGNOS' => $request->input('descripcion_signos'),
        'FECHA_REGISTRO_SIGNOS' => $request->input('fecha_registro_signos'),
        'CIE' => $request->input('cie'),
        'NOMBRE_DIAGNOSTICO' => $request->input('nombre_diagnostico'),
        'EQUIVALENCIAS' => $request->input('equivalencias'),
        'DESCRIPCION_CIE' => $request->input('descripcion_diagnostico'),
        'MEDICAMENTO' => $request->input('medicamento'),
        'MARCA' => $request->input('marca_medicamento'),
        'CANTIDAD' => $request->input('cantidad_medicamento'),
        'DOSIS_MEDICAMENTO' => $request->input('dosis_medicamento'),
        'DESCRIPCION_TRATAMIENTO' => $request->input('descripcion_medicamento'),
        'NOMBRE_EXAMEN' => $request->input('nombre_examen'),
        'ETIQUETAS' => $request->input('etiqueta_examen'),
        'CODIGO' => $request->input('codigo_examen'),
        'MENARQUIA' => $request->input('menarquia'),
        'EMBARAZOS' => $request->input('embarazos'),
        'PLANIFICACION' => $request->input('planificacion'),
        'PERIODO_MESTRUAL' => $request->input('periodo_mestruacion'),
        'FECHA_ULTIMA_MESTRU' => $request->input('fecha_ultima_mestruacion'),
        'ANTECEDENTE_PATOLOGICO' => $request->input('antecedente_patologico'),
        'TIPO_ANTECEDENTE' => $request->input('tipo_antecedente'),
        'ENFERMEDAD' => $request->input('enfermedad'),
        'ALERGIAS' => $request->input('alergia'),
        'HABITOS' => $request->input('habitos'),
        'CONSUMO_MEDICAMENTO' => $request->input('consumo_medicamento'),
        'IMAGEN'=> $request->input('imagen'),
        'OBSERVACIONES_IMAGEN' => $request->input('observaciones'),
        'SUB_TOTAL' => $request->input('sub_total'),
        'IMPUESTO' => $request->input('impuesto'),
        'TOTAL' => $request->input('total'),
        'DESCRIPCION_PAGO' => $request->input('descripcion_factura')
   
       ]);
       
       return redirect('admin/consulta');
   }


}
