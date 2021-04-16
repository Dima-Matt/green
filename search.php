<?php
require_once $_SERVER['DOCUMENT_ROOT'] . '/core/init.php';

$search = htmlspecialchars($_GET['search']);

if($search != ''){
    $query = "SELECT `id`, `title` , `detail_text`,`image`, DATE_FORMAT(`date`, '%d.%m.%Y') AS `news_date` FROM `news`".
    "WHERE MATCH(`detail_text`) AGAINST(?)";

    $res = getStmtResult($link, $query, [$search]);
    while ($arRes = mysqli_fetch_assoc($res)){
        $arGen[] = $arRes;
    }

}

$title = 'Поиск по сайту';
$page_content = renderTemplate('search', [
    'arGen' => $arGen,

]);

$general = renderTemplate('layout', [
    'content' => $page_content,
    'title' => $title,
    'menu' => 'search'

]);

echo $general;

