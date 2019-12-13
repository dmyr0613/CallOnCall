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
						$obj = $_REQUEST;
						error_log(print_r($obj, true));

						foreach ($obj as $key => $val){
							// error_log($key);
							// if (substr_count($key, 'msg_no_') == 1) {
							// 	//文字列にmsg_noが含まれる場合
							// 	$msg_no = substr($key, 7);	//メッセージNoを抜き取る。
							// 	error_log($msg_no);
							// 	$message = $_REQUEST['msg_no_' . $msg_no];
							// 	error_log($message);
							//
							// 	if ($msg_no > 0 && $message != "") {
							// 		error_log("メッセージ更新");
							// 		//webAPIにて、メッセージ更新チェック
							// 		$url = "http://calloncall.herokuapp.com/calling-msg-check.php?msg_no=" . $msg_no . "&message=" . $message;
							// 		$ch = curl_init();
							// 		curl_setopt($ch, CURLOPT_URL, $url);
							//
							// 		$response = curl_exec($ch);
							// 		curl_close($ch);
							// 		error_log(print_r($response, true));
							// 	}
							// }

							if (substr_count($key, 'mod_') == 1) {
								//文字列にmod_が含まれる場合は修正
								$msg_no = substr($key, 4);	//メッセージNoを抜き取る。
								error_log("修正メッセージNo." . $msg_no);
								$message = $_REQUEST['msg_no_' . $msg_no];
								error_log($message);

								if ($msg_no > 0 && $message != "") {
									//webAPIにて、メッセージ更新チェック
									$url = "http://calloncall.herokuapp.com/calling-msg-check.php?msg_no=" . $msg_no . "&message=" . $message;
									$ch = curl_init();
									curl_setopt($ch, CURLOPT_URL, $url);

									$response = curl_exec($ch);
									curl_close($ch);
									error_log(print_r($response, true));
								}
							} elseif (substr_count($key, 'del_') == 1) {
								//文字列にmod_が含まれる場合は削除
								$msg_no = substr($key, 4);	//メッセージNoを抜き取る。
								error_log("削除メッセージNo." . $msg_no);
								//webAPIにて、メッセージ更新チェック
								$url = "http://calloncall.herokuapp.com/calling-msg-delete.php?msg_no=" . $msg_no;
								$ch = curl_init();
								curl_setopt($ch, CURLOPT_URL, $url);

								$response = curl_exec($ch);
								curl_close($ch);
								error_log(print_r($response, true));
							} elseif (substr_count($key, 'ins_no') == 1) {
								//文字列にins_noが含まれる場合は追加
								$msg_no = $_REQUEST['ins_no'];
								error_log("追加メッセージNo." . $msg_no);
								$message = $_REQUEST['ins_msg'];
								error_log($message);

								if ($msg_no > 0 && $message != "") {
									//webAPIにて、メッセージ更新チェック
									$url = "http://calloncall.herokuapp.com/calling-msg-check.php?msg_no=" . $msg_no . "&message=" . $message;
									$ch = curl_init();
									curl_setopt($ch, CURLOPT_URL, $url);

									$response = curl_exec($ch);
									curl_close($ch);
									error_log(print_r($response, true));
								}
							}
						}

            echo '<p>メッセージを更新しました。</p>';
						echo '<ul class="actions">';
						echo '<li><a href="admin-msg-list.php" class="button big">戻る</a></li>';
						echo '</ul>';
          }

					?>
				</section>

			</div>
		</div>

<?php require 'admin-menu.php'; ?>
<?php require 'footer.php'; ?>
