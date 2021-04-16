<?php
require_once $_SERVER['DOCUMENT_ROOT'] . '/core/init.php';

$res = mysqli_query($link, "SELECT * FROM `news`");

$arSup = mysqli_fetch_all($res, MYSQLI_ASSOC);

$main = mysqli_query($link, "SELECT * FROM `main`");
$arMain = mysqli_fetch_all($main, MYSQLI_ASSOC);