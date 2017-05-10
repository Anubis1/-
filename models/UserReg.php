<?
namespace app\models;
use Yii;
use yii\base\Model;
class UserReg extends Model{
	
	public $email;
	public $password;
	public $nik;	
	public $strana;	
    public $active;	
	
	public function rules(){
return [
	[['email','password','nik','strana'],'required'],
	['email','email','message'=>'Email введен некорректно !'],
	['strana','number','min'=>0,'max'=>4],
	['nik','match', 'pattern' => '/^[a-z]\w*$/i','message'=>'Никнейм должен быть содержать латинские буквы и цифры от 4 символов до 20!'],
	['email','string','min'=>10,'max'=>40,'message' => 'Введите ваш Email корректно! '],
	['nik','unique','targetClass'=>'app\models\User','message' => 'Пользователь уже зарегистрирован с таким никнеймом !'],
	['password','match','pattern' => '/^[a-z]\w*$/i','message' => 'Пароль должен быть от 5 символов до 25!'],
	
];
}
	public function reg(){
		
		
		
		$user=new User();
		$user->id=null;
		$user->nik= strip_tags(htmlspecialchars($this->nik));
		$user->mail= strip_tags(htmlspecialchars($this->email));
		$user->active = md5($this->nik);
		$user->status =0;
		$user->image="-";
		$user->maney=0;
		$user->strana =$this->strana;
		$user->rang =0;
		$user->wmr =0;
		$user->date_visits =date("Y.m.d");
		$user->date_reg =date("Y.m.d");	
		$user->pass=sha1(md5(sha1(md5($this->password))));
/*Acrion pochta**/
		return $user->save();
		
	}

	
	}
	

?>