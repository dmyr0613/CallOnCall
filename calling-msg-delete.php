<?php

try{

	if (!empty($_GET)) {

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

		if (!empty($msg_no)) {
	    //call_messageテーブルからレコード削除
	    $sqlText   = 'delete from call_message';
	    $sqlText  .= ' where msg_no  = ?';

	    $sql=$pdo->prepare($sqlText);
	    $sql->execute([$msg_no]);
	    $count = $sql->rowCount();
			error_log($count);
		}

    //DB接続情報をクリア
    $pdo = null;
  }

}catch (PDOException $e){
  print('Error:'.$e->getMessage());
  die();
}

?>
