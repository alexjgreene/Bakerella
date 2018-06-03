<?php
return function ($request, $response, $service, $app) {
	$db = $app->db();
	$ingredients = $db->query('SELECT * FROM ingredient')->fetchAll();
	$ingredientsnames=[];
	foreach ($ingredients as $ingredient) {
		$ingredientsnames[] = $ingredient['name'];
	}
	sort($ingredientsnames);
	foreach ($ingredientsnames as $ingredientname) {
		foreach ($ingredients as $ingredient) {
			if($ingredientname == $ingredient['name']){
				$sortedingredients[]=$ingredient;
			};
		};
	};
    $service->render(
	'views/main.php',
		[
			'sortedingredients' => $sortedingredients	
		]
	);
};