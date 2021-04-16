<?php
require_once $_SERVER['DOCUMENT_ROOT'] . '/core/init.php';
$id = $_GET['id'];

$res = getStmtResult($link, "SELECT * FROM `news` WHERE `id` = ?", [$id]);
$arRes = mysqli_fetch_all($res, MYSQLI_ASSOC);



$title = 'Подробнее';

$page_content = renderTemplate('detail', [
    'arGen' => $arRes
]);

$general = renderTemplate('layout', [
    'content' => $page_content,
    'title' => $title,
]);

echo $general;