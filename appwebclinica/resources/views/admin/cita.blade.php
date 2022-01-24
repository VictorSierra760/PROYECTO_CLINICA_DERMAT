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
        <li class="breadcrumb-item active">Cita</li>
      </ol>
    </div>
  </div>
</div><!-- /.container-fluid -->
@stop

@section('content')

<div class="card">
  <div class="card-header">
    <a class="btn btn-primary btn-sm" href="/registrarcita">Registrar Cita</a>
  </div>


<div class="card">
  <div class="card-header">
   <h3 class="card-title"><strong>CITAS</strong></h3>
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
    <table id="tblcitas" name="tblcitas"class="table table-bordered">
      <thead style="background-color: #2E86C1 ;color: white; font-weight:bold;; font-weight:bold;">
        <tr>
          <th style="width: 3%">Nº</th>
          <!--th style="width: 3%">Nº</th>-->
          <th style="width: 12%">Nombre Paciente</th>
          <th style="width: 7%">Nº DNI</th>
          <th style="width: 7%">Teléfono</th>
          <th style="width: 5%">Asunto</th>
          <th style="width: 3%">Estado</th>
          <th style="width: 8%">Fecha y hora inicio</th>
          <th style="width: 8%">Fecha y hora fin</th>
          <th style="width: 8%">Lugar CLINICA</th>
          <th style="width: 8%">Fecha de registro</th>
          <th style="width: 6%">Editar</th>
          <th style="width: 6%">Eliminar</th>
        </tr>
      </thead>

      <tbody>
        @php($i = 1)
      

        

        @foreach($mostrarcitasArray as $mostrarcitas)
 
       
        
       

        <tr>

          <td>{{$i++}}</td>
          <!--td>/""</td>-->
          <td>{{ $mostrarcitas['NOMBRE'] }}</td>
          <td>{{ $mostrarcitas['NUMERO_ID'] }}</td>
          <td>{{ $mostrarcitas['TELEFONO'] }}</td>
          <td>{{ $mostrarcitas['ASUNTO'] }}</td>
          <td>{{ $mostrarcitas['ESTADO_CITA'] }}</td>
          <td>{{ date('d/m/Y H:i:s a', strtotime($mostrarcitas['FECHA_INICIO'])) }}</td>
          <td>{{ date('d/m/Y H:i:s a', strtotime($mostrarcitas['FECHA_FIN'])) }}</td>
          <td>{{ $mostrarcitas['LUGAR_CLINICA'] }}</td>
          <td>{{ date('d/m/Y H:i:s a', strtotime($mostrarcitas['FECHA_REGISTRO'])) }}</td>
           
         
          <td style="text-align: center;">
            <a href="/cita/edit/{{ $mostrarcitas['COD_CITA'] }}" class="btn btn-warning btn-sm">Editar</a>
            <!--x-adminlte-button href="/cita/edit/" data-toggle="modal" data-target="#Modaleditarcita" class="btn-lg" label="Editar " theme="outline-warning" icon="fas fa-edit" />-->
       

          </td>
            <td>
                {{-- Abrir el modal de  eliminar cita--}}
              <div class="form-item center">
                <x-adminlte-button data-toggle="modal" data-target="#Modaleliminarcita" data-id="{{ $mostrarcitas['COD_CITA'] }}" class="btn-lg" type="reset" label="Eliminar" theme="outline-danger" icon="fas fa-lg fa-trash"/>
              </div>
            </td>
        </tr>
        @endforeach
      </tbody>
    </table>
  </div>
</div>

<!-- Modal Eliminar  -->
<div class="modal fade" id="Modaleliminarcita" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
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
          <button type="submit" class="btn-danger btn-sm">Aceptar</button>
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

    <!--Script tabla  cITA-->
    <script>
    $(document).ready(function() {
      $('#tblcitas').DataTable({
        "lengthMenu": [ [5, 10, 25, 50, -1], [5, 10, 25, 50, "All"] ]
        
      });
    });
  </script>

  
  <!--SCRIPT ELIMINAR CITA-->
   <script>
  $('#Modaleliminarcita').on('show.bs.modal', function (event) {
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

@if (session('error') == 'ok')
<script>
  Swal.fire({
  icon: 'error',
  title: 'Oops...',
  text: 'Something went wrong!',
  footer: '<a href="">Why do I have this issue?</a>'
})

</script>
@endif
<!--SCRIPT DE ALERTAS-->



@stop