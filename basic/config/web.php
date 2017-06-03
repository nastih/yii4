<?php

$params = require(__DIR__ . '/params.php');

$config = [
    'id' => 'basic',
    'basePath' => dirname(__DIR__),
    'bootstrap' => ['log'],
		'defaultRoute' => 'test/index',
		'layout'		=> 'my',
		'charset'		=> 'UTF-8',
		'name'			=> 'Учебное приложение',
		'language'	=> 'ru_RU',
    'components' => [
        'request' => [
            // !!! insert a secret key in the following (if it is empty) - this is required by cookie validation
            'cookieValidationKey' => 'ssdsdhhjgdhsdfghsdfakghjsdfagdfghsdfa',
        ],
        'cache' => [
            'class' => 'yii\caching\FileCache',
        ],
        'user' => [
            'identityClass' => 'app\models\User',
            'enableAutoLogin' => true,
        ],
        'errorHandler' => [
            'errorAction' => 'site/error',
        ],
        'mailer' => [
            'class' => 'yii\swiftmailer\Mailer',
            // send all mails to a file by default. You have to set
            // 'useFileTransport' to false and configure a transport
            // for the mailer to send real emails.
            'useFileTransport' => true,
        ],
        'log' => [
            'traceLevel' => YII_DEBUG ? 3 : 0,
            'targets' => [
                [
                    'class' => 'yii\log\FileTarget',
                    'levels' => ['error', 'warning'],
                ],
            ],
        ],
        'db' => require(__DIR__ . '/db.php'),
        'urlManager' => [
            'enablePrettyUrl' => true,
            'showScriptName' => false,
						//'enableStrictParsing' => true,
            'rules' => [
							 [
								'pattern' => '<controller>/<action>/<id:\d+>',
								'route'   => '<controller>/<action>',
								'suffix'	=> '',	
							],
							[
								'pattern' => '<controller>/<action>',	//	Шаблон ссылки
								'route'   => '<controller>/<action>',	//	Маршрут для ссылки
								'suffix'	=> '',						//	Подставляемый суффикс
							], 
							// [
								// 'pattern' => '<module>/<controller>/<action>/<id:\d+>',
								// 'route'   => '<controller>/<action>',
								// 'suffix'	=> '',	
							// ],
							// [
								// 'pattern' => '<module>/<controller>/<action>',
								// 'route'   => '<controller>/<action>',
								// 'suffix'	=> '',	
							// ],
            ],
        ],
        
    ],
    'params' => $params,
];

if (YII_ENV_DEV) {
    // configuration adjustments for 'dev' environment
    $config['bootstrap'][] = 'debug';
    $config['modules']['debug'] = [
        'class' => 'yii\debug\Module',
        // uncomment the following to add your IP if you are not connecting from localhost.
        //'allowedIPs' => ['127.0.0.1', '::1'],
    ];

    $config['bootstrap'][] = 'gii';
    $config['modules']['gii'] = [
        'class' => 'yii\gii\Module',
        // uncomment the following to add your IP if you are not connecting from localhost.
        //'allowedIPs' => ['127.0.0.1', '::1'],
    ];
}

return $config;
