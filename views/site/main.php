
<h1>Авторизация</h1>
<?
use yii\widgets\ActiveForm;
$form=ActiveForm::begin(['class'=>'form-horizontal']);
?>
<?=$form->field($acaunt_model,'email')->textInput(['autofocus'=>true])?>
<?=$form->field($acaunt_model,'password')->passwordInput();?>
<button>Вход</button>
<?ActiveForm::end();?>