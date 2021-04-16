<div id="header-featured">
    <div id="banner-wrapper">
        <div id="banner" class="container">
            <? if(is_array($main)):?>
                <? foreach ($main as $value):?>
                    <h2><?=$value['title'];?></h2>
                    <p><?=$value['text'];?></p>
                <?endforeach;?>
            <?else:?>
                <p>not array</p>
            <?endif;?>
            <a href="https://helix.su/temp/universal/3140-lawnlike-mnogofunkcionalnyy-shablon-html5.html" class="button">Скачать шаблон</a>
        </div>
    </div>
</div>
<div id="wrapper">
    <div id="featured-wrapper">
        <div id="featured" class="extra2  container">
            <div class="main-title">
                <h2>Ниже будет контент</h2>
                <span class="byline">Не прямо на этой строке, а ещё ниже</span>
            </div>


            <? for ($i = 0; $i < count($mass); $i = $i+2):?>
                <div class="extra2 margin-btm container">
                    <div class="ebox1"> 

                            <img class="img_news" src="<?=IMG_PATH;?>/<?=$mass[$i]['image'];?>">

                        <div class="title">
                            <h2><?=$mass[$i]['title'];?></h2>
                            <span class="byline"><?=$mass[$i]['preview_text'];?></span>
                        </div>
                        <p><?=$mass[$i]['detail_text'];?> </p>
                        <a href="detail.php?id=<?=$mass[$i]['id'];?>" class="button">Подробнее</a>
                    </div>

                    <div class="ebox2"> 


                                <img class="img_news" src="<?=IMG_PATH;?>/<?=$mass[$i + 1]['image'];?>">
                        <div class="title">
                            <h2><?=$mass[$i + 1]['title'];?></h2>
                            <span class="byline"><?=$mass[$i + 1]['preview_text'];?></span>

                        </div>
                        <p><?=$mass[$i + 1]['detail_text'];?></p>
                        <a href="detail.php?id=<?=$mass[$i + 1]['id'];?>" class="button">Подробнее</a>
                    </div>





                </div>
            <? endfor;?>

        </div>
    </div>
</div>
