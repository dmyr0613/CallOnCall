<?php session_start(); ?>
<?php require 'admin-header.php'; ?>

<!-- Main -->
	<div id="main">
		<div class="inner">

				<!-- Header -->
				<?php require 'admin-header-sub.php'; ?>

				<!-- messageSend -->
				<section id="messageSend">
					<?php

          if (!empty($_REQUEST)) {
            //引数でLINE_IDを取得
						$obj = $_REQUEST;
						foreach ($obj as $key => $val){
							error_log($key);

							echo($key);
							echo($_REQUEST['msg_no']);
							echo($key['msg_no']);
							echo($val['msg_no']);

							if ($_REQUEST['msg_no'] > 0) {
								//文字列にphone_noが含まれる場合
								// $key = substr($key, 9);	//PhoneNoアドレスを抜き取ります。
								// error_log($key);

								// $options = '{"contacts": [{ "phone_number": "09076114485" }], "text_message": "' . $message2 . '" }';
								// $options = '{"contacts": [{ "phone_number": "' . $key . '" }], "text_message": "' . $message2 . '" }';
								$url = "http://call-on-call.herokuapp.com/calling-set.php?device_name=dmyr-iPhone6s&msg_no=" . $_REQUEST['msg_no'];
								$ch = curl_init();
								curl_setopt($ch, CURLOPT_URL, $url);
								// curl_setopt($ch, CURLOPT_HTTPHEADER, array('token: ', 'Content-Type: application/json'));
								// curl_setopt($ch, CURLOPT_POST, 1);
								// curl_setopt($ch, CURLOPT_POSTFIELDS, json_encode($options));
								// curl_setopt($ch, CURLOPT_POSTFIELDS, $options);
								// curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);

								// $response = curl_exec($ch);
								curl_close($ch);
								error_log(print_r($response, true));
							}
						}

            echo '<p>メッセージNoを更新しました。</p>';
						echo '<ul class="actions">';
						echo '<li><a href="admin-callinglist.php" class="button big">戻る</a></li>';
						echo '</ul>';
          }

					?>
				</section>

			</div>
		</div>

<?php require 'admin-menu.php'; ?>
<?php require 'footer.php'; ?>
