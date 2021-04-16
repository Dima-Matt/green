
<div id="wrapper">
    <div id="featured_wrapper_search">

        <div id="featured_search" class="extra2  container">
                <h1>Результаты поиска</h1>

                <div class="extra2 margin-btm container">
                    
                    <?if(!empty($arGen)):?>
                    <?foreach ($arGen as $res):?>
<!--                    <div class="ebox1">-->

                        <div class="title">
                            <img class="img_search" src="<?=IMG_PATH;?>/<?=$res['image'];?>">
                            <h2><?=$res['title'];?></h2>
                        </div>
                        <p><?=$res['detail_text'];?> </p>
                        <a href="detail.php?id=<?=$res['id'];?>" class="button">Подробнее</a>
<!--                    </div>-->
                    <?endforeach;?>
                    <?else:?>
                        Ничего не найдено
                    <?endif;?>

                </div>


        </div>
    </div>
</div>