<!DOCTYPE html>
<html>
<head>
<title>CallOnCall | 管理者画面</title>
<link rel="shortcut icon" type="image" href="images/favicon.ico">
<meta http-equiv="Content-Type" content="text/html; charset=shift_jis">
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/admin-main.css" />
</head>

<?php
  //DB接続文字列をグローバル変数に格納
  global $pdo;
  //localhost mySql
  // $pdo=new PDO('mysql:host=localhost;dbname=marcs;charset=utf8', 'sbs', 'sbs_toro');

  //Heroku PostgresSQL
  // $dsn = 'pgsql:dbname=d13p6kmhdcirvm host=ec2-174-129-208-118.compute-1.amazonaws.com port=5432';
  // $user = 'gkijtxlavebgol';
  // $password = 'ecff643bfa3612a94627c9d668f867a06ce4b86e4a69f8a42d981af26c50a505';
  // Kaimeido
  $dsn = 'pgsql:dbname=d8qp7bgte2p1ue host=ec2-174-129-254-249.compute-1.amazonaws.com port=5432';
  $user = 'crridrugfblfyo';
  $password = '345e1a510b468c26ac2149fa0d42d2b947fe8a762a34c89c027a906539cd0895';

  $pdo = new PDO($dsn, $user, $password);
?>

<body class="is-preload">
  <!-- Wrapper -->
    <div id="wrapper">
