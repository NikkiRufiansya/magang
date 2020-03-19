<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It is a breeze. Simply tell Lumen the URIs it should respond to
| and give it the Closure to call when that URI is requested.
|
*/

$router->get('/', function () use ($router) {
    return $router->app->version();
});
$router->get('/pengguna', 'PenggunaController@index');
$router->get('/pengguna/limit', 'PenggunaController@limit');
$router->get('/pengguna/conditions','PenggunaController@conditions');
$router->get('/pengguna/{id}', 'PenggunaController@show');
$router->post('/pengguna/save', 'PenggunaController@store');
$router->post('/pengguna/{id}/update', 'PenggunaController@update');
$router->post('/pengguna/{id}/delete', 'PenggunaController@destroy');