@extends('adminlte::page')

@section('title', 'clinica')


@section('content_header')
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1></h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Registro clinica</a></li>
              <li class="breadcrumb-item active">Clinica</li>
            </ol>
          </div>
        </div>
      </div>
  
@stop

@section('content')

<div class="container-fluid" >
  <div class="row">
    <!-- /.col (left) -->
    <div class="col-md-8">
      <div class="card card-primary">
        <div class="card-header">
          <strong>
              <h4 style="text-align: center;"><i>Registrar Clinica</i></h4>
            </strong>
        </div>

        <div class="card-body">

          <form method="POST" id="frmnuevo" name="frmnuevo" action="clinica">
            @csrf
             <!-- NOMBRE CLINICA -->
              <div class="form-group">
                 <label for="nom_clinica">Nombre Clinica</label>
                  <input type="text" class="form-control" id="nom_clinica" name="nom_clinica" placeholder="NOMBRE CLINICA">
              </div>

              <!-- HORARIO CLINICA -->
              <div class="form-group">
                  <label for="horario_clinica">Horario Clinica</label>
                    <input type="text" class="form-control" id="horario_clinica" name="horario_clinica" placeholder="HORARIO">
              </div>
                   <!-- TELEFONO CLINICA -->
              <div class="form-group">
                  <label for="telefono_clinica">Telefono Clinica</label>
                    <input type="text" class="form-control" id="telefono_clinica" name="telefono_clinica"placeholder="TELEFONO"> 
              </div>

              <!-- UBICACION CLINICA -->
              <div class="form-group">
                  <label for="ubicacion_cli">Ubicacion Clinica</label>
                    <input type="text" class="form-control" id="ubicacion_cli" name="ubicacion_cli"placeholder="UBICACION"> 
              </div>

               <!-- RTN CLINICA -->
               <div class="form-group">
                  <label for="rtn_clinica">RTN Clinica</label>
                    <input type="text" class="form-control" id="rtn_clinica" name="rtn_clinica"placeholder="RTN CLINICA"> 
              </div>
 
               <!-- RED SOCIAL -->
               <div class="form-group">
                  <label for="red_social">Red Social</label>
                    <input type="text" class="form-control" id="red_social" name="red_social"placeholder="RED SOCIAL"> 
              </div>

               <!-- LOGO -->
               <div class="form-group">
                  <label for="logo_clinica">LOGO</label>
                    <input type="text" class="form-control" id="logo_clinica" name="logo_clinica"placeholder="LOGO"> 
              </div>
  
                  
                   <!-- FECHA Y HORA FIN -->
                   <div class="form-group">
                    <label>Fecha Registro </label>
                      <div class="input-group date" data-target-input="nearest">
                          <input type="datetime-local" id="fecha_registro" name="fecha_registro"  value="Y-m-d H:i:s" class="form-control datetimepicker-input"  data-target="#datetimes"/>
                      </div>
                  </div>
                  
                   <!-- CAI -->
               <div class="form-group">
                  <label for="cod_cai">CAI</label>
                    <input type="text" class="form-control" id="cod_cai" name="cod_cai"placeholder="CAI"> 
              </div>

                
                  <x-adminlte-button class="btn-lg" type="reset"  label="Cancelar" theme="outline-danger" icon="far fa-window-close"/>


                  <x-adminlte-button class="btn-lg float-right" id="btnAgregarnuevo" label="Registrar" type="submit" theme="outline-success" icon="fas fa-check"/>
              
	              
          </form>
          <!-- /.form group -->

          <!-- /.card-body -->
        </div>
        <!-- /.card -->
      </div>
      <!-- /.container-fluid -->
@stop

@section('css')

    <link rel="stylesheet" href="/css/admin_custom.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
@stop




@section('js')
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<!-- mensajes o alertas -->
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>

@if (session('eliminar') == 'ok')
<script>
  Swal.fire(
    'Eliminado!',
    'La clinica se elimino con éxito.',
    'success'
  )
</script>

@endif

@if (session('actualizar') == 'ok')
<script>
  Swal.fire(
    'Actualizado!',
    'La clinica se actualizo con éxito.',
    'success'
  )
</script>

@endif

@if (session('agregado') == 'ok')
<script>
  Swal.fire(
    'Agregado!',
    'La clinica se agrego con éxito.',
    'success'
  )
</script>
@endif
<!-- jQuery -->
<script type="text/javascript" src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>

  
