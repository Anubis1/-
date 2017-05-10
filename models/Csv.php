<?
namespace app\models;
use Yii;
use yii\db\ActiveRecord;
class Csv extends ActiveRecord{
public function Grafik($file,$id){
$id=(int)$id;
$query = Myfiles::find()->where(['url'=>$file])->one();
$limint_one=(int)$query['lim']-$query['action'];
$connection = Yii::$app->getDb();
$command = $connection->createCommand("SELECT * FROM `Csv` where `id`>=".$limint_one." LIMIT ".$query['action'].";");
return $result = $command->queryAll();

}

public function GrafikOrder($file,$id){
	$id=(int)$id;
$query = Myfiles::find()->where(['url'=>$file])->one();
$limint_one=(int)$query['lim']-$query['action'];
$connection = Yii::$app->getDb();
$command = $connection->createCommand("SELECT `activity`,SUM(`Csv`.duration) FROM `Csv` where `id`>=".$limint_one." GROUP BY `Csv`.`activity` LIMIT ".$query['action']."  ;");
return $result = $command->queryAll();
}
}

?>