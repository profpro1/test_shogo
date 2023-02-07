<?php include_once 'project/layouts/app/cocktailheader.php'?>
<div class="container cocktail ">
    <?php foreach ($list as $cocktail):?>
    <div class="border">
        <div class="wrap">
            <div class="product-wrap">
                <a href="#"><img src="/project/webroot/img/cockteils/<?=$cocktail['img']?>"></a>
            </div>
            <div class="loop-action">
                <a href="/vbar/cocktail/<?=$cocktail['id']?>" class="add-to-cart">Быстрый просмотр</a>

            </div>
        </div>
        <div class="product-info">
            <h3 class="product-title"><?=$cocktail['name']?></h3>
            <div class="price">Состав: <?=$cocktail['alco']?>
                <?=$cocktail['juice']?>
                <?=$cocktail['sirop']?>
                <?=$cocktail['additionally']?>
            </div>
            <div class="stars">Оценка: <?=$cocktail['grade']?>/5</div>
        </div>
    </div>
    <?php endforeach;?>
</div>
<div class="container"><a href="/vbar/listcocktails/">Посмотреть в виде таблицы</a></div>



