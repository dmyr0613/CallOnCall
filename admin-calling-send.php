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

								if ($msg_no > 0) {
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
						echo '<li><a href="admin-calling-list.php" class="button big">戻る</a></li>';
						echo '</ul>';
          }

					// タイマーを作り、2 秒後に起動します
					$w1 = new EvTimer(2, 0, function () {
					    echo "2 seconds elapsed\n";
					});
					
					// タイマーを作って 2 秒後に起動させ、その後は
					// 手で止めるまで 1 秒おきに繰り返します
					$w2 = new EvTimer(2, 1, function ($w) {
					    echo "is called every second, is launched after 2 seconds\n";
					    echo "iteration = ", Ev::iteration(), PHP_EOL;

					    // 5 回繰り返したあとでウォッチャーを止めます
					    Ev::iteration() == 5 and $w->stop();
					    // Stop the watcher if further calls cause more than 10 iterations
					    Ev::iteration() >= 10 and $w->stop();
					});

					?>
				</section>

			</div>
		</div>

<?php require 'admin-menu.php'; ?>
<?php require 'footer.php'; ?>
