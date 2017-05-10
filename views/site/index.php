<?
use yii\widgets\ActiveForm;
use yii\helpers\Html;
use yii\widgets\LinkPager;
if($mypage){
	echo "<h1>".$result."</h1>";
	?>
	<?php $form = ActiveForm::begin(['options' => ['enctype' => 'multipart/form-data']]) ?>

    <?= $form->field($model, 'imageFile')->fileInput() ?>

    <button>Submit</button>

<?php ActiveForm::end() ?>
	
	
	
	
	<h1>My files</h1>
	<hr><br><br>
<ul>
<?php

foreach ($files['countries'] as $m): ?>
<div style="
    background: black;
    margin: 15px;
    padding: 15px;
">
<div><?=$m->name?> - <?=$m->date?> </div>
<div><a href="http://protect.ru/web/site/grafik?id=<?=$m->user_id?>&file=<?=$m->url?>"><?=$m->url?></a></div>
</div>
<?php endforeach;?>
</ul>

<?//= LinkPager::widget([$files['pagination'] => $pagination]);?>
	
<?
}
else {
if(isset($active)&& $active)Yii::$app->user->Identity->status=1;
if(Yii::$app->user->Identity->status==0){
	?>
<h1>Добро пожаловать <?=Yii::$app->user->Identity->nik?>!</h1>
<p>Мы отправили код для подтверждения на [<b style="color:#ff71a1;"><?=Yii::$app->user->Identity->mail?></b>].<br><br>
<font style="color:#ff71a1;">Внимание!</font>
<br> Это необходимо для того чтобы вы смогли  восстановить ваши данные при утере вашего пароля!</p><br>
<?
if(isset($active)&& !$active)echo "Некорректный PIN!<br>";
$form=ActiveForm::begin(['class'=>'form-horizontal']);
?>
<?=$form->field($model,'pin')->textInput();?>
<button>Next</button>
<?ActiveForm::end();
}

if(Yii::$app->user->Identity->status==1){
?>
<h1>Добро пожаловать <?=Yii::$app->user->Identity->nik?>!</h1>
<p>Введите ваш wmr!<br>
<font style="color:#ff71a1;">Внимание!</font>
<br> Это необходимо для того чтобы вы смогли сделать переводы быстро и надежно !</p><br>
<?
if(isset($active)&& !$active)echo "Некорректный WMR ID!<br>";
$form=ActiveForm::begin(['class'=>'form-horizontal']);
?>
<?=$form->field($model,'pin')->textInput()->label('Ваш кошелек');?>
<button>Next</button>
<?ActiveForm::end();
}}

?>
