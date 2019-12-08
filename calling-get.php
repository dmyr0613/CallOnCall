<?php
  //デバイス名から送信するメッセージがあるか取得する。

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

  //Callingからデバイス名指定またはALLでメッセージがあるか取得
  $sqlText   = 'select * from calling a inner join call_message b';
  $sqlText  .= "    on a.device_name = '" . $device_name . "'";
  $sqlText  .= '   and a.msg_no >= 1';
  $sqlText  .= '   and a.msg_no  = b.msg_no';

  error_log(print_r($sqlText, true));

  $sql=$pdo->prepare($sqlText);
  $sql->execute();

  $json_array = array();

  foreach ($sql as $row) {
    //JSON形式にする
    $row_array['device_name'] = $row['device_name'];
    $row_array['msg_no'] = strval($row['msg_no']);
    $row_array['message'] = strval($row['message']);

    array_push($json_array,$row_array);
    // error_log(print_r($json_array, true));
  }

  //半分おまじない。JSONで送りますよという合図
  header("Content-Type: text/javascript; charset=utf-8");
  //JSON 形式にエンコードしてechoでPOST送信
  echo json_encode($json_array);

?>
