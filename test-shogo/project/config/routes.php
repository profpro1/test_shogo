<?php
use \Core\Route;

return [
    new Route('','page','act'),
    new Route('/vbar/about/','page','actAbout'),
    new Route('/vbar/contact/','page','actContact'),
    new Route('/vbar/listcocktails/','page','listcocktails'),
    new Route('/vbar/cocktails','page','cocktails'),
    new Route('/vbar/cocktail/:id','page','onecocktail'),
    new Route('/vbar/reg/','page','reg'),
    new Route('/user/reg/','user','regaction'),

];

	
