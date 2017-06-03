<?php
/* @var $this yii\web\View */
use yii\widgets\ListView;
?>

<h1 style="margin-top: 60px">Актуальные новости</h1>
<? 
	echo ListView::widget([
		'dataProvider' => $data,
		'itemView' => '_news',
	]);
?>
