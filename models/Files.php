<?
namespace app\models;
use Yii;
use yii\base\Model;
use yii\web\UploadedFile;
use yii\data\Pagination;

class Files extends Model
{
    public $imageFile;
	public $nameFile;

    public function rules()
    {
        return [
            [['imageFile'], 'file', 'skipOnEmpty' => false/*, 'extensions' => 'php, csv'*/],
        ];
    }
    
    public function upload()
    {
		
        if ($this->validate()) {
			
			$nameFile=md5(time()).'-'.sha1(md5(time()));
			$this->nameFile=$nameFile;
            $this->imageFile->saveAs('uploads/' . $this->nameFile . '.' . $this->imageFile->extension);
            return true;
        } else {
            return false;
        }
    }
	
	public function Mysave(){define('CSV_PATH','uploads/');
		$file= new Myfiles();
		$file->id=null;
		$file->url=$this->nameFile;
        $file->date=date("Y.m.d m:s");
        $file->user_id=Yii::$app->user->Identity->id;
	    $file->name=Yii::$app->user->Identity->nik;
		$model = Csv::find()->Max('id');
		if($model==null||empty($model))$model=0;
		$csv_file = CSV_PATH.''.$this->nameFile.'.csv';
$filecsv = file($csv_file);
$col=count($filecsv);
$file->action=$col-1;
		$file->lim=$model+1;
		return $file->save();
	}
	
	public function Myfile(){
		
		 $query = Myfiles::find();

        $pagination = new Pagination([
            'defaultPageSize' => 15,
            'totalCount' => $query->count(),
        ]);

        $countries = $query->orderBy('id')
		     // ->where(['id'=>Yii::$app->user->Identity->id])
			 ->where(['=', 'user_id', Yii::$app->user->Identity->id])
            ->offset($pagination->offset)
            ->limit($pagination->limit)
            ->all();

        return  [
            'countries' => $countries,
            'pagination' => $pagination,
        ];
    }
	
	public function Rows(){
define('CSV_PATH','uploads/');
$csv_file = CSV_PATH.''.$this->nameFile.'.csv';
$filecsv = file($csv_file);
$col=count($filecsv);
$i=1;
while($col!=$i){
	$saved=explode(",",$filecsv[$i]);
	$min=explode(":",$saved[3]);
$sec=(int)$min[1];
$time=(int)$min[0]*60+$sec;
$n=new Csv();
   $n->id=null;
   $n->activity=$saved[0];
   $n->project=$saved[1];
   $n->workers=$saved[2];
   $n->duration=$time;
   $n->time=$saved[4];
   echo $n->id;
   $n->save();
$i++;
}
	
	return true;
	
	}
	

	
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	

?>