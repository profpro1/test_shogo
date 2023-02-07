<?php
	namespace Project\Models;
	use \Core\Model;

    class Page extends Model
    {
        public function getById($id)
        {
            return $this->findOne("SELECT cockteils.*,recipe.* FROM cockteils LEFT JOIN recipe ON cockteils.id=recipe.cocktail_id WHERE cockteils.id=$id");
        }

        public function getAll()
        {
            return $this->findMany("SELECT * FROM cockteils");
        }
    }

