<div id="detail">

  <div id="top_detail">

    <?foreach($arGen as $value):?>
    <div id="detail_image">
        <img class="image_detail" src="<?=IMG_PATH;?>/<?=$value['image'];?>">
    </div>
    <?endforeach;?>

    <?foreach ($arGen as $value):?>
    <div id="title_and_preview_text_detail">
        <h1 id="title_detail"><?=$value['title']?></h1>
        <p id="preview_text_detail"><?=$value['preview_text']?></p>
    </div>
    <?endforeach;?>

  </div>
  <div id="bottom_detail">
      <?foreach ($arGen as $value):?>
      <div id="detail_text_detail"><?=$value['detail_text']?></div>
      <div id="date_detail"><b><?=$value['date']?></b></div>
      <?endforeach;?>
  </div>


</div>


