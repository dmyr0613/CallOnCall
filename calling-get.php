<?php

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

  //Callingからデバイス名指定またはALLでメッセージがあるか取得
  $sqlText   = 'select * from calling';
  $sqlText  .= " where (device_name = 'All_Device'";
  $sqlText  .= "    or  device_name = '" . $device_name . "')";
  $sqlText  .= '   and msg_no >= 1';

  error_log(print_r($sqlText, true));

  $sql=$pdo->prepare($sqlText);
  $sql->execute();

  $json_array = array();

  foreach ($sql as $row) {
    //JSON形式にする
    $row_array['device_name'] = $row['device_name'];
    $row_array['msg_no'] = $row['msg_no'];

    array_push($json_array,$row_array);
    // error_log(print_r($json_array, true));
  }

  //半分おまじない。JSONで送りますよという合図
  header("Content-Type: text/javascript; charset=utf-8");
  //JSON 形式にエンコードしてechoでPOST送信
  echo json_encode($json_array);

?>
