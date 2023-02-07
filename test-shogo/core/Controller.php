<?php
	namespace Core;
	
	class Controller
	{
		protected $layout = 'default';
//        private $title;

        protected function render($view, $data = []) {
			return new Page($this->layout, $this->title, $view, $data);
		}
	}
//    $this->title,