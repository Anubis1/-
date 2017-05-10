<?
namespace app\models;
use Yii;
use yii\base\Model;
class Main extends Model{
	
	public $email;
	public $password;
	public function rules(){
	return [
	[['email','password'],'required'],
	['email','email','message'=>'Не является допустимым адресом электронной почты.'],
	['password','string','min'=>5,'max'=>25],
	['password','validatePassword']
	          ];
		
		
	}
	public function validatePassword($attribute,$params){
		
		$user=$this->getUser();
		if(!$user || ($user->pass != sha1(md5(sha1(md5($this->password)))))){
			
			$this->addError($attribute,'Пользовтель не найден!'.$this->email);
			
			
		}
	}
	
	
	
	public function getUser(){
		
		
		return User::findOne(['mail'=>$this->email]);
		
	}
}

?>