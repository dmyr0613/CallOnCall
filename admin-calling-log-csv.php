<?php

// 出力情報の設定
header("Content-Type: application/octet-stream");
header("Content-Disposition: attachment; filename=CallingLog.csv");
header("Content-Transfer-Encoding: binary");

// // 変数の初期化
// $member = array();
// $csv = null;
//
// // 出力したいデータのサンプル
// $member = array(
// 	array(
// 		'id' => 1,
// 		'name' => '山田太郎',
// 		'furigana' => 'やまだたろう',
// 		'email' => 'taroyamada@sample.com'
// 	),
// 	array(
// 		'id' => 3,
// 		'name' => '加藤明美',
// 		'furigana' => 'かとうあけみ',
// 		'email' => 'akemikato@sample.com'
// 	),
// 	array(
// 		'id' => 5,
// 		'name' => '佐藤健夫',
// 		'furigana' => 'さとうたけお',
// 		'email' => 'takeosato@sample.com'
// 	)
// );
//
// // 1行目のラベルを作成
// $csv = '"ID","氏名","ふりがな","メールアドレス"' . "\n";
//
// // 出力データ生成
// foreach( $member as $value ) {
// 	$csv .= '"' . $value['id'] . '","' . $value['name'] . '", "' . $value['furigana'] . '","' . $value['email'] . '"' . "\n";
// }

// // 出力データ生成
// if (!empty($_REQUEST)) {
// 	$obj = $_REQUEST;
// 	foreach ($obj as $key => $val){
// 		error_log($val);
// 		error_log(print_r($val, true));
//
// 		$csv .= '"' . $val['insert_datetime'] . '","' . $val['update_datetime'] . '", "' . $val['device_name'] . '","' . $val['msg_no'] . '"' . "\n";
// 	}
// }

// Kaimeido Heroku PostgresSQL
$dsn = 'pgsql:dbname=d8qp7bgte2p1ue host=ec2-174-129-254-249.compute-1.amazonaws.com port=5432';
$user = 'crridrugfblfyo';
$password = '345e1a510b468c26ac2149fa0d42d2b947fe8a762a34c89c027a906539cd0895';

$pdo = new PDO($dsn, $user, $password);

// 変数の初期化
$csv = null;
// 1行目のラベルを作成
// $csv = '"登録時間","確認時間","デバイス名","メッセージNo"' . "\n";
$csv = '"insert_datetime","update_datetime","device_name","msg_no"' . "\n";

$sql=$pdo->prepare('select * from calling_log order by insert_datetime desc');
$sql->execute();
foreach ($sql as $row) {
	$csv .= '"' . $row['insert_datetime'] . '","' . $row['update_datetime'] . '", "' . $row['device_name'] . '","' . $row['msg_no'] . '"' . "\n";
}

// echo mb_convert_encoding($csv,"SJIS", "UTF-8");
// CSVファイル出力
echo $csv;
return;
