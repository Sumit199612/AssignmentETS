<?php

use App\Http\Controllers\API\ApiAuthController;
use App\Http\Controllers\API\ApiUserController;
use App\Http\Controllers\API\RolesController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::prefix('v1/')->group(function () {
    Route::post('user-login', [ApiAuthController::class, 'userLogin'])->name('user-login');
    Route::post('user-register', [ApiAuthController::class, 'userRegister'])->name('user-register');
    Route::group(['middleware' => ['auth:api']], function() {
        Route::get('users', [ApiUserController::class, 'userList'])->name('users');
        Route::get('roles', [RolesController::class, 'roleList'])->name('roles');
        Route::post('create-role', [RolesController::class, 'createRole'])->name('create-role');
        Route::post('update-role', [RolesController::class, 'updateRole'])->name('update-role');
        Route::post('delete-role', [RolesController::class, 'deleteRole'])->name('delete-role');
    });
});
