<!DOCTYPE>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title><?=$title;?></title>
    <meta name="keywords" content="" />
    <meta name="description" content="" />
    <link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900" rel="stylesheet" />
    <link href="/public/default.css" rel="stylesheet" type="text/css" media="all" />
    <link href="/public/fonts.css" rel="stylesheet" type="text/css" media="all" />

    <!--[if IE 6]><link href="default_ie6.css" rel="stylesheet" type="text/css" /><![endif]-->
    <script type="text/javascript" src="js/jquery-1.3.2.min.js"></script>
    <script type="text/javascript" src="js/radius.js"></script>
    <script type="text/javascript" src="js/script.js"></script>
</head>
<body>

<div id="header-wrapper">
    <div id="header" class="container">
        <div id="logo">
            <h1><span class="fa fa-bolt"></span><a href="https://helix.su/temp/universal/3140-lawnlike-mnogofunkcionalnyy-shablon-html5.html">LawnLike</a></h1>
        </div>
        <div class="my_menu" id="menu">
            <ul>
                <li<?if($menu == 'main'):?> class="active current_page_item"<?endif;?>><a href="/">Главная</a></li>
                <li<?if($menu == 'clients'):?> class="active current_page_item"<?endif;?>><a href="/clients.php">Клиенты</a></li>
                <li<?if($menu == 'search'):?> class="active current_page_item"<?endif;?>><a href="/search.php">Поиск по сайту</a></li>
                <li<?if($menu == 'comments'):?> class="active current_page_item"<?endif;?>><a href="/comments.php">Отзывы</a></li>

            </ul>
        </div>

    </div>

</div>
<div id="search" class="search_my">
    <form id="search_form" name="search_form" method="get" action="/search.php">
                <span>
                   <input type="search" name="search" id="input_search" class="input_search" placeholder="Поиск по сайту" value="<?=$_GET['search'];?>">
                </span>
        <input type="submit" name="button" value="Найти">
    </form>
</div>

        <?=$content;?>

<div id="copyright" class="container">

    <p>&copy; Untitled. All rights reserved. | Photos by
        <a href="http://fotogrph.com/">Fotogrph</a>
        | Design by <a href="http://templated.co" rel="nofollow">TEMPLATED</a>.</p>
</div>

</body>
</html>

