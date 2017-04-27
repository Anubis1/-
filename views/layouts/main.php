<?php
use yii\helpers\Html;
use yii\bootstrap\Nav;
use yii\bootstrap\NavBar;
use yii\widgets\Breadcrumbs;
use app\assets\AppAsset;

AppAsset::register($this);
?>
<?php $this->beginPage() ?>
<!DOCTYPE html>
<html lang="<?= Yii::$app->language ?>">
<head>
    <?= Html::csrfMetaTags() ?>
    <title><?= Html::encode($this->title) ?></title>
    <?php $this->head() ?>
  
</head>

	<body>
	<?php $this->beginBody() ?>
		<div class="wrapper">
			<div class="header">
				<div class="headerContent">
					<div class="logo">
					<a href="<?=Yii::$app->homeUrl?>"><?=Yii::$app->params['NameSite']?></a></div>
					<ul class="nav">
					<?
						
		 echo Nav::widget([
        'options' => ['class' => 'navbar-nav navbar-right'],
        'items' => [
            ['label' => 'Новости', 'url' => ['/site/register']],
            ['label' => 'Условия', 'url' => ['/users/index']],
			
			['label' => 'Владельцам', 'url' => ['/site/acaunt']],
			['label' => 'Политика', 'url' => ['/site/acaunt']],
			['label' => 'Форум', 'url' => ['/users/index']],
			],
    ]);
					
					?>						
					</ul>
				</div>
			</div>
			<div class="content">
				<div class="leftCol">
				
					<div class="block">
						<center><h3>Вход</h3></center>
						<form action="">
						<input type="text" placeholder="E-mail"><br>
						<input type="text" placeholder="******">
						<button>Войти</button>
						</form>
					</div>
				
				
					<ul class="leftNav">
						<li><a href="">Аккаунты</a></li>
						<li><a href="">Блоги</a></li>
						
						<li><a href="">E-mail</a></li>
						<li><a href="">Игры</a></li>
						<li><a href="">Сайты</a></li>
						<li><a href="">Скрипты</a></li>
						<li><a href="">Программы</a></li>
						<li><a href="">Обмен</a></li>
						<li><a href="">Продажа</a></li>
						<li><a href="">Услуги</a></li>
						<li><a href="">Информация</a></li>
						
					
						 
						
					</ul>
				
					
					
					
					<div class="block">
						<h3>Верхний Левый Блок</h3>
						<p><i>Но я должен объяснить вам, как все это родилось ошибка сидеть voluptatem accusantium doloremque laudantium, целое дело, и она, которой от него исследователя истины, мастер-строитель человеческого счастья. Не очень приятно, потому что это удовольствие отвергает, не презирает, или ненавидит или избегает, а потому, что они следуют Великой скорби тех, кто есть причина искать удовольствий, не осознавая этого.</i></p>
						<p><a href="reg" class="more">Регестрация</a></p>
					</div>
				
				</div>
				<div class="main">
				     <?= Breadcrumbs::widget([
            'links' => isset($this->params['breadcrumbs']) ? $this->params['breadcrumbs'] : [],
        ]) ?>
        <?= $content ?>
						</div>
			</div>
			<div class="footer">
				<p>© Protect <?= date('Y') ?></p>
			</div>
		</div>
		<script src="/protect_files/css3-mediaqueries.js"></script>
	<?php $this->endBody() ?>
</body></html>
<?php $this->endPage() ?>