<?php
require_once __DIR__ . '/vendor/autoload.php';

$klein = new \Klein\Klein();

$klein->respond(function ($request, $response, $service) {
    $service->layout('views/layout.php');
});

$klein->respond(
	['GET','POST'],
	'/',
	require('pages/main.php')
);

$klein->respond(
	['GET','POST'],
	'/bakerella',
	require('pages/main.php')
);

$klein->respond(
	['GET','POST'],
	'/recipes',
	require('pages/recipes.php')
);

$klein->app()->register('db', function () {
    $params = require('db.php');
    return new PDO($params['connection'], $params['username'], $params['password']);
});

$klein->dispatch();