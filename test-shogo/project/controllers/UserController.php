<?php

namespace project\controllers;
use Core\Controller;
use Project\Models\User;

class UserController extends Controller
{
    public function regaction() {

        $user = (new User)->registrate($_POST);
         return $this->render('user/reg');

    }


}