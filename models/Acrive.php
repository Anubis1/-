<?
namespace app\models;
use Yii;
use yii\base\Model;
Class Acrive extends Model {
	
	public $pin;
	
	public function rules(){
return [
		['pin','string','min'=>2,'max'=>30],		
		];
	}
	
	
	public function Wmrrules(){
		
		if (preg_match("/(R|r)(0-9){10,}/", $this->pin)) {
    return true;
}
else return false;
		
		
	}
	public function pin(){
		
		
		if(Yii::$app->user->Identity->active == $this->pin){	
		return Yii::$app->db->createCommand('UPDATE user SET status=1 WHERE id='.Yii::$app->user->Identity->id)->execute();

		
		}
	}
	
	public function NewStatus($status){
Yii::$app->user->Identity->status==$status;
			return Yii::$app->db->createCommand('UPDATE user SET status='.$status.' WHERE id='.Yii::$app->user->Identity->id)->execute();
	}
	
	public function ActiveWMR(){
return Yii::$app->db->createCommand('UPDATE user SET wmr='.$this->pin.' WHERE id='.Yii::$app->user->Identity->id)->execute();
	
	}
	
	
	
	
	
}


?>