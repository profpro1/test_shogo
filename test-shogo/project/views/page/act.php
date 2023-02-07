<div>
<?php if($about) {
    require_once 'project/layouts/app/aboutheader.php';
} elseif ($main) {
    require_once 'project/layouts/app/mainheader.php';
    ?>
    <div class="container px-4 px-lg-5">
     <div class="row gx-4 gx-lg-5 justify-content-center">
           <div class="col-md-10 col-lg-8 col-xl-7">

               <div class="post-preview">
                   <p>Слово «бармен» в английском языке имеет, как минимум, два синонима, Что
                        говорит о многогранности профессии. Первый синоним – «бартендер», то
                        есть держате ль бара, наиболее точно передает смысл этой работы, охватывая
                        все необходимые обязанности и полномочия. Кроме того, существует слово
                        «миксолог», означающее специалиста, который посвящает свою деятельность,
                        главным образом, созданию и приготовлению коктейлей.</p>
                </div>



           </div>
        </div>
    </div>
<?php } elseif ($contact) {
    require_once 'project/layouts/app/contactheader.php';
}

?>


</div>
