<?php

/* @var $this \yii\web\View */
/* @var $content string */

use yii\helpers\Html;
use yii\bootstrap\Nav;
use yii\bootstrap\NavBar;
use yii\bootstrap\Modal;
use app\assets\AppAsset;


AppAsset::register($this);
?>

<?php $this->beginPage() ?>

<!DOCTYPE html>
<html lang="<?= Yii::$app->language ?>">
<head>
    <meta charset="<?= Yii::$app->charset ?>">
    <title><?= Html::encode(Yii::$app->name) ?></title>
    <?php $this->head() ?>
</head>
<body>

<?php $this->beginBody() ?>
	
<header class="wrap">
	<?php
	NavBar::begin([
			'options' => [
					'class' => 'navbar-inverse navbar-fixed-top',
			],
	]);
	
	$menu = [
					['label' => 'Главная',        'url' => ['/test/index']],
					['label' => 'О нас',          'url' => ['/test/about']],
					['label' => 'Лента новостей', 'url' => ['/test/news']],
					['label' => 'Контакты',       'url' => ['#'], 'linkOptions' => [
						'data-toggle' => 'modal', 
						'data-target' => '#contact'
					]],
			];
			
	if (Yii::$app->user->isGuest){
		$menu[] = ['label' => 'Авторизация', 'url' => ['/test/login']];
	}
	else{
		$menu[] = ['label' => 'Админка', 'url' => ['/test/admine']];
		$menu[] = ['label' => 'Выход', 'url' => ['/test/logout'],
		];
	}
	
	echo Nav::widget([
			'options' => ['class' => 'navbar-nav navbar-left'],
			'items' => $menu,
		]);
	NavBar::end();
	
	echo '</header>';
	
	Modal::begin([
		'header' => '<h2>Контактная информация</h2>',
		'id' => 'contact',
	]);
?>
	<p><span class="glyphicons glyphicons-earphone"></span> <b>Телефон</b> 123-45-67</p>
	<p><span class="glyphicons glyphicons-earphone"></span> <b>Fax</b> 098-76-54</p>
	<p><span class="glyphicons glyphicons-earphone"></span> <b>E-mail</b> test@test.com</p>
	<p><span class="glyphicons glyphicons-earphone"></span> <b>Адрес</b> г.Неизвестный, ул. Какая-то д.1</p>
	<div id="map"></div>
<?
	Modal::end();
?>

<main class="container">
	<div class="wrap">
		<?= $content ?>
	</div>
</main>

<footer class="footer">
    <div class="container">
        <p class="pull-left"><?= Yii::$app->name ?> &copy;  <?= date('Y') ?></p>
    </div>
</footer>

<?php $this->endBody() ?>

</body>
</html>

<?php $this->endPage() ?>