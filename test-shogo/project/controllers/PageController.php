<?php

namespace project\controllers;
use Core\Controller;
use Project\Models\Page;

class PageController extends Controller
{
    public function act()
    {
        $this->title = 'vbar';
        return $this->render('page/act',['main'=>true]);
    }

    public function actAbout() {
        $this->title = 'vbar';
        return $this->render('page/act',['about'=>true]);
    }
    public function actContact() {
        $this->title = 'vbar';
        return $this->render('page/act',['contact'=>true]);
    }

    public function listcocktails() {
        $this->title = 'vbar';
        $list = (new Page)->getAll();
        return $this->render('page/licstcocktails',['list'=>$list]);
    }

    public function cocktails() {
        $this->title = 'Коктейли';
        $list = (new Page)->getAll();

        return $this->render('page/cocktails',['list'=>$list]);
    }
    public function onecocktail($params) {
        $this->title = 'vbar';
        $cocktail = (new Page)->getById($params['id']);
        return $this->render('page/onecocktail',['cocktail'=>$cocktail]);
    }

    public function reg() {
        return $this->render('user/reg');
    }
}
