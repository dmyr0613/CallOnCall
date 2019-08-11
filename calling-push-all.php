<?php
  //デバイス名から送信するメッセージがあるか取得する。

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

  //Callingからメッセージがあるか取得
  $sqlText   = 'select * from calling a inner join call_message b';
  $sqlText  .= '    on a.msg_no >= 1';
  $sqlText  .= '   and a.msg_no  = b.msg_no';

  error_log(print_r($sqlText, true));

  $sql=$pdo->prepare($sqlText);
  $sql->execute();

  $json_array = array();

  foreach ($sql as $row) {
    //JSON形式にする
    $device_name = $row['device_name'];
    $msg_no = strval($row['msg_no']);
    $token = $row['token'];
    $message = $row['message'];

    error_log("メッセージPUSH送信");
    //webAPIにて、メッセージ更新チェック
    $url = "http://call-on-call.herokuapp.com/push_calling.php?token=" . $token . "&msg_no=" . $msg_no . "&message=" . $message;
    $ch = curl_init();
    curl_setopt($ch, CURLOPT_URL, $url);

    $response = curl_exec($ch);
    curl_close($ch);
    error_log(print_r($response, true));
  }

?>
