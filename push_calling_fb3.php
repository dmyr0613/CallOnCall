<?php
try{

	if (!empty($_GET)) {

    // 送信する文字列
    $alert = $_GET['message'];

		$options = '{';
		$options = $options . '  "ghkit":"hekuu759kh",';
		$options = $options . '  "code":"235684",';
		$options = $options . '  "message":"' . $alert . '"';
		$options = $options . '}';

		$ch = curl_init();
		curl_setopt($ch, CURLOPT_URL, 'https://zero.ghkit.jp/');
		// curl_setopt($ch, CURLOPT_HTTPHEADER, array('Authorization: Bearer ya29.ElqKBGN2Ri_Uz...HnS_uNreA', 'Content-Type: application/json'));
		curl_setopt($ch, CURLOPT_HTTPHEADER, array('Content-Type: application/json'));
		curl_setopt($ch, CURLOPT_POST, 1);
		// curl_setopt($ch, CURLOPT_POSTFIELDS, json_encode($options));
		curl_setopt($ch, CURLOPT_POSTFIELDS, $options);
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);

		$response = curl_exec($ch);
		curl_close($ch);
		error_log(print_r($response, true));


		// $ch = curl_init();
		// curl_setopt($ch, CURLOPT_HTTPHEADER, array('Content-Type: application/json'));
		// curl_setopt($ch, CURLOPT_CUSTOMREQUEST, 'POST');
		// curl_setopt($ch, CURLOPT_POSTFIELDS, $data_json);
		// curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
		// curl_setopt($ch, CURLOPT_URL, 'http://posttestserver.com/post.php');
		// $result=curl_exec($ch);
		// echo 'RETURN:'.$result;
		// curl_close($ch);

  }

}catch (PDOException $e){
  print('Error:'.$e->getMessage());
  die();
}

?>
