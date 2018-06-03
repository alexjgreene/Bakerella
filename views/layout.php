<html>
    <head>
		<link rel="stylesheet" href="index.css?28">
        <meta charset="utf-8">
	<div class="top-bar">
	</div>
	<div class="logo">
		<a href="/bakerella"></a>
	</div>
	<nav id="main" class="main-nav">
	<ul class="main-menu">
		<li id="menu-item-1" class="menu-item menu-item-1"><a href="/bakerella">Главная</a></li>
		<li id="menu-item-2" class="menu-item menu-item-2"><a href="/recipes">Рецепты</a></li>
	</ul>
	</nav>
	</head>
    <body>
        <section role="main">
            <?= $this->yieldView(); ?>
        </section>
        <footer align=center><small>Copyright © <?= date('Y') ?></small></footer>
    </body>
</html>
