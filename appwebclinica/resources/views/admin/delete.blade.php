<!-- Modal -->
<div class="modal fade" id="modal-delete-{{$consulta['COD_CONSULTA']}}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg">

  <form action="{{Route('consulta.delete', $consulta['COD_CONSULTA'])}}" method="post" >
      @csrf
      @method('delete')
      <div class="btn-group">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">ELIMINAR CONSULTA</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        Deseas eliminar la consulta del paciente {{$consulta['PRI_NOMBRE']}} {{$consulta['SEG_NOMBRE']}} si eliminas la consulta se perderan registros de la consulta del paciente.!
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
        <button type="submit" class="btn btn-outline-danger ">Eliminar Consulta</button>
      </div>
    </div>
    </form>
  </div>
</div>