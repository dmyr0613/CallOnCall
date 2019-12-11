<?php

// 出力情報の設定
header("Content-Type: application/octet-stream");
header("Content-Disposition: attachment; filename=CallingLog.csv");
// header("Content-Transfer-Encoding: binary");
// ini_set('mbstring.internal_encoding' , 'UTF-8');

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

error_log($_REQUEST);
error_log(print_r($_REQUEST, true));

// 変数の初期化
$csv = null;

// 1行目のラベルを作成
$csv = '"登録時間","確認時間","デバイス名","メッセージNo"' . "\n";

// 出力データ生成
if (!empty($_REQUEST)) {
	$obj = $_REQUEST;
	foreach ($obj as $key => $val){
		error_log($val);
		error_log(print_r($val, true));

		$csv .= '"' . $val['insert_datetime'] . '","' . $val['update_datetime'] . '", "' . $val['device_name'] . '","' . $val['msg_no'] . '"' . "\n";
	}
}

// CSVファイル出力
echo $csv;
return;
