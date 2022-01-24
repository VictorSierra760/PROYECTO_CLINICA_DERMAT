@extends('adminlte::page')

@section('title', 'Citas')


@section('content_header')
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1></h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Actualizar citas</a></li>
              <li class="breadcrumb-item active">Citas</li>
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
              <h4 style="text-align: center;"><i>Actualizar Cita</i></h4>
            </strong>
        </div>

        <div class="card-body">

          <form   class="needs-validation" method="POST" id="formularioactualizar" name="formularioactualizar" action="/cita/upd/{{ $citaArray['COD_CITA'] }}"  novalidate>
            @csrf
            @method('PUT')
             <!-- DNI  -->
              <div class="form-group" id="grupo__dni_paciente">
                 <label for="dni_paciente">Nº DNI PACIENTE</label>
                 <input type="text" class="form-control" id="dni_paciente" name="dni_paciente" placeholder="Nº DNI PACIENTE " value="{{ $citaArray['NUMERO_ID'] }}" pattern="^[a-zA-Z0-9]{13,16}$" required autofocus>
                  <!-- Validacion  -->
                  
                  <div class="invalid-feedback">El DNI del paciente deben debe de tener 13 a 16 digitos y solo pueden contener numeros y letras</div>
                </div>

              <!-- Nombre paciente -->
              <div class="form-group" id="grupo__asunto_cita">
                  <label for="asunto_cita">ASUNTO</label>
                    <input type="text" class="form-control" id="asunto_cita" name="asunto_cita" placeholder="ASUNTO" value="{{ $citaArray['ASUNTO_NOMBRE'] }}" pattern="^[a-zA-ZÀ-ÿ\s]{1,29}$" required autofocus>
                    
                    <div class="invalid-feedback">El asunto debe de tener 1 a 29 digitos y solo pueden contener letras, espacios</div>
              </div>
                   <!-- lugar cita -->
              <div class="form-group" id="grupo__lugar_cita">
                  <label for="lugar_cita">LUGAR CLINICA</label>
                    <input type="lugar_cita" class="form-control" id="lugar_cita" name="lugar_cita"placeholder="LUGAR CLINICA " value="{{ $citaArray['LUGAR_CLINICA'] }}"  pattern="^[a-zA-ZÀ-ÿ\s]{1,29}$" required autofocus> 
                    
                    <div class="invalid-feedback">El Asunto debe de tener 1 a 29 digitos y solo pueden contener letras, espacios</div>
              
              </div>
 
                   <!-- FECHA Y HORA FIN -->
                   <div class="form-group" id="grupo__fecha_hora_inicio" >
                    <label>FECHA Y HORA INICIO:</label>
                      <div class="input-group date" data-target-input="nearest">
                          <input type="datetime-local" id="fecha_hora_inicio" name="fecha_hora_inicio"  value="{{ $citaArray['FECHA_INICIO'] }}" class="form-control datetimepicker-input"  data-target="#datetimes" required>
                         
                          <div class="invalid-feedback">Este campo no puede ir vacio</div>
                        </div>
                  </div>
                  


                  <!-- FECHA Y HORA FIN -->
                  <div class="form-group"id="grupo__fecha_hora_fin">
                    <label>FECHA Y HORA FIN:</label>
                      <div class="input-group date" id="fecha_hora_fin" name="fecha_hora_fin" data-target-input="nearest">
                          <input type="datetime-local"  id="fecha_hora_fin" name="fecha_hora_fin"  value="{{ $citaArray['FECHA_FIN'] }}" class="form-control datetimepicker-input" data-target="#datetimes" required>
                          
                          <div class="invalid-feedback">Este campo no puede ir vacio</div>
                        </div>
                  </div>
                

                  <!-- ESTADO DE LA CITA-->
                  <div class="form-group" id="grupo__estado_cita">
                    <label>ESTADO DE LA CITA </label>
                    <select class="form-control" style="width: 100%;" name="estado_cita" id="estado_cita" value="{{ $citaArray['ESTADO_CITA'] }}" required>
                     <option  selected="true" disabled="disabled">{{ $citaArray['ESTADO_CITA'] }}</option>
                      <option value="Confirmada">Confirmada</option>
                      <option Value="Sin Confirmar">Sin confirmar</option>
                      <option Value="Reagendada"> Reagendada</option>
                      <option Value="No se presentó">No se presentó</option>
                      <option Value="Cancelada">Cancelada</option>
                    </select>
                   
                    <div class="invalid-feedback">invalido</div>
                  </div>
                  
                  <x-adminlte-button  class="btn-lg" type="reset"  label="Cancelar" theme="outline-danger" icon="far fa-window-close"/>


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
    'La cita se agrego con éxito.',
    'success'
  )
</script>
@endif
<!-- jQuery -->
<script type="text/javascript" src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>

<script>
  $(document).ready(function(){
    let currForm1 = document.getElementById('formularioactualizar');
      // Validate on submit:
      currForm1.addEventListener('submit', function(event) {
        if (currForm1.checkValidity() === false) {
          event.preventDefault();
          event.stopPropagation();
        }
        currForm1.classList.add('was-validated');
      }, false);
      // Validate on input:
      currForm1.querySelectorAll('.form-control').forEach(input => {
        input.addEventListener(('input'), () => {
          if (input.checkValidity()) {
            input.classList.remove('is-invalid')
            input.classList.add('is-valid');
          } else {
            input.classList.remove('is-valid')
            input.classList.add('is-invalid');
          }
        });
      });
    });
  </script>

@stop











