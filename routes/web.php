<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\OrmawaController;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\LogoutController;
use Illuminate\Support\Facades\Auth;

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

Route::get('/', [App\Http\Controllers\OrmawaController::class, 'index'])->name('ormawa');

Route::middleware('guest')->group(function () {
    Route::get('/login', [App\Http\Controllers\LoginController::class, 'login'])->name('login');
    Route::post('/loginuser', [App\Http\Controllers\LoginController::class, 'loginuser'])->name('login.user');
    Route::get('/register', [App\Http\Controllers\LoginController::class, 'register'])->name('register');
    Route::post('/registeruser', [App\Http\Controllers\LoginController::class, 'registeruser'])->name('register.user');
});

Route::middleware('auth')->group(function () {
    Route::get('/form', [App\Http\Controllers\OrmawaController::class, 'form'])->name('ormawa.form');
    Route::post('/form', [App\Http\Controllers\OrmawaController::class, 'store'])->name('ormawa.form.store');
    Route::post('/skimform', [App\Http\Controllers\OrmawaController::class, 'detail'])->name('ormawa.skim.store');
    Route::post('/logout', [App\Http\Controllers\LogoutController::class, '__invoke'])->name('logout');
});