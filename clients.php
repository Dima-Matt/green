<?php

require_once $_SERVER['DOCUMENT_ROOT'] . '/core/init.php';

if ((isset($_POST['name']) && $_POST['name'] != '') &&
    (isset($_POST['surname']) && $_POST['surname'] != '') &&
    (isset($_POST['profession']) && $_POST['profession'] != '') &&
    (isset($_POST['email']) && $_POST['email'] != '') &&
    (isset($_POST['phone']) && $_POST['phone'] != '')){

    $name = $_POST['name'];
    $surname = $_POST['surname'];
    $prof = $_POST['profession'];
    $email = $_POST['email'];
    $tel = $_POST['phone'];

    $result = getStmtResult($link, "INSERT INTO `clients` SET `name` = ?, `surname` = ?, `profession` = ?, `email` = ?, `phone` = ?", [
        $name, $surname, $prof, $email, $tel
    ]);
}
$title = 'Клиенты';

$page_content = renderTemplate('clients', [

]);

$general = renderTemplate('layout', [
    'content' => $page_content,
    'title' => $title,
    'menu' => 'clients'

]);
echo $general;
