<head>
	<meta charset="utf-8">
	<link rel="stylesheet" href="index.css?30">
    <title>Bakerella</title>
</head>
<body>
    <main>
        <form method="GET" action="/recipes">
            <fieldset>
                <legend align=center>Выберите ингредиенты</legend>
				<ul class="checkbox-grid">
				<?php foreach ($this->sortedingredients as $sortedingredient) { ?>
				<label><li>
				<input type="checkbox" id="ingredient" name="ingredient[]" 
				value='<?=htmlspecialchars($sortedingredient['id'])?>'
				> <?= htmlspecialchars($sortedingredient['name']) ?>
				</li></label>
				<?php } ?>
				</ul>
				<div align=center>
					<input type="submit" value="Найти рецепты">
				</div>
            </fieldset>
        </form> 
    </main>
</body>