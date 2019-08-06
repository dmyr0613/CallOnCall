<?php
	//指定したデバイス名のレコードがCallingテーブルにあるかチェックし、なければINSERT

try{

	if (!empty($_GET)) {

    //Heroku PostgresSQL
    $dsn = 'pgsql:dbname=d13p6kmhdcirvm host=ec2-174-129-208-118.compute-1.amazonaws.com port=5432';
    $user = 'gkijtxlavebgol';
    $password = 'ecff643bfa3612a94627c9d668f867a06ce4b86e4a69f8a42d981af26c50a505';
    $pdo = new PDO($dsn, $user, $password);

    if ($pdo == null){
      error_log("接続に失敗しました。");
    }else{
      error_log("接続に成功しました。");
    }

    //デバイス名を取得
    $device_name = $_GET['device_name'];

    //Callingにデバイス名のレコードがあるかチェック
    $sqlText   = 'select * from calling';
    $sqlText  .= ' where device_name = ?';

    error_log(print_r($sqlText, true));

    $sql=$pdo->prepare($sqlText);
    $sql->execute([$device_name]);
    $count = $sql->rowCount();


    if ($count == 0) {
      //locationテーブルへINSERT
      $sql=$pdo->prepare('insert into calling values(?, 0, ?, '12345')');
      $sql->execute([
        $device_name,
				$device_name
			]);
      error_log("callingデータ登録 デバイス名:" . $device_name);
    }
    //DB接続情報をクリア
    $pdo = null;
  }

}catch (PDOException $e){
  print('Error:'.$e->getMessage());
  die();
}

?>
