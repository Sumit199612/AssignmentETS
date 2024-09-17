<?php

use App\Http\Controllers\UserController;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::match(['get', 'post'], 'user-register', [UserController::class, 'userRegister'])->name('user-register');
Route::match(['get', 'post'], 'user-login', [UserController::class, 'userLogin'])->name('user-login');
Route::get('user-list', [UserController::class, 'index'])->name('user-list');
Route::get('export-excel', [UserController::class, 'exportCsv'])->name('export-excel');
Route::get('export-csv', [UserController::class, 'exportCsv'])->name('export-csv');
Route::get('export-pdf', [UserController::class, 'exportPdf'])->name('export-pdf');
Route::get('cities/{state}', [UserController::class, 'getCity']);

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
