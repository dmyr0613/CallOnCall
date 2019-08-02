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
								$device_name = substr($key, 7);	//デバイス名を抜き取る。
								error_log($device_name);
								$msg_no = $_REQUEST['msg_no_' . $device_name];
								error_log($msg_no);

								if ($msg_no > 1) {
									//meg_noの指定がある場合は、webAPIにて、メッセージNoを更新する。
									$url = "http://call-on-call.herokuapp.com/calling-set.php?device_name=" . $device_name . "&msg_no=" . $msg_no;
									$ch = curl_init();
									curl_setopt($ch, CURLOPT_URL, $url);

									$response = curl_exec($ch);
									curl_close($ch);
									error_log(print_r($response, true));
								}
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
