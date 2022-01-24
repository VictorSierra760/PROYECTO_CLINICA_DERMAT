@extends('adminlte::page')

@section('title', 'Clinica Dermatológica | Administrador')

@section('content_header')
<div class="container-fluid">
  <div class="row mb-2">
    <div class="col-sm-6">
      <h1></h1>
    </div>
    <div class="col-sm-6">
      <ol class="breadcrumb float-sm-right">
        <li class="breadcrumb-item"><a href="#">Busqueda</a></li>
        <li class="breadcrumb-item active">Clinica</li>
      </ol>
    </div>
  </div>
</div><!-- /.container-fluid -->
@stop

@section('content')


<div class="card">
  <div class="card-header">
    <a class="btn btn-primary btn-sm" href="/clinica">REGISTRAR NUEVO</a>
  </div>


<div class="card">
  <div class="card-header">
   <h3 class="card-title"><strong>Clinica</strong></h3>
    <div class="card-tools">
      <!--div class="input-group input-group-sm" style="width: 150px;">
        <input type="text" name="table_search" class="form-control float-right" placeholder="Search">

        <div class="input-group-append">
          <button type="submit" class="btn btn-default">
            <i class="fas fa-search"></i>
          </button>
        </div>
      </div>-->
    </div>
  </div>
  <!-- /.card-header -->
  <div class="card-body ">
    <table id="clinicabuscar"class="table table-bordered">
      <thead style="background-color: #2E86C1 ;color: white; font-weight:bold;; font-weight:bold;">
        <tr>
          <th style="width: 3%">Codigo Clinica</th>
          <th style="width: 12%">Nombre Clinica</th>
          <th style="width: 7%">Horario Clinica</th>
          <th style="width: 7%">Teléfono Clinica</th>
          <th style="width: 5%">Ubicacion Clinica</th>
          <th style="width: 3%">RTN Clinica</th>
          <th style="width: 8%">Red Social</th>
          <th style="width: 8%">Logo Clinica</th>
          <th style="width: 8%">Codigo CAI</th>
          <th style="width: 8%">Fecha de registro</th>
          <th style="width: 6%">Editar</th>
          <th style="width: 6%">Eliminar</th>
        </tr>
      </thead>

      <tbody>
        @php($i = 1)
      

        

        @foreach($mostrarclinicaArray as $mostrarclinica)
 
       
        
       

        <tr>

          <td>{{$i++}}</td>
          <td>{{ $mostrarclinica['NOM_CLINICA'] }}</td>
          <td>{{ $mostrarclinica['HORARIO_CLINICA'] }}</td>
          <td>{{ $mostrarclinica['TELEFONO_CLINICA'] }}</td>
          <td>{{ $mostrarclinica['UBICACION_CLI'] }}</td>
          <td>{{ $mostrarclinica['RTN_CLINICA'] }}</td>
          <td>{{ $mostrarclinica['RED_SOCIAL'] }}</td>
          <td>{{ $mostrarclinica['LOGO_CLINICA'] }}</td>
          <td>{{ $mostrarclinica['COD_CAI'] }}</td>
          <td><?php  $date=date_create($mostrarclinica['FECHA_REGISTRO']);
            echo date_format($date,"d-M-Y H:i:s");?></td>
           
         
           <td style="text-align: center;">
           
            <x-adminlte-button data-toggle="modal" data-target="#Modaleditarcita{{ $mostrarclinica['COD_CLINICA'] }}" data-id="" class="btn-lg" label="Editar " theme="outline-warning" icon="fas fa-edit" />
                   
<!-- Modal Actualizar  -->
<div class="modal fade" id="Modaleditarcita{{ $mostrarclinica['COD_CLINICA'] }}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document"  >
    <div class="modal-content" >
      <div class="modal-header"  style="background-color:#20c997!important">
        <h5 class="modal-title" id="exampleModalLabel" style="color:#fff!important"><strong>Actualizar Cita</strong></h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form method="POST" id="formactualizar" name="actualizarclinica" action="/clinicabuscar/upd/{{ $mostrarclinica['COD_CLINICA'] }}" > 
          @csrf
          @method('PUT')

           <!-- Codigo Clinica  -->
            <div class="form-group">
               <label for="cod_clinica">Codigo Clinica</label>
                <input type="text" class="form-control" id="cod_clinica" name="cod_clinica" placeholder="COD_CLINICA " value="{{ $mostrarclinica['COD_CLINICA'] }}">
            </div>
             
                 <!-- Horario Clinica -->
            <div class="form-group">
                <label for="horario_clinica">LUGAR CLINICA</label>
                  <input type="text" class="form-control" id="horario_clinica" name="horario_clinica" placeholder="HORARIO_CLINICA" value="{{ $mostrarclinica['HORARIO_CLINICA'] }}" > 
            </div>

               <!-- Telefono Clinica -->
               <div class="form-group">
                <label for="telefono_clinica">LUGAR CLINICA</label>
                  <input type="text" class="form-control" id="telefono_clinica" name="telefono_clinica" placeholder="TELEFONO_CLINICA" value="{{ $mostrarclinica['TELEFONO_CLINICA'] }}" > 
            </div>
            
             <!-- Ubicacion Clinica -->
             <div class="form-group">
                <label for="ubicacion_cli">LUGAR CLINICA</label>
                  <input type="text" class="form-control" id="ubicacion_cli" name="ubicacion_cli" placeholder="UBICACION_CLI" value="{{ $mostrarclinica['UBICACION_CLI'] }}" > 
            </div>

            <!-- RTN Clinica -->
            <div class="form-group">
                <label for="rtn_clinica">LUGAR CLINICA</label>
                  <input type="text" class="form-control" id="rtn_clinica" name="rtn_clinica" placeholder="RTN_CLINICA" value="{{ $mostrarclinica['RTN_CLINICA'] }}" > 
            </div>

             <!-- Red Social -->
             <div class="form-group">
                <label for="red_social">LUGAR CLINICA</label>
                  <input type="text" class="form-control" id="red_social" name="red_social" placeholder="RED_SOCIAL" value="{{ $mostrarclinica['RED_SOCIAL'] }}" > 
            </div>

            
             <!-- Logo Clinica -->
             <div class="form-group">
                <label for="logo_clinica">LUGAR CLINICA</label>
                  <input type="text" class="form-control" id="logo_clinica" name="logo_clinica" placeholder="LOGO_CLINICA" value="{{ $mostrarclinica['LOGO_CLINICA'] }}" > 
            </div>

            <!-- Codigo CAI -->
            <div class="form-group">
                <label for="codigo_cai">LUGAR CLINICA</label>
                  <input type="text" class="form-control" id="codigo_cai" name="codigo_cai" placeholder="COD_CAI" value="{{ $mostrarclinica['COD_CAI'] }}" > 
            </div>
            
                  <!-- FECHA REGISTRO -->
              <div class="form-group">
                <label>FECHA REGISTRO:</label>
                    <div class="input-group date" id="fecha_registro" name="fecha_registro" data-target-input="nearest">
                      <input type="datetime-local" id="fecha_registro" name="fecha_registro" class="form-control datetimepicker-input" data-target="#datetimes" value="<?php  $date?>"/>
                    </div>
              </div>
      
        </form>
      </div>
      
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
        <form id="" method="POST" action="/clinicabuscar/upd/{{ $mostrarclinica['COD_CLINICA'] }}">
          @csrf
          @method('PUT')
          <button type="submit" class="btn btn-success">Actualizar</button>
        </form>
      </div>
    </div>
  </div>
</div>
<!-- Modal Actualizar  -->   

          </td>
            <td>
                {{-- Abrir el modal de  eliminar cita--}}
              <div class="form-item center">
                <x-adminlte-button data-toggle="modal" data-target="#Modaleliminarcita" data-id="{{ $mostrarclinica['COD_CLINICA'] }}" class="btn-lg" type="reset" label="Eliminar" theme="outline-danger" icon="fas fa-lg fa-trash"/>
              </div>
            </td>
        </tr>
        @endforeach
      </tbody>
    </table>
  </div>
</div>

<!-- Modal Eliminar  -->
<div class="modal fade" id="Modaleliminarclinica" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document"  >
    <div class="modal-content" >
      <div class="modal-header"  style="background-color:#20c997!important">
        <h5 class="modal-title" id="exampleModalLabel" style="color:#fff!important"><strong></strong></h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
          <div class="modal-content text-center">
            <h3>¿Deseas Emininar la Cita?</h3>
          </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
        <form id="FormDelete" method="POST" action="/cita/delete/1"  data-action="/cita/delete/1">
          @csrf
          @method('DELETE')
          <button type="submit" class="btn btn-danger">Aceptar</button>
        </form>
      </div>
    </div>
  </div>
</div>
<!-- Modal Eliminar  -->







@stop

 <!--Estilos -->
@section('css')
 <link rel="stylesheet" href="/css/admin_custom.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
@stop

 <!--JS -->
@section('js')
    <!--Script tabla  CLINICA-->
    <script>
    $(document).ready(function() {
      $('#clinicabuscar').DataTable({
        "lengthMenu": [ [5, 10, 25, 50, -1], [5, 10, 25, 50, "All"] ]
      });
    });
  </script>

  
  <!--SCRIPT ELIMINAR CITA-->
   <script>
  $('#Modaleliminarclinica').on('show.bs.modal', function (event) {
  var button = $(event.relatedTarget) // Button that triggered the modal
  var id = button.data('id') // Extract info from data-* attributes
  // If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
  // Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.
  action = $('#FormDelete').attr('data-action').slice(0,-1);
  var modal = $(this)
  action+= id;
  $('#FormDelete').attr('action', action).slice(0,-1);
  console.log(action);
  modal.find('.modal-title').text('SE ELIMINARA EL REGISTRO DE LA CITA ' + id)
    })
  </script>
 <!--SCRIPT  ELIMINAR CITA-->
  

   <!--SCRIPT DE ALERTAS-->
@if (session('eliminar') == 'ok')
<script>
  Swal.fire(
    'Eliminado!',
    'La cita se elimino con éxito.',
    'success'
  )
</script>
@endif
@if (session('actualizar') == 'ok')
<script>
  Swal.fire(
    'Actualizado!',
    'La cita se actualizo con éxito.',
    'success'
  )
</script>
@endif
@if (session('agregado') == 'ok')
<script>
  Swal.fire(
    'Agregado!',
    'La cita se agrego con éxito ',
    'success'
  )
</script>
@endif
<!--SCRIPT DE ALERTAS-->

@stop