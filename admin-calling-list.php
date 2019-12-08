<?php session_start(); ?>
<?php require 'admin-header.php'; ?>

<!-- Main -->
	<div id="main">
		<div class="inner">

				<!-- Header -->
				<?php require 'admin-header-sub.php'; ?>

				<!-- reserveMain -->
				<section id="reserveMain">
					<?php

						// デバイス情報を取得する。
						$sql=$pdo->prepare('select * from calling order by device_name');
						$sql->execute();

						echo '<form action="admin-calling-send.php" method="post">';				//送信用のpost
						echo '<table>';
						echo '<th>デバイス名</th><th>メッセージNo</th><th>コメント</th>';
						foreach ($sql as $row) {
							echo '<tr>';
							echo '<td>', $row['device_name'], '</td>';
							// 一意にするため、nameにデバイス名を付加する。
							echo '<td><input type="number" name="msg_no_' . $row['device_name'] . '" value="', $row['msg_no'], '" class="input_number_only"></td>';
							echo '<td>', $row['comment'], '</td>';
						}
						echo '</table>';
						echo '<input type="submit" class="button primary small" value="Register">';
						echo '</form>';
						// echo '<p>';
						// echo '<input type="button" value="メッセージPUSH送信開始" id="startcount" onclick="startShowing();">';
						// echo '　';
				    // echo '<input type="button" value="停止" id="endcount" onclick="stopShowing();">';
						// echo '</p>';
						// echo '<p id="PassageArea">(カウントを表示します)</p>';
					?>
				</section>

			</div>
		</div>

<?php require 'admin-menu.php'; ?>
<?php require 'footer.php'; ?>

<script type="text/javascript">
	var PassSec;   // 秒数カウント用変数

	// 繰り返し処理の中身
	function showPassage() {

		//WebAPIを呼び出し（プッシュ通知ALL）
		var request = new XMLHttpRequest();
		request.open('GET', 'http://calloncall.herokuapp.com/calling-push-all.php', true);
		request.onload = function () {
			//
		};
		request.send();

	   PassSec++;   // カウントアップ
	   var msg = "送信ボタンを押してから " + PassSec + "回 送信しました。";   // 表示文作成
	   document.getElementById("PassageArea").innerHTML = msg;   // 表示更新
	}

	// 繰り返し処理の開始
	function startShowing() {
	   PassSec = 0;   // カウンタのリセット
	   PassageID = setInterval('showPassage()',3000);   // タイマーをセット(1000ms間隔)
	   document.getElementById("startcount").disabled = true;   // 開始ボタンの無効化
	}

	// 繰り返し処理の中止
	function stopShowing() {
	   clearInterval( PassageID );   // タイマーのクリア
	   document.getElementById("startcount").disabled = false;   // 開始ボタンの有効化
	}
</script>
