<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Route\Http;
use App\Http\Controllers\Admin\HomeController;
use App\Http\Controllers\Admin\consultacontroller;
use App\Http\Controllers\Admin\addconsultacontroller;

/*
|--------------------------------------------------------------------------
| Web Routes de adminlt3
|--------------------------------------------------------------------------
*/
Route::get('', [HomeController::class,'index']);

Route::get('/consulta', [consultacontroller::class,'consulta']);

Route::post('/consulta', [consultacontroller::class,'store'])->name('consulta.store');

Route::delete('/consulta/{id}', [consultacontroller::class,'delete'])->name('consulta.delete');

Route::put('/consulta-update', [consultacontroller::class,'update'])->name('consulta.update');

Route::get('/consulta/edit/{id}', [consultacontroller::class,'edit'])->name('consulta.edit');


    
Route::get('/addconsulta', [addconsultacontroller::class,'adicionarconsulta']);

Route::get('/galeria', function () {
    return view('admin.galeria');
});

Route::get('/agenda', function () {
    return view('admin.agenda');
});

Route::get('/paciente', function () {
    return view('admin.paciente');
});

Route::get('/receta', function () {
    return view('admin.recetas');
});

Route::get('/examen', function () {
    return view('admin.examenes');
});

Route::get('/reportes/pacientes', function () {
    return view('admin.reportespaciente');
});

Route::get('/reportes/liquidaciones', function () {
    return view('admin.reportesliquidacion');
});

Route::get('/reportes/enfermedades', function () {
    return view('admin.reportesenfermedades');
});

Route::get('/reportes/ingresos', function () {
    return view('admin.reportesingresos');
});











