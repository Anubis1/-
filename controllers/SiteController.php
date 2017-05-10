<?php
namespace app\controllers;
use Yii;
use yii\web\Controller;
use yii\db\ActiveRecord;
use yii\filters\AccessControl;
use app\models\UserReg;

use app\models\Main;
use app\models\Csv;
use app\models\Acrive;
use yii\web\UploadedFile;
use app\models\Files;
class SiteController extends Controller
{
	
	
	
	
	
	public function actionGrafik($id,$file)
{
	
	$model=new Csv();
	return $this->render('grafik',['model'=>$model->Grafik($file,$id),'new'=>$model->GrafikOrder($file,$id)]);


}
	
	
	
	
	
	
public function actionIndex()
{
$model =new Acrive();	
if(Yii::$app->user->Identity->status==2){
	
	
	  $model = new Files();

        if (Yii::$app->request->isPost) {
			 $result="Файл загружен !";
            $model->imageFile = UploadedFile::getInstance($model, 'imageFile');
            if ($model->upload()&&$model->Rows()) {
      if(!$model->Mysave()) $result="Ошибка добавления в БД!";
	 
             return $this->render('index', ['model'=>$model,'mypage'=>true,'result'=>$result,'files'=>$model->Myfile()]);  
            }
			else $result="Файл не может быть загружен !";
        }
		if($model->validate())$result="Файл может быть только csv!";

              return $this->render('index', ['model'=>$model,'mypage'=>true,'result'=>$result,'files'=>$model->Myfile()]); 
	
}


if(Yii::$app->request->isPost){
$model->load(Yii::$app->request->post());

if(Yii::$app->user->Identity->status==1){
if($model->ActiveWMR()&&$model->NewStatus(2))return $this->render("index",['mypage'=>true]);

}
if($model->NewStatus(1)&& $model->pin())return $this->render("index",['active'=>true]);
else return $this->render("index",['model'=>$model,'active'=>false]);
}


else  return $this->render("index",['model'=>$model]);
}



public function actionMain()
{
	$acaunt = new Main();
if(Yii::$app->request->isPost){
$acaunt->attributes=Yii::$app->request->post('Main');	
if($acaunt->validate()){
	yii::$app->User->login($acaunt->getUser());
	return $this->goHome();
	}
}
return $this->render('main',['acaunt_model'=>$acaunt]);
}


	
public function actionReg()
{		
$model = new UserReg();

if ($model->load(Yii::$app->request->post()) && $model->validate() && $model->reg() ){
return $this->render("reg",['active'=>true]);

}
return $this->render("reg",['model'=>$model]);
}
public function actionLogin(){
	
	
	return $this->render("login");
	
	
}

	
}