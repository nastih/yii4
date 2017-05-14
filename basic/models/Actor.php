<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "actor".
 *
 * @property string $ID
 * @property string $first_name
 * @property string $last_name
 *
 * @property ActorList[] $actorLists
 */
class Actor extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'actor';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['first_name', 'last_name'], 'required'],
            [['first_name', 'last_name'], 'string', 'max' => 255],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'ID' => 'ID',
            'first_name' => 'First Name',
            'last_name' => 'Last Name',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getActorLists()
    {
        return $this->hasMany(ActorList::className(), ['ID_actor' => 'ID']);
    }
}
