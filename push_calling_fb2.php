<?php
try{

	if (!empty($_GET)) {

    $deviceToken = 'fByHiqnX0Xo:APA91bEUqj1KK1hq145rkyokVwWumTJU6rMCqx6PRguvTgTKuX10NM7Yx41gVUBrz8LCG5Xerp5cg6AqVeFOCrxuqPJWnb5pbLf3YAuc3McrHLEBykDSbI5TnpI4yD2hkZ6Hmgmc1puo';
    //トークンを取得
    // $deviceToken = $_GET['token'];
		//メッセージNoを取得
		$msg_no = 0;
		$msg_no = $_GET['msg_no'];
    // 送信する文字列
    $alert = $_GET['message'];

		$options = '{';
		$options = $options . '  "message":{';
		$options = $options . '    "token" : "' . $deviceToken . '",';
		$options = $options . '    "notification" : {';
		$options = $options . '      "body" : "メッセージNo."' . $msg_no . ',';
		$options = $options . '      "title" : "' . $alert . '",';
		$options = $options . '      }';
		$options = $options . '   }';
		$options = $options . '}';

		$ch = curl_init();
		curl_setopt($ch, CURLOPT_URL, 'https://fcm.googleapis.com/v1/projects/myproject-b5ae1/messages:send HTTP/1.1');
		curl_setopt($ch, CURLOPT_HTTPHEADER, array('Authorization: Bearer ya29.ElqKBGN2Ri_Uz...HnS_uNreA', 'Content-Type: application/json'));
		curl_setopt($ch, CURLOPT_POST, 1);
		// curl_setopt($ch, CURLOPT_POSTFIELDS, json_encode($options));
		curl_setopt($ch, CURLOPT_POSTFIELDS, $options);
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);

		$response = curl_exec($ch);
		curl_close($ch);
		error_log(print_r($response, true));
  }

}catch (PDOException $e){
  print('Error:'.$e->getMessage());
  die();
}

?>
