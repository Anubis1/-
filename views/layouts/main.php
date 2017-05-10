<?php
use yii\helpers\Html;
use yii\bootstrap\Nav;
use yii\bootstrap\NavBar;
use yii\widgets\Breadcrumbs;
use app\assets\AppAsset;
use app\components\UserulWidget;

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
								
					</ul>
				</div>
			</div>
			<div class="content">
				<div class="leftCol">
	<?
		if(!Yii::$app->user->Identity){
		$log_reg=Html::a('Регистрация', ['/site/reg']);
		$log_reg=Html::tag('li', $log_reg);
		$log_r=Html::a('Авторизация', ['/site/main']);
		$log_reg.=Html::tag('li', $log_r);
		
		$log_reg=Html::tag('ul', $log_reg, ['class' => 'leftNav'])
		
		?>
					
		<?echo Html::tag('div', $log_reg, ['class' => 'bloc']);
		}?> 
				
				
				
				
						
					
	
					
											
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