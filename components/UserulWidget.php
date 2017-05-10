<?
namespace app\componets;
use yii\base\Widget;

Class UserulWidget extends Widget {
	
	public function init (){parent::init();	}
	public function run(){ return $this->render('userul');}
	
}

?>