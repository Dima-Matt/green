<?php
require_once $_SERVER['DOCUMENT_ROOT'] . '/core/init.php';
require_once $_SERVER['DOCUMENT_ROOT'] . '/main.php';



$title = 'Главная страница';

$page_content = renderTemplate('main', [
    'mass' => $arSup,
    'main' => $arMain
]);

$general = renderTemplate('layout', [
    'content' => $page_content,
    'title' => $title,

    'menu' => 'main',



]);
echo $general;




