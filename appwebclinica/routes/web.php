<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Route\Http;
use App\Http\Controllers\Admin\HomeController;
use App\Http\Controllers\Admin\consultacontroller;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('auth.login');
});

Route::middleware(['auth:sanctum', 'verified'])->get('/admin', function () {
    return view('admin.index');
})->name('dash');

Route::get('/dash','App\Http\Controllers\dashboardController@index');

Route::get('/dash/crud', function () {
    return view('crud.index');
});

Route::get('/dash/crud/create', function () {
    return view('crud.create');
});

route::get('/add_paciente', function() {
    return view('admin.add_paciente');
});

route::get('/paciente','App\Http\Controllers\PacienteController@index');
route::post('/paciente','App\Http\Controllers\PacienteController@store');
route::get('/paciente/edit/{id}','App\Http\Controllers\PacienteController@edit');
route::put('/paciente/upd/{id}','App\Http\Controllers\PacienteController@update');
route::delete('/paciente/delete/{id}','App\Http\Controllers\PacienteController@destroy');

Route::get('/citas', function () {
    return view('admin.cita');
});

Route::get('/registrarcita', function () {
    return view('admin.registrarcita');
});


// rutas del modulo citas
Route::get('/cita','App\Http\Controllers\CitasController@citasmostar');
Route::post('/cita','App\Http\Controllers\CitasController@citasregistar');
route::get('/cita/edit/{id}','App\Http\Controllers\CitasController@edit');
route::put('/cita/upd/{id}','App\Http\Controllers\CitasController@update');
route::delete('/cita/delete/{id}','App\Http\Controllers\CitasController@destroy');


Route::get('/clinica', function () {
    return view('dash.clinica');
});

Route::get('/clinicabuscar', function () {
    return view('dash.clinicabuscar');
});

Route::post('/clinica','App\Http\Controllers\controllerclinica@clinicaregistrar');
Route::get('/clinicabuscar','App\Http\Controllers\controllerclinica@clinicamostrar');

