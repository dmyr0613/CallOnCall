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
						foreach ($obj as $key => $val){
							error_log($key);

							if (substr_count($key, 'msg_no_') == 1) {
								//文字列にmsg_noが含まれる場合
								$msg_no = substr($key, 7);	//メッセージNoを抜き取る。
								error_log($msg_no);
								$message = $_REQUEST['msg_no_' . $msg_no];
								error_log($message);

								if ($msg_no > 0 && $message != "") {
									error_log("メッセージ更新");
									//webAPIにて、メッセージ更新チェック
									$url = "http://call-on-call.herokuapp.com/calling-msg-check.php?msg_no=" . $msg_no . "&message=" . $message;
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
