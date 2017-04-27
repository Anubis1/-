<?php
namespace app\controllers;
use Yii;
use yii\web\Controller;
use yii\db\ActiveRecord;
use yii\web\UploadedFile;
use yii\filters\AccessControl;
class SiteController extends Controller
{
public function actionIndex()
{		
return $this->render("index");
}
	
public function actionReg()
{		
return $this->render("reg");
}

	
	}

	
	
	
	
	
	
	
	
	

