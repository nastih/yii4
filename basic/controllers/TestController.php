<?php
namespace app\controllers;
use Yii;
use app\models\LoginForm;
use app\models\User;
use app\models\News;
use yii\data\ActiveDataProvider;

class TestController extends \yii\web\Controller {
	
	public function actionIndex() {
		return $this->render('index');
	}
	public function actionAbout() {
		return $this->render('about');
	}
	
	
	public function actionNews($id = 0) {
		if(!$id){
			$data = new ActiveDataProvider([
			'query' => News::find()->where(['flag' => 0]),
			'pagination' => [
				'pagesize' => 4,
				],
			]);
			return $this->render('news', ['data' => $data]);
		}else{
			/* $dataProvider = new ActiveDataProvider([
				'query' => News::find()->where(['id' => $id]),
			]); */
			$data = News::find()->where(['id' => $id])->one();
			return $this->render('mynews', ['data' => $data]);
		}
	}
	
	
	public function actionLogin() {
		
		if (!Yii::$app->user->isGuest){
			return $this->goHome();
		}
		
		//if(Yii::$app->request->post()){
			//echo '<pre>';
			//print_r(Yii::$app->request->post());
			//echo '</pre>';
			//Yii::$app->end();
		//}
		
		$model = new LoginForm();
		
		if ($model->load(Yii::$app->request->post()) && $model->validate()){
			if($model->login())
				return $this->goBack();
			else{
				Yii::$app->session->setFlash('error', 'Возникла ошибка при авторизации');
				Yii::error('Ошибка при регистрации');
				return $this->refresh();
			}
		}
		return $this->render('login', ['model' => $model]);
	}
	
	public function actionLogout(){
		Yii::$app->user->logout();
		return $this->goHome();
	}
		
}