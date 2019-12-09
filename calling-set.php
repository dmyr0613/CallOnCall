<?php

try{

	if (!empty($_GET)) {

    //Heroku PostgresSQL
    // $dsn = 'pgsql:dbname=d13p6kmhdcirvm host=ec2-174-129-208-118.compute-1.amazonaws.com port=5432';
    // $user = 'gkijtxlavebgol';
    // $password = 'ecff643bfa3612a94627c9d668f867a06ce4b86e4a69f8a42d981af26c50a505';

	  // Kaimeido Heroku PostgresSQL
	  $dsn = 'pgsql:dbname=d8qp7bgte2p1ue host=ec2-174-129-254-249.compute-1.amazonaws.com port=5432';
	  $user = 'crridrugfblfyo';
	  $password = '345e1a510b468c26ac2149fa0d42d2b947fe8a762a34c89c027a906539cd0895';
    $pdo = new PDO($dsn, $user, $password);

    if ($pdo == null){
      error_log("接続に失敗しました。");
    }else{
      error_log("接続に成功しました。");
    }

    //デバイス名を取得
    $device_name = $_GET['device_name'];
		//メッセージNoを取得
		$msg_no = 0;
		$msg_no = $_GET['msg_no'];

		if (!empty($device_name)) {
	    //Callingにmsg_noをUPDATE デバイス指定
	    $sqlText   = 'update calling';
			$sqlText  .= '   set msg_no      = ?';
	    $sqlText  .= ' where device_name = ?';

	    error_log(print_r($sqlText, true));

	    $sql=$pdo->prepare($sqlText);
	    $sql->execute([$msg_no,$device_name]);
			error_log("calling.msg_flg=" . $msg_no . " デバイス名:" . $device_name);
		} else {
			//Callingにmsg_noをUPDATE 全デバイス
	    $sqlText   = 'update calling';
			$sqlText  .= '   set msg_no      = ?';

	    error_log(print_r($sqlText, true));

	    $sql=$pdo->prepare($sqlText);
	    $sql->execute([$msg_no]);
			error_log("calling.msg_flg=" . $msg_no);
		}

		//ログテーブルに書き込み
		date_default_timezone_set('Asia/Tokyo');
		$datetime = date("Y/m/d His");

		$sql=$pdo->prepare('insert into calling_log values(?, ?, ?, ?, ?)');
		$sql->execute([
			$datetime,
			null,
			$device_name,
			$msg_no,
			null]);
		error_log("ログテーブルに書き込み");

    //DB接続情報をクリア
    $pdo = null;
  }

}catch (PDOException $e){
  print('Error:'.$e->getMessage());
  die();
}

?>
