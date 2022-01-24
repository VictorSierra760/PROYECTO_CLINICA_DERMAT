@extends('adminlte::page')

@section('title', 'Consulta del Paciente')

@section('content_header')
<div class="card text-info alert-primary">
     <center class="card">
       <h1 class="">CONSULTAS DE LOS PACIENTES</h1> 
     </center> 
</div>

   
@stop
{{$i = 1}}
@section('content')


   <div class="card text-secondary">
              <div class="card-header">
                <h3 class="card-title">CONSULTAS DE LOS PACIENTES DE LA CLINICA</h3><BR></BR>
                <button class="btn btn-outline-info">
    <a href="addconsulta" class="btn btn-outline-primary">NUEVA CONSULTA</a>
  </button>
                
                
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


    <div class="container">
      <div class="table-responsive" >
  <table class="table table-fluid table-striped table-hover"  id="myTable">
  <caption><h3>Lista de Expedientes</h3></caption>
  <thead>
    <tr>
    <td scope="col" >Eliminar</td>
    <td scope="col" >Editar</td>
   
      <td scope="col" >Nº</td>
    
    <td scope="col" >PRI_NOMBRE</td>
    <td scope="col">SEG_NOMBRE</td>
    <td scope="col">EDAD</td>
                    <td scope="col">TIPO_CONSULTA</td>
                    <td scope="col">ESTATURA</td>
                    <td scope="col">SATO2</td>
                    <td scope="col">PESO</td>
                    <td scope="col">TEMPERATURA</td>
                    <td scope="col">PRESIÓN_ALTERIAL</td>
                    <td scope="col">FRECU_CARDIACA</td>
                    <td scope="col">FRECU_RESPIRA</td>
                    <td scope="col">CIE</td>
                    <td scope="col">NOMBRE_DIAGNOSTICO</td>
                    <td scope="col">NOMBRE_EXAMEN</td>
                    <td scope="col">MEDICAMENTO</td>
                    <td scope="col">MARCA</td>
                    <td scope="col">MENARQUIA</td>
                    <td scope="col">EMABARAZOS</td>
                    <td scope="col">PLANIFICACION</td>
                    <td scope="col">FECHA_ULTIMA_MESTRU</td>
                    <td scope="col">ANT_PATOLOGICO</td>
                    <td scope="col">TIPO_ANTECEDENTE</td>
                    <td scope="col">ENFERMEDAD</td>
                    <td scope="col">ALERGIAS</td>
                    <td scope="col">HABITOS</td>
                    <td scope="col">CONSUMO_MEDICAMENTO</td>
                    <td scope="col">IMAGEN</td>
                    <td scope="col">OBSERVACIONES</td>
                    <td scope="col">TOTAL</td>
                    
    </tr>
  </thead>
  <tbody>
     @foreach($consultaArray as $consulta)
  <tr class="odd">
  <td scope="col" >
    <div class="btn-group">

    <!-- Button trigger moda
    l -->
<button type="button" class="btn btn-outline-danger" data-bs-toggle="modal" data-bs-target="#modal-delete-{{$consulta['COD_CONSULTA']}}">
  Eliminar
</button>


      </div>
    </td>
    <td scope="col" >
    <div class="btn-group">
   
     <a class="btn btn-outline-warning" href="{{route('consulta.edit', $consulta['COD_CONSULTA'])}}">Editar</a>
    </td>
    
    <td>{{ $i++}}</td>  
                    <td>{{ $consulta['PRI_NOMBRE']}}</td>
                    <td>{{ $consulta['SEG_NOMBRE']}}</td>
                    <td>{{ $consulta['EDAD']}}</td>
                    <td>{{ $consulta['TIPO_CONSULTA']}}</td>
                    <td>{{ $consulta['ESTATURA']}}</td>
                    <td>{{ $consulta['SATO2']}}</td>
                    <td>{{ $consulta['PESO']}}</td>
                    <td>{{ $consulta['TEMPERATURA']}}</td>
                    <td>{{ $consulta['PRESIÓN_ALTERIAL']}}</td>
                    <td>{{ $consulta['FRECUENCIA_CARDIACA']}}</td>
                    <td>{{ $consulta['FRECUENCIA_RESPIRATORIA']}}</td>
                    <td>{{ $consulta['CIE']}}</td>
                    <td>{{ $consulta['NOMBRE_DIAGNOSTICO']}}</td>
                    <td>{{ $consulta['NOMBRE_EXAMEN']}}</td>
                    <td>{{ $consulta['MEDICAMENTO']}}</td>
                    <td>{{ $consulta['MARCA']}}</td>
                    <td>{{ $consulta['MENARQUIA']}}</td>
                    <td>{{ $consulta['EMABARAZOS']}}</td>
                    <td>{{ $consulta['PLANIFICACION']}}</td>
                    <td>{{ $consulta['FECHA_ULTIMA_MESTRU']}}</td>
                    <td>{{ $consulta['ANT_PATOLOGICO']}}</td>
                    <td>{{ $consulta['TIPO_ANTECEDENTE']}}</td>
                    <td>{{ $consulta['ENFERMEDAD']}}</td>
                    <td>{{ $consulta['ALERGIAS']}}</td>
                    <td>{{ $consulta['HABITOS']}}</td>
                    <td>{{ $consulta['CONSUMO_MEDICAMENTO']}}</td>
                    <td>{{ $consulta['IMAGEN']}}</td>
                    <td>{{ $consulta['OBSERVACIONES']}}</td>
                    <td>{{ $consulta['TOTAL']}}</td>
                  </tr>
                  @include('admin.delete')
                
                  @endforeach

  </tbody>
</table>
</div>
</div>

@stop


@section('css')
    <link rel="stylesheet" href="/css/admin_custom.css">
    <a href="https://cdn.datatables.net/1.11.3/css/jquery.dataTables.min.css"></a>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
@stop

@section('js')
<script>
  $(document).ready( function () {
    $('#myTable').DataTable();
} );
</script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <script> console.log('Hi!'); </script>

<script>
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


  <script>
    var myModal = document.getElementById('myModal')
var myInput = document.getElementById('myInput')

myModal.addEventListener('shown.bs.modal', function () {
  myInput.focus()
})
  </script>

<script>
    var myModal = document.getElementById('myModal')
var myInput = document.getElementById('myInput')

myModal.addEventListener('shown.bs.modal', function () {
  myInput.focus()
})
  </script>


  <script>
    var exampleModal = document.getElementById('exampleModal')
exampleModal.addEventListener('show.bs.modal', function (event) {
  // Button that triggered the modal
  var button = event.relatedTarget
  // Extract info from data-bs-* attributes
  var recipient = button.getAttribute('data-bs-whatever')
  // If necessary, you could initiate an AJAX request here
  // and then do the updating in a callback.
  //
  // Update the modal's content.
  var modalTitle = exampleModal.querySelector('.modal-title')
  var modalBodyInput = exampleModal.querySelector('.modal-body input')

  modalTitle.textContent = 'New message to ' + recipient
  modalBodyInput.value = recipient
})
  </script>
 

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
<script
  src="https://code.jquery.com/jquery-3.6.0.js"
  integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
  crossorigin="anonymous"></script>
  
  <script src="https://cdn.datatables.net/1.11.3/js/jquery.dataTables.min.js"></script>
@stop
