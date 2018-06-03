<head>
	<meta charset="utf-8">
	<link rel="stylesheet" href="index.css?64">
    <title>Bakerella - Recipes</title>
</head>
<body>
    <main>
        <form method="GET">
            <fieldset>
                <legend align=center>Рецепты</legend>
				<?php if ($this->message) { ?>
					<p align=center><label>
						<?= htmlspecialchars($this->message) ?>
					</label></p>
					<div class="notfound"></div>
				<?php } ?>
				<ul id="rec" align=center class="recipes-grid" name="recipe">
				<?php foreach ($this->allrecipes as $recipe) { ?>
					<table>
						<tr>
							<td valign=top width=350><label>
							<p><img src="<?= htmlspecialchars($recipe['photo'])?>" width=300></p><br>
							<p class=method>Ингредиенты:</p>
							<p><?php foreach ($recipe['ingredients'] as $ingredient){
										echo "<p>".
										htmlspecialchars ($ingredient['amount']).' '
										.htmlspecialchars ($ingredient['measurement']).' '
										.htmlspecialchars ($ingredient['name'])
										."</p>";
									};
									if($recipe['allnotchosen']){
										foreach($recipe['allnotchosen'] as $missingitemid){
											?><span class="<?php
													echo 'missing';
											?>"><?php
											echo "<p>".
											htmlspecialchars ($missingitemid['amount']).' '
											.htmlspecialchars ($missingitemid['measurement']).' '
											.htmlspecialchars ($missingitemid['name'])
											."</p>";
										};
									}; ?>
							</label></td>
							<td valign=top width=640><label>
							<p class=recipehead><?= htmlspecialchars($recipe['name']) ?></p>
							<p>Время приготовления: <?= htmlspecialchars($recipe['cook_time']) ?></p>
							<p>Порции: <?= htmlspecialchars($recipe['serving_size']) ?></p>
							<p>Сложность: <?= htmlspecialchars($recipe['difficulty']) ?></p><br><br>
							<p class=method>Метод приготовления:</p>
							<p class=methodtext><?= htmlspecialchars($recipe['method']) ?>
							</p></label></td>
						</tr>
					</table>
				<?php } ?>
				</ul>
			</fieldset>
        </form> 
    </main>
</body>