@extends('adminlte::page')

@section('title', 'Inicio')

@section('content_header')
    <center><h1>Bienvenidos</h1></center>
@stop

@section('content')
<div class="container-fluid">
</div><!-- /.container-fluid -->
<div class="content">
   
 <style>
   
.centrado{
margin-left: auto;
margin-right: auto;
width:50%;
height:50%;
}
.centrado{
margin:10px auto;
display:block;

   }    
 </style>
          <img src="{{ asset('logo.jpg') }}" style="width: 800px; height: 700px; border: 2px solid #7FB3D5" class="centrado" alt="mi logo"></p>
   

     
      
     
      
    
@stop

@section('css')
    <link rel="stylesheet" href="/css/admin_custom.css">
@stop

@section('js')
    <script> console.log('Hi!'); </script>
@stop