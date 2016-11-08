<?php
	require_once 'core/model.php';
	require_once 'core/view.php';
	require_once 'core/controller.php';
	require_once 'core/route.php';
	require_once 'core/SQLConnector.php';
	$video_path = "application/video/test.mp4";
	$DataBase = new SQLConnector();
	$db = $DataBase->get_db();
	Route::start();
?>