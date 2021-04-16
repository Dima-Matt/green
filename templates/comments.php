<div id="wrapper">

<!--    <div id="featured-wrapper">-->
<div class="comment_flex">
    <div class="div_comments">
    <?foreach ($arComm as $value):?>
        <div class="comments">
          <a href="#"><img src="images/userpic.gif" width="40" height="40" alt="" class="img_comment" ></a>
          <p><a href="#"><?=$value['name'];?>&nbsp;</a>says:<br>
              <?=$value['date'];?></p>
          <p><?=$value['text'];?></p>
        </div>
        <?endforeach;?>
        <div class="small_pages">
            <div class="small">
            <small><p><b>страница <?=$currentPage;?></b></p></small>
        </div>

        <div class="pages">
        <div>
        <? if($currentPage == 1):?>
            <span><a href="?page=<?=$nextPage;?>"><b><span class="decoration_page"><?=$nextPage;?></span> >></b></a></span>
        <?endif;?>
        </div>

        <div>
            <?if($currentPage !== 1 && $currentPage !== $lastPage):?>
                <span class="prev_page"><a href="?page=<?=$prevPage;?>"><b><< <span class="number_page"><?=$prevPage;?></span></b></a></span>
                <span><a href="?page=<?=$nextPage;?>"><b><span class="number_page"><?=$nextPage;?></span> >></b></a></span>
            <?endif;?>
        </div>

        <div>
        <?if($currentPage == $lastPage):?>
            <span><a href="?page=<?=$prevPage;?>"><b><< <span class="decoration_page"><?=$prevPage;?></span></b></a></span>
        <?endif;?>
        </div>

        </div>

        </div>
    </div>
        <div class="form_comm">
            <form id="form_comm" method="post">
                <label for="name_comm">Ваше имя:</label><br>
                <input id="name_comm" type="text" name="name_comm" placeholder="Введите имя"><br><br>
                <label for="text_comm">Ваше сообщение:</label><br>
                <textarea id="textarea" name="text_comm" cols="50" rows="20">

                </textarea>
                <input type="submit" value="Отправить" name="textarea">
            </form>
        </div>
</div>



</div>

