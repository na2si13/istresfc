<?php

use App\Http\Controllers\HomeController;
use TCG\Voyager\Http\Controllers\VoyagerAuthController;
use TCG\Voyager\Http\Controllers\VoyagerBaseController;

use Doctrine\DBAL\Schema\Index;

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

// ROUTE DES PAGE NON ADMIN
Route::get('/', [HomeController::class, 'index'])->name('index');
Route::get('/national3', [HomeController::class, 'national3'])->name('national3');
Route::get('/pageContact', [HomeController::class, 'pageContact'])->name('pageContact');
Route::get('/U19', [HomeController::class, 'U19'])->name('U19');
Route::get('/U18', [HomeController::class, 'U18'])->name('U18');
Route::get('/U17', [HomeController::class, 'U17'])->name('U17');
Route::get('/U16_R2', [HomeController::class, 'U16_R2'])->name('U16_R2');
Route::get('/U16_D1', [HomeController::class, 'U16_D1'])->name('U16_D1');
Route::get('/U15_D1', [HomeController::class, 'U15_D1'])->name('U15_D1');
Route::get('/U14_D1', [HomeController::class, 'U14_D1'])->name('U14_D1');
Route::get('/reserve_D3', [HomeController::class, 'reserve_D3'])->name('reserve_D3');
// ROUTE POUR AFFICHER LES ARTICLES DANS LA PAGE afficheArticle
Route::get('/afficheArticle/{id}', 'HomeController@afficheArticle');

// ROUTE POUR LES EMAILS
Route::post('send/sendemail', 'MailController@sendemail');

// ROUTE POUR LE COTE ADMINISTRATEUR
Route::group(['prefix' => 'admin'], function () {
    Route::get('dashboard', [VoyagerAuthController::class, 'login'])->name('admin');
    Voyager::routes();
});
