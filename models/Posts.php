<?php
namespace app\models;
use Yii;
use yii\base\Model;
class UploadForm extends Model
{
 public $file;
  public function rules()
 {
 return [
  [['file'], 'file', 'extensions' => 'csv', 
                    'skipOnEmpty' => false]];
 }

}
?>