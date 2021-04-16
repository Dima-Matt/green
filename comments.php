<?php

require_once $_SERVER['DOCUMENT_ROOT'] . '/core/init.php';

if ((isset($_POST['name_comm']) && $_POST['name_comm'] != '') &&
    (isset($_POST['text_comm']) && $_POST['text_comm'] != '')){

    $name = $_POST['name_comm'];
    $text = $_POST['text_comm'];
}

$res_comm = getStmtResult($link, "INSERT INTO `response` SET `name` =?, `text` = ?, `date` = NOW()", [
    $name, $text
]);


$num = 3; //количество новостей на странице

$where = '';

$resTotal = getStmtResult($link, "SELECT * FROM `response`");

$total = mysqli_num_rows($resTotal);

$totalStr = intval(ceil($total / $num)); // общее число страниц
$page = intval($_GET['page']);  // получение номера страницы из адресной строки  intval() - приводит к числу

if($page <= 0){
    $page = 1;
}elseif ($page > $totalStr){
    $page = $totalStr;
}

$offset = $page * $num - $num; //с какой новости начинать


    $param = [$offset, $num];

$com ="SELECT * FROM `response` LIMIT ?, ?";

$comm = getStmtResult($link, $com, $param);
$arComm = mysqli_fetch_all($comm, MYSQLI_ASSOC);

$prevPage = '';
if($page > 1){
    $prevPage = $page - 1;
}

$nextPage = '';
if($page < $totalStr){
    $nextPage = $page + 1;
}

//$is_nav = ($totalStr > 1) ? true: false;

$title = 'Отзывы';

$page_content = renderTemplate('comments', [
    'arComm' => $arComm,
    'prevPage' => $prevPage,
    'nextPage' => $nextPage,
    'currentPage' => $page,
    'lastPage' => $totalStr
]);

$general = renderTemplate('layout', [
    'content' => $page_content,
    'title' => $title,
    'menu' => 'comments'

]);
echo $general;
