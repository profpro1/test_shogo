<?php require_once 'project/layouts/app/mainheader.php';?>
<div class="container cocktail ">
        <div class="border">
            <div class="wrap">
                <div class="product-wrap maincockteil">
                    <img src="/project/webroot/img/cockteils/<?=$cocktail['img']?>">
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

</div>
<div class="container">
<?=$cocktail['recipe'];?>
</div>
