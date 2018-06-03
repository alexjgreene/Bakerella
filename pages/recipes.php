<?php
return function ($request, $response, $service, $app) {
	$db = $app->db();
	$allrecipes=[];
	$allnotchosen=[];
	if (isset($_GET['ingredient'])) {
		$data = [];
		$recipes = $db->query('SELECT * FROM recipe')->fetchAll();
		foreach ($recipes as $recipe){
			$allingredients=[];
			$notchosen=[];
			if (!in_array($recipe['id'], $data)) {
				$data[]= $recipe['id'];
				
				$recipeid = $recipe['id'];
				
				$query2 = $db->prepare(
					'SELECT ingredient.id, ingredient.name, recipe_ingredient.amount, 
					recipe_ingredient.measurement FROM recipe_ingredient
					INNER JOIN ingredient ON ingredient.id = recipe_ingredient.ingredient_id
					WHERE recipe_ingredient.recipe_id = :recipeid
				');
				$query2->execute([
					':recipeid' => $recipeid
				]);
				$ingrinrecipes = $query2->fetchAll();
				$k1=0;
				$k2=0;
				foreach ($ingrinrecipes as $ingrinrecipe){
					$k1 = $k1 + 1;
					$chosen=[];
					foreach ($_GET['ingredient'] as $value) {
						if($ingrinrecipe['id'] == $value){
							$k2 = $k2 + 1;
							$allingredients[]=$ingrinrecipe;
						}
						$chosen[]=$value;
					};
				};
				if($k1 - $k2 <= 2){
					$recipe['ingredients']=$allingredients;
					foreach ($ingrinrecipes as $ingrinrecipe){
						if(!in_array($ingrinrecipe['id'], $chosen)){
							$notchosen[]=$ingrinrecipe;
						}
					};
					$recipe['allnotchosen']=$notchosen;
					$allrecipes[]=$recipe;
				};
			};
		};
		if(empty($allrecipes)){
			$message = 'Рецептов по выбранным ингредиентам не найдено!';
			$service->render(
				'views/recipes.php',
				[
					'allrecipes' => $allrecipes,
					'message' => $message
				]
			);
		} else {
			$service->render(
				'views/recipes.php',
				[
					'allrecipes' => $allrecipes,
					'message' => ''
				]
			);
		}
	} else {
		$recipes = $db->query('SELECT * FROM recipe')->fetchAll();
		foreach ($recipes as $recipe){
			$allingredients=[];
			$recipeid = $recipe['id'];		
			$query2 = $db->prepare(
				'SELECT ingredient.id, ingredient.name, recipe_ingredient.amount, 
				recipe_ingredient.measurement FROM recipe_ingredient
				INNER JOIN ingredient ON ingredient.id = recipe_ingredient.ingredient_id
				WHERE recipe_ingredient.recipe_id = :recipeid
			');
			$query2->execute([
				':recipeid' => $recipeid
			]);
			$ingrinrecipes = $query2->fetchAll();
			foreach ($ingrinrecipes as $ingrinrecipe){
				$allingredients[]=$ingrinrecipe;
			};
			$recipe['ingredients']=$allingredients;
			$recipe['allnotchosen']='';
			$allrecipes[]=$recipe;
		};
		$service->render(
			'views/recipes.php',
			[
				'allrecipes' => $allrecipes
			]
		);
	};
};