<?php
try{

	if (!empty($_GET)) {

    // $deviceToken = '851fd0ba8b728b47d765f2d2bc90140474d5bb0c945606734c5e07d8dd40abc0';
    //トークンを取得
    $deviceToken = $_GET['token'];
		//メッセージNoを取得
		$msg_no = 0;
		$msg_no = $_GET['msg_no'];
    // 送信する文字列
    // $alert = 'Push test.';
    $alert = $_GET['message'];

    // バッジ
    $badge = 0;

    $body = array();
    $body['aps'] = array( 'alert' => $alert );
    // $body['aps']['badge'] = $badge;
		$body['aps']['sound'] = 'default';
		$body['aps']['badge'] = 1;
		$body['aps']['mutable-content'] = 1;
		$body['image-url'] = 'http://call-on-call.herokuapp.com/images/icon60_1.png';


    // SSL証明書
    $cert = 'CallOnCall_develop.pem';

    $url = 'ssl://gateway.sandbox.push.apple.com:2195'; // 開発用
    //$url = 'ssl://gateway.push.apple.com:2195'; // 本番用

    $context = stream_context_create();
    stream_context_set_option( $context, 'ssl', 'local_cert', $cert );
    $fp = stream_socket_client( $url, $err, $errstr, 60, STREAM_CLIENT_CONNECT, $context );

    if( !$fp ) {
        echo 'Failed to connect.' . PHP_EOL;
        exit( 1 );
    }

    $payload = json_encode( $body );
    $message = chr( 0 ) . pack( 'n', 32 ) . pack( 'H*', $deviceToken ) . pack( 'n', strlen($payload ) ) . $payload;

    print 'send message:' . $payload . PHP_EOL;

    fwrite( $fp, $message );
    fclose( $fp );
  }

}catch (PDOException $e){
  print('Error:'.$e->getMessage());
  die();
}

?>
