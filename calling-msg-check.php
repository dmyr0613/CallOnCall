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

    //POST値を取得
    $msg_no = $_GET['msg_no'];
		$message= $_GET['message'];

    //Callingにデバイス名のレコードがあるかチェック
    $sqlText   = 'select * from call_message';
    $sqlText  .= ' where msg_no  = ?';

    $sql=$pdo->prepare($sqlText);
    $sql->execute([$msg_no]);
    $count = $sql->rowCount();
		error_log($count);

    if ($count == 0) {
      //データがない場合は、call_messageテーブルへINSERT
      $sql=$pdo->prepare('insert into call_message values(?, ?)');
      $sql->execute([
        $msg_no,
				$message
			]);
      error_log("call_messageデータ登録 メッセージNo:" . $msg_no);
    } else {
			error_log("msgデータあり");
			foreach ($sql as $row) {
		    //データが同じかチェック
				if (strval($row['message']) != $message) {
					error_log("msgデータ更新メッセージNo:" . $msg_no);
					//異なった場合だけUPDATE
					$sqlText   = 'update call_message';
					$sqlText  .= '   set message = ?';
					$sqlText  .= ' where msg_no  = ?';

					$sql=$pdo->prepare($sqlText);
					$sql->execute([$message,$msg_no]);
					$count = $sql->rowCount();
					error_log("call_messageデータ更新 メッセージNo:" . $msg_no);
				}
		  }

		}

    //DB接続情報をクリア
    $pdo = null;
  }

}catch (PDOException $e){
  print('Error:'.$e->getMessage());
  die();
}

?>
