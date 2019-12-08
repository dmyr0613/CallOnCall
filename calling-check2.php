<?php
	//指定したデバイス名のレコードがCallingテーブルにあるかチェックし、なければINSERT。さらにTokenのチェックを行い、異なればUPDATE。

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

    //デバイス名、TOKENを取得
    $device_name = $_GET['device_name'];
		$token = $_GET['token'];

    //Callingにデバイス名のレコードがあるかチェック
    $sqlText   = 'select * from calling';
    $sqlText  .= ' where device_name = ?';

    error_log(print_r($sqlText, true));

    $sql=$pdo->prepare($sqlText);
    $sql->execute([$device_name]);
    $count = $sql->rowCount();


    if ($count == 0) {
      //locationテーブルへINSERT
      $sql=$pdo->prepare('insert into calling values(?, 0, ?, ?)');
      $sql->execute([
        $device_name,
				$device_name,
				$token
			]);
      error_log("callingデータ登録 デバイス名:" . $device_name);
    } else {
			foreach ($sql as $row) {
		    //データが同じかチェック
				if (strval($row['token']) != $token) {
					//異なった場合だけUPDATE
					$sqlText   = 'update calling';
					$sqlText  .= '   set token        = ?';
					$sqlText  .= ' where device_name  = ?';

					$sql=$pdo->prepare($sqlText);
					$sql->execute([$token,$device_name]);
					$count = $sql->rowCount();
					error_log("tokenデータ更新 デバイス名:" . $device_name);
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
