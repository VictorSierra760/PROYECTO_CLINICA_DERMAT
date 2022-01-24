@extends('adminlte::page')

@section('title', 'App web Clinica')

@section('content_header')
<div class="card text-info">
  <center>
<h1 class="">REGISTRAR NUEVA CONSULTA DEL PACIENTE</h1> 
  </center>
</div>
    
   
@stop

@section('content')
     <form class="row g-3 needs-validation alert-primary" action="{{Route('consulta.store')}}" method="POST" novalidate>
            @csrf


            <div class="col-md-2">
    <label for="cod_paciente" class="form-label">Paciente</label>
    <select class="form-select" id="cod_paciente" name="cod_paciente" required>
      <option selected disabled value="">Seleccionar...</option>
   @foreach($addconsultaArray as $addconsulta)
      <option value="{{ $addconsulta['COD_PACIENTE']}}">{{$addconsulta['PRI_NOMBRE']}} {{ $addconsulta['PRI_APELLIDO']}}</option>      
  @endforeach
    </select>
    <div class="invalid-feedback">
      Por favor seleccionar un paciente valido.
    </div>
    <div class="valid-feedback">
      Excelente trabajo!.
    </div>
  </div>

            <div class="col-md-2">
    <label for="tipo_consulta" class="form-label">Tipo Consulta</label>
    <input type="text" class="form-control" id="tipo_consulta" name="tipo_consulta"  required maxlength="20">
    <div class="valid-feedback">
      Correcto!
    </div>
    <div class="invalid-feedback">
      Ingresa el nombre de la consulta o el tipo.
    </div>
  </div>

  <div class="col-md-2">
    <label for="lugar_consulta" class="form-label">lugar de la Consulta</label>
    <input type="text" class="form-control" id="lugar_consulta" name="lugar_consulta" required maxlength="20" >
    <div class="valid-feedback">
      Correcto!
    </div>
    <div class="invalid-feedback">
      Ingresa el lugar de la consulta.
    </div>
  </div>

  <div class="col-md-2">
    <label for="seguro_medico" class="form-label">Seguro Medico</label>
    <select class="form-select" id="seguro_medico" name="seguro_medico" required>
    <option selected disabled value="">Seleccionar...</option>
    <option  value="si">Si</option>
    <option value="no">No</option>
    </select>
   <div class="valid-feedback">
      Correcto!
    </div>
    <div class="invalid-feedback">
      Por favor seleccionar una opción valido.
    </div>
  </div>

  <div class="col-md-2">
    <label for="aseguradora" class="form-label">Aseguradora</label>
    <input type="text" class="form-control" id="aseguradora" name="aseguradora" value="" required maxlength="20">
    <div class="valid-feedback">
      Correcto!
    </div>
    <div class="invalid-feedback">
      Por favor Ingrese un nombre.
    </div>
  </div>

  <div class="col-md-2">
    <label for="relacion_poliza" class="form-label">Relacion Poliza</label>
    <select class="form-select" id="relacion_poliza" name="relacion_poliza" required>
    <option selected disabled value="">Seleccionar...</option>
    <option  value="ninguna">ninguna</option>
    <option  value="hijo(a)">hijo(a)</option>
    <option value="Padre">Padre</option>
    <option value="Madre">Madre</option>
    <option value="Esposo(a)">Esposo(a)</option>
    </select>
   <div class="valid-feedback">
      Correcto!
    </div>
    <div class="invalid-feedback">
      Por favor seleccionar un Campo valido.
    </div>
  </div>
  
   
  <div class="card ">
              <div class="card-header text-secundary alert-info bg-primary">
              <h3>SIGNOS VITALES</h3>
                <div class="card-tools">
                <button type="button" class="btn btn-tool btn-outline-warning" data-card-widget="collapse">
                <i class="fas fa-minus"></i>
              </button>
              <button type="button" class="btn btn-tool btn-outline-danger" data-card-widget="remove">
                <i class="fas fa-times"></i>
              </button>
            </div>
              </div>
              <!-- /.card-hehoader -->
              <div class="card-body">
  <div class="col-md-9">
    <label for="estatura" class="form-label">Signos vitales</label>
    <div class="input-group has-validation">
      <span class="input-group-text" id="estatura">Estatura</span>
      <input type="text" class="form-control" id="estatura" name="estatura" aria-describedby="inputGroupPrepend" required maxlength="20">
      <div class="invalid-feedback">
        Campo Vacio.
      </div>
    </div>
  </div>

  <div class="col-md-9">
    <label for="sato2" class="form-label">Signos vitales</label>
    <div class="input-group has-validation">
      <span class="input-group-text" id="sato2">Sato2</span>
      <input type="text" class="form-control" id="sato2" name="sato2" aria-describedby="inputGroupPrepend" required maxlength="20">
      <div class="invalid-feedback">
      Campo Vacio.
      </div>
    </div>
  </div>

  <div class="col-md-9">
    <label for="peso" class="form-label">Signos vitales</label>
    <div class="input-group has-validation">
      <span class="input-group-text" id="peso">Peso</span>
      <input type="text" class="form-control" id="peso" name="peso" aria-describedby="inputGroupPrepend" required maxlength="20">
      <div class="invalid-feedback">
      Campo Vacio.
      </div>
    </div>
  </div>

  <div class="col-md-9">
    <label for="temperatura" class="form-label">Signos vitales</label>
    <div class="input-group has-validation">
      <span class="input-group-text" id="temperatura">Temperatura</span>
      <input type="text" class="form-control" id="temperatura" name="temperatura" aria-describedby="inputGroupPrepend" required maxlength="20">
      <div class="invalid-feedback">
      Campo Vacio.
      </div>
    </div>
  </div>

  <div class="col-md-9">
    <label for="presion_arterial" class="form-label">Signos vitales</label>
    <div class="input-group has-validation">
      <span class="input-group-text" id="presion_arterial">Presión Arterial</span>
      <input type="text" class="form-control" id="presion_arterial" name="presion_arterial" aria-describedby="inputGroupPrepend" required maxlength="20">
      <div class="invalid-feedback">
      Campo Vacio.
      </div>
    </div>
  </div>

  <div class="col-md-9">
    <label for="frecuencia_cardiaca" class="form-label">Signos vitales</label>
    <div class="input-group has-validation">
      <span class="input-group-text" id="frecuencia_cardiaca">Frecuencia cardiaca</span>
      <input type="text" class="form-control" id="frecuencia_cardiaca" name="frecuencia_cardiaca" aria-describedby="inputGroupPrepend" required maxlength="20">
      <div class="invalid-feedback">
      Campo Vacio.
      </div>
    </div>
  </div>

  <div class="col-md-9">
    <label for="frecuencia_respiratoria" class="form-label">Signos vitales</label>
    <div class="input-group has-validation">
      <span class="input-group-text" id="frecuencia_respiratoria">Frecuencia respiratoria</span>
      <input type="text" class="form-control" id="frecuencia_respiratoria" name="frecuencia_respiratoria" aria-describedby="inputGroupPrepend" required maxlength="20">
      <div class="invalid-feedback">
      Campo Vacio.
      </div>
    </div>
  </div>

  <div class="col-md-9">
    <label for="notas" class="form-label">Signos vitales</label>
    <div class="input-group has-validation">
      <span class="input-group-text" id="notas">Notas</span>
      <input type="text" class="form-control" id="notas" name="notas" aria-describedby="inputGroupPrepend" required maxlength="20">
      <div class="invalid-feedback">
      Campo Vacio.
      </div>
    </div>
  </div>

  <div class="col-md-9">
    <label for="descripcion_signos" class="form-label">Signos vitales</label>
    <div class="input-group has-validation">
      <span class="input-group-text" id="descripcion_signos">Descripcion de los signos</span>
      <input type="text" class="form-control" id="descripcion_signos" name="descripcion_signos" aria-describedby="inputGroupPrepend" required maxlength="20">
      <div class="invalid-feedback">
      Campo Vacio.
      </div>
    </div>
  </div>

  <div class="col-md-9">
    <label for="fecha_registro_signos" class="form-label">Signos vitales</label>
    <div class="input-group has-validation">
      <span class="input-group-text" id="fecha_registro_signos">Fecha</span>
      <input type="datetime-local" class="form-control" id="fecha_registro_signos" name="fecha_registro_signos" aria-describedby="inputGroupPrepend" required maxlength="20">
      <div class="invalid-feedback">
      Campo Vacio.
      </div>
    </div>
  </div>
  </div>  
</div>


<div class="card">
              <div class="card-header text-secundary alert-info">
              <h3>CIE</h3>
                <div class="card-tools">
                <button type="button" class="btn btn-tool btn-outline-warning" data-card-widget="collapse">
                <i class="fas fa-minus"></i>
              </button>
              <button type="button" class="btn btn-tool btn-outline-danger" data-card-widget="remove">
                <i class="fas fa-times"></i>
              </button>
            </div>
              </div>
              <!-- /.card-hehoader -->
              <div class="card-body">
  <div class="col-md-9">
    <label for="cie" class="form-label">Cie</label>
    <div class="input-group has-validation">
      <span class="input-group-text" id="cie">Cie</span>
      <input value="-" type="text" class="form-control" id="cie" name="cie" aria-describedby="inputGroupPrepend" required maxlength="20">
      <div class="invalid-feedback">
      Campo Vacio.
      </div>
    </div>
  </div>

  <div class="col-md-9">
    <label for="nombre_diagnostico" class="form-label">Cie</label>
    <div class="input-group has-validation">
      <span class="input-group-text" id="nombre_diagnostico">Nombre del Diagnostico</span>
      <input value="-" type="text" class="form-control" id="nombre_diagnostico" name="nombre_diagnostico" aria-describedby="inputGroupPrepend" required maxlength="20">
      <div class="invalid-feedback">
      Campo Vacio.
      </div>
    </div>
  </div>

  <div class="col-md-9">
    <label for="equivalencias" class="form-label">Cie</label>
    <div class="input-group has-validation">
      <span class="input-group-text" id="equivalencias">Equivalencias</span>
      <input value="-" type="text" class="form-control" id="equivalencias" name="equivalencias" aria-describedby="inputGroupPrepend" requirequired maxlength="20"red>
      <div class="invalid-feedback">
      Campo Vacio.
      </div>
    </div>
  </div>

  <div class="col-md-9">
    <label for="descripcion_diagnostico" class="form-label">Cie</label>
    <div class="input-group has-validation">
      <span class="input-group-text" id="descripcion_diagnostico">Descripción Diagnostico</span>
      <input value="-" type="text" class="form-control" id="descripcion_diagnostico" name="descripcion_diagnostico" aria-describedby="inputGroupPrepend" required maxlength="20">
      <div class="invalid-feedback">
      Campo Vacio.
      </div>
    </div>
  </div>
  </div>  
</div>



<div class="card">
              <div class="card-header text-secundary alert-info">
              <h3>Examen</h3>
                <div class="card-tools">
                <button type="button" class="btn btn-tool btn-outline-warning" data-card-widget="collapse">
                <i class="fas fa-minus"></i>
              </button>
              <button type="button" class="btn btn-tool btn-outline-danger" data-card-widget="remove">
                <i class="fas fa-times"></i>
              </button>
            </div>
              </div>
              <!-- /.card-hehoader -->
              <div class="card-body">
  <div class="col-md-9">
    <label for="nombre_examen" class="form-label">Examen</label>
    <div class="input-group has-validation">
      <span class="input-group-text" id="nombre_examen">Nombre Examen</span>
      <input value="-" type="text" class="form-control" id="nombre_examen" name="nombre_examen" aria-describedby="inputGroupPrepend" required maxlength="20">
      <div class="invalid-feedback">
      Campo Vacio.
      </div>
    </div>
  </div>

  <div class="col-md-9">
    <label for="etiqueta_examen" class="form-label">Examen</label>
    <div class="input-group has-validation">
      <span class="input-group-text" id="etiqueta_examen">Etiqueta Examen</span>
      <input value="-" type="text" class="form-control" id="etiqueta_examen" name="etiqueta_examen" aria-describedby="inputGroupPrepend" required maxlength="20">
      <div class="invalid-feedback">
      Campo Vacio.
      </div>
    </div>
  </div>

  <div class="col-md-9">
    <label for="codigo_examen" class="form-label">Examen</label>
    <div class="input-group has-validation">
      <span class="input-group-text" id="codigo_examen">Codigo examen</span>
      <input value="0"  type="number" class="form-control" id="codigo_examen" name="codigo_examen" aria-describedby="inputGroupPrepend" required maxlength="20">
      <div class="invalid-feedback">
      Campo Vacio.
      </div>
    </div>
  </div>
 
  </div>  
</div>


<div class="card">
              <div class="card-header text-secundary alert-info">
              <h3>Medicamento</h3>
                <div class="card-tools">
                <button type="button" class="btn btn-tool btn-outline-warning" data-card-widget="collapse">
                <i class="fas fa-minus"></i>
              </button>
              <button type="button" class="btn btn-tool btn-outline-danger" data-card-widget="remove">
                <i class="fas fa-times"></i>
              </button>
            </div>
              </div>
              <!-- /.card-hehoader -->
              <div class="card-body">
  <div class="col-md-9">
    <label for="medicamento" class="form-label">Medicamento</label>
    <div class="input-group has-validation">
      <span class="input-group-text" id="medicamento">Nombre Medicamento</span>
      <input value="-" type="text" class="form-control" id="medicamento" name="medicamento" aria-describedby="inputGroupPrepend" required maxlength="20">
      <div class="invalid-feedback">
      Campo Vacio.
      </div>
    </div>
  </div>

  <div class="col-md-9">
    <label for="marca_medicamento" class="form-label">Medicamento</label>
    <div class="input-group has-validation">
      <span class="input-group-text" id="marca_medicamento">Marca Medicamento</span>
      <input value="-" type="text" class="form-control" id="marca_medicamento" name="marca_medicamento" aria-describedby="inputGroupPrepend" required maxlength="20">
      <div class="invalid-feedback">
      Campo Vacio.
      </div>
    </div>
  </div>

  <div class="col-md-9">
    <label for="cantidad_medicamento" class="form-label">Medicamento</label>
    <div class="input-group has-validation">
      <span class="input-group-text" id="cantidad_medicamento">Cantidad Medicamento</span>
      <input value="0" type="number" class="form-control" id="cantidad_medicamento" name="cantidad_medicamento" aria-describedby="inputGroupPrepend" required maxlength="20">
      <div class="invalid-feedback">
      Campo Vacio.
      </div>
    </div>
  </div>

  <div class="col-md-9">
    <label for="dosis_medicamento" class="form-label">Medicamento</label>
    <div class="input-group has-validation">
      <span class="input-group-text" id="dosis_medicamento">Indicación Consumo</span>
      <input value="-" type="text" class="form-control" id="dosis_medicamento" name="dosis_medicamento" aria-describedby="inputGroupPrepend" required maxlength="20">
      <div class="invalid-feedback">
      Campo Vacio.
      </div>
    </div>
  </div>

  <div class="col-md-9">
    <label for="descripcion_medicamento" class="form-label">Medicamento</label>
    <div class="input-group has-validation">
      <span class="input-group-text" id="descripcion_medicamento">Descripción Medicamento</span>
      <input value="-" type="text" class="form-control" id="descripcion_medicamento" name="descripcion_medicamento" aria-describedby="inputGroupPrepend" required maxlength="20">
      <div class="invalid-feedback">
      Campo Vacio.
      </div>
    </div>
  </div>
  
  </div>  
</div>


<div class="card">
              <div class="card-header text-secundary alert-info">
              <h3>Antecedentes Obstetricos</h3>
                <div class="card-tools">
                <button type="button" class="btn btn-tool btn-outline-warning" data-card-widget="collapse">
                <i class="fas fa-minus"></i>
              </button>
              <button type="button" class="btn btn-tool btn-outline-danger" data-card-widget="remove">
                <i class="fas fa-times"></i>
              </button>
            </div>
              </div>
              <!-- /.card-hehoader -->
              <div class="card-body">
  <div class="col-md-9">
    <label for="menarquia" class="form-label">Menarquia</label>
    <div class="input-group has-validation">
      <span class="input-group-text" id="menarquia">Menarquia</span>
      <input value="-" type="text" class="form-control" id="menarquia" name="menarquia" aria-describedby="inputGroupPrepend" required maxlength="20">
      <div class="invalid-feedback">
      Campo Vacio.
      </div>
    </div>
  </div>

  <div class="col-md-9">
    <label for="embarazos" class="form-label">Menarquia</label>
    <div class="input-group has-validation">
      <span class="input-group-text" id="embarazos">Embarazos</span>
      <input value="-" type="number" class="form-control" id="embarazos" name="embarazos" aria-describedby="inputGroupPrepend" required>
      <div class="invalid-feedback">
      Campo Vacio.
      </div>
    </div>
  </div>

  <div class="col-md-9">
    <label for="planificacion" class="form-label">Menarquia</label>
    <div class="input-group has-validation">
      <span class="input-group-text" id="planificacion">Planificación</span>
      <input value="-" type="text" class="form-control" id="planificacion" name="planificacion" aria-describedby="inputGroupPrepend" required maxlength="20">
      <div class="invalid-feedback">
      Campo Vacio.
      </div>
    </div>
  </div>

  <div class="col-md-9">
    <label for="periodo_mestruacion" class="form-label">Menarquia</label>
    <div class="input-group has-validation">
      <span class="input-group-text" id="periodo_mestruacion">Periodo Mestrual</span>
      <input value="-" type="number" class="form-control" id="periodo_mestruacion" name="periodo_mestruacion" aria-describedby="inputGroupPrepend" required maxlength="20">
      <div class="invalid-feedback">
      Campo Vacio.
      </div>
    </div>
  </div>

  <div class="col-md-9">
    <label for="fecha_ultima_mestruacion" class="form-label">Menarquia</label>
    <div class="input-group has-validation">
      <span class="input-group-text" id="fecha_ultima_mestruacion">Ultima Fecha de Mestruación</span>
      <input  type="datetime-local" class="form-control" id="fecha_ultima_mestruacion" name="fecha_ultima_mestruacion" aria-describedby="inputGroupPrepend" required>
      <div class="invalid-feedback">
      Campo Vacio.
      </div>
    </div>
  </div>
  
  </div>  
</div>

<div class="card">
              <div class="card-header text-secundary alert-info">
              <h3>Antecedentes patologicos</h3>
                <div class="card-tools">
                <button type="button" class="btn btn-tool btn-outline-warning" data-card-widget="collapse">
                <i class="fas fa-minus"></i>
              </button>
              <button type="button" class="btn btn-tool btn-outline-danger" data-card-widget="remove">
                <i class="fas fa-times"></i>
              </button>
            </div>
              </div>
              <!-- /.card-hehoader -->
              <div class="card-body">
  <div class="col-md-9">
    <label for="antecedente_patologico" class="form-label">Antecedente patologico</label>
    <div class="input-group has-validation">
      <span class="input-group-text" id="antecedente_patologico">Antecedente Patologico</span>
      <input value="-" type="text" class="form-control" id="antecedente_patologico" name="antecedente_patologico" aria-describedby="inputGroupPrepend" required maxlength="20">
      <div class="invalid-feedback">
      Campo Vacio.
      </div>
    </div>
  </div>

  <div class="col-md-9">
    <label for="alergia" class="form-label">Antecedente patologico</label>
    <div class="input-group has-validation">
      <span class="input-group-text" id="alergia">Alergias</span>
      <input value="-" type="text" class="form-control" id="alergia" name="alergia" aria-describedby="inputGroupPrepend" required maxlength="20">
      <div class="invalid-feedback">
      Campo Vacio.
      </div>
    </div>
  </div>

  <div class="col-md-9">
    <label for="habitos" class="form-label">Antecedentes Patologico</label>
    <div class="input-group has-validation">
      <span class="input-group-text" id="habitos">Habitos</span>
      <input value="-" type="text" class="form-control" id="habitos" name="habitos" aria-describedby="inputGroupPrepend" required maxlength="20">
      <div class="invalid-feedback">
      Campo Vacio.
      </div>
    </div>
  </div>

  <div class="col-md-9">
    <label for="consumo_medicamento" class="form-label">Antecedentes Patologico</label>
    <div class="input-group has-validation">
      <span class="input-group-text" id="consumo_medicamento">Consumo Medicamento</span>
      <input value="-" type="text" class="form-control" id="consumo_medicamento" name="consumo_medicamento" aria-describedby="inputGroupPrepend" required maxlength="20">
      <div class="invalid-feedback">
      Campo Vacio.
      </div>
    </div>
  </div>

  <div class="col-md-9">
    <label for="tipo_antecedente" class="form-label">Antecedente Patologico</label>
    <div class="input-group has-validation">
      <span class="input-group-text" id="tipo_antecedente">Tipo de Antecedente</span>
      <input value="-" type="text" class="form-control" id="tipo_antecedente" name="tipo_antecedente" aria-describedby="inputGroupPrepend" required maxlength="20">
      <div class="invalid-feedback">
      Campo Vacio.
      </div>
    </div>
  </div>

  <div class="col-md-9">
    <label for="enfermedad_patologica" class="form-label">Antecedente Patologico</label>
    <div class="input-group has-validation">
      <span class="input-group-text" id="enfermedad_patologica">Enfermedad Patologica</span>
      <input value="-" type="text" class="form-control" id="enfermedad_patologica" name="enfermedad_patologica" aria-describedby="inputGroupPrepend" required maxlength="20">
      <div class="invalid-feedback">
      Campo Vacio.
      </div>
    </div>
  </div>
  
  </div>  
</div>


<div class="card">
              <div class="card-header text-secundary alert-success bg-success">
              <h3>Agregar IMAGEN Y FACTURACIÓN de la CONSULTA</h3>
                <div class="card-tools">
                <button type="button" class="btn btn-tool btn-outline-warning" data-card-widget="collapse">
                <i class="fas fa-minus"></i>
              </button>
              <button type="button" class="btn btn-tool btn-outline-danger" data-card-widget="remove">
                <i class="fas fa-times"></i>
              </button>
            </div>
              </div>
              <!-- /.card-hehoader -->
              <div class="card-body">
  <div class="col-md-9">
    <label for="imagen" class="form-label">Imagen</label>
    <div class="input-group has-validation">
      <span class="input-group-text" id="imagen">Imagen</span>
      <input value="-" type="text" class="form-control" id="imagen" name="imagen" aria-describedby="inputGroupPrepend" required>
      <div class="invalid-feedback">
      Campo Vacio.
      </div>
    </div>
  </div>

  <div class="col-md-9">
    <label for="observaciones" class="form-label">Imagen</label>
    <div class="input-group has-validation">
      <span class="input-group-text" id="observaciones">Descripcion de la imagen</span>
      <input value="opción" type="text" class="form-control" id="observaciones" name="observaciones" aria-describedby="inputGroupPrepend" required maxlength="20">
      <div class="invalid-feedback">
      Campo Vacio.
      </div>
    </div>
  </div>

  <div class="col-md-9">
    <label for="sub_total" class="form-label">Sub total de la factura</label>
    <div class="input-group has-validation">
      <span class="input-group-text" id="sub_total">Sub total</span>
      <input type="number" class="form-control" id="sub_total" name="sub_total" aria-describedby="inputGroupPrepend" required>
      <div class="invalid-feedback">
      Campo Vacio.
      </div>
    </div>
  </div>

  <div class="col-md-9">
    <label for="impuesto" class="form-label">Impuesto</label>
    <div class="input-group has-validation">
      <span class="input-group-text" id="impuesto">Impuesto</span>
      <input  type="number" class="form-control" id="impuesto" name="impuesto" aria-describedby="inputGroupPrepend" required>
      <div class="invalid-feedback">
      Campo Vacio.
      </div>
    </div>
  </div>

  <div class="col-md-9">
    <label for="total" class="form-label">Total Factura</label>
    <div class="input-group has-validation">
      <span class="input-group-text" id="total">Total a pagar</span>
      <input  type="number" class="form-control" id="total" name="total" aria-describedby="inputGroupPrepend" required>
      <div class="invalid-feedback">
      Campo Vacio.
      </div>
    </div>
  </div>

  <div class="col-md-9">
    <label for="descripcion_factura" class="form-label">Descripción de la factura</label>
    <div class="input-group has-validation">
      <span class="input-group-text" id="descripcion_factura">Descripción del pago</span>
      <input type="text" class="form-control" id="descripcion_factura" name="descripcion_factura" aria-describedby="inputGroupPrepend" required maxlength="20">
      <div class="invalid-feedback">
      Campo Vacio.
      </div>
    </div>
  </div>
  
  </div>  
</div>

  <div class="col-12">
    <div class="form-check">
      <input class="form-check-input" type="checkbox" value="" id="invalidCheck" required>
      <label class="form-check-label" for="invalidCheck">
        Aceptas las condiciones de registro de datos al paciente!
      </label>
      <div class="invalid-feedback">
        Aceptar Terminos.
      </div>
    </div>
  </div>
  <div class="col-12">
    <button class="btn btn-outline-primary" type="submit">Guardar Consulta</button>
  </div>
           </form>  
          

@stop


@section('css')
    <link rel="stylesheet" href="/css/admin_custom.css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

@stop

@section('js')
  <script> console.log('Hi!'); </script>
   <script>// Example starter JavaScript for disabling form submissions if there are invalid fields
(function () {
  'use strict'

  // Fetch all the forms we want to apply custom Bootstrap validation styles to
  var forms = document.querySelectorAll('.needs-validation')

  // Loop over them and prevent submission
  Array.prototype.slice.call(forms)
    .forEach(function (form) {
      form.addEventListener('submit', function (event) {
        if (!form.checkValidity()) {
          event.preventDefault()
          event.stopPropagation()
        }

        form.classList.add('was-validated')
      }, false)
    })
})()</script>
@stop
