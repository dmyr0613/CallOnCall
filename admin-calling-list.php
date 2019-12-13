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
						echo '<h4>メッセージNo入力後、REGISTERボタンにて通知メッセージを送信します。</h4>';
						echo '<th>デバイス名</th><th>メッセージNo</th><th>コメント</th>';
						foreach ($sql as $row) {
							echo '<tr>';
							echo '<td>', $row['device_name'], '</td>';
							// 一意にするため、nameにデバイス名を付加する。
							echo '<td><input type="number" name="msg_no_' . $row['device_name'] . '" value="', $row['msg_no'], '" class="input_number_only"></td>';
							echo '<td>', $row['comment'], '</td>';
						}
						echo '</table>';
						echo '<input type="submit" class="button primary" value="Register">';

						// echo '<p>';
						// echo '<input type="hidden" name="msg_no_" value="101"/>';
						// echo '<button type="submit" class="button primary" >アラートNo1</button>';
						// echo '</p>';

						echo '</form>';

						// echo '<p>';
						// echo '<input type="button" value="メッセージPUSH送信開始" id="startcount" onclick="startShowing();">';
						// echo '　';
				    // echo '<input type="button" value="停止" id="endcount" onclick="stopShowing();">';
						// echo '</p>';
						// echo '<p id="PassageArea">(カウントを表示します)</p>';

						echo '<h4>下記ボタンクリックでも通知メッセージを送信します。</h4>';
						echo '<p>';
						echo '<input type="button" value="通知No1" id="sendAlart1" onclick="sendAlart(1);">';
						echo '　';
						echo '<input type="button" value="通知No2" id="sendAlart2" onclick="sendAlart(2);">';
						echo '　';
						echo '<input type="button" value="通知No3" id="sendAlart3" onclick="sendAlart(3);">';
						echo '　';
						echo '<input type="button" value="通知No4" id="sendAlart4" onclick="sendAlart(4);">';
						echo '　';
						echo '<input type="button" value="通知No5" id="sendAlart5" onclick="sendAlart(5);">';
						echo '</p>';
						echo '<p>';
						echo '<input type="button" value="アラートNo1" id="sendAlart1" onclick="sendAlart(101);">';
						echo '　';
						echo '<input type="button" value="アラートNo2" id="sendAlart2" onclick="sendAlart(102);">';
						echo '　';
						echo '<input type="button" value="アラートNo3" id="sendAlart3" onclick="sendAlart(103);">';
						echo '　';
						echo '<input type="button" value="アラートNo4" id="sendAlart4" onclick="sendAlart(104);">';
						echo '　';
						echo '<input type="button" value="アラートNo5" id="sendAlart5" onclick="sendAlart(105);">';
						echo '</p>';
						echo '<p><INPUT TYPE="button" class="button primary" VALUE="再読み込み" onClick="window.location.reload();"></p>';
						echo '<p id="PassageArea"></p>';
					?>
				</section>

			</div>
		</div>

<?php require 'admin-menu.php'; ?>
<?php require 'footer.php'; ?>

<script type="text/javascript">
	// var PassSec;   // 秒数カウント用変数
	//
	// // 繰り返し処理の中身
	// function showPassage() {
	//
	// 	//WebAPIを呼び出し（プッシュ通知ALL）
	// 	var request = new XMLHttpRequest();
	// 	request.open('GET', 'http://calloncall.herokuapp.com/calling-push-all.php', true);
	// 	request.onload = function () {
	// 		//
	// 	};
	// 	request.send();
	//
	//    PassSec++;   // カウントアップ
	//    var msg = "送信ボタンを押してから " + PassSec + "回 送信しました。";   // 表示文作成
	//    document.getElementById("PassageArea").innerHTML = msg;   // 表示更新
	// }
	//
	// // 繰り返し処理の開始
	// function startShowing() {
	//    PassSec = 0;   // カウンタのリセット
	//    PassageID = setInterval('showPassage()',3000);   // タイマーをセット(1000ms間隔)
	//    document.getElementById("startcount").disabled = true;   // 開始ボタンの無効化
	// }
	//
	// // 繰り返し処理の中止
	// function stopShowing() {
	//    clearInterval( PassageID );   // タイマーのクリア
	//    document.getElementById("startcount").disabled = false;   // 開始ボタンの有効化
	// }

	// アラート送信用 （引数にmsg_no）
	function sendAlart(msg_no) {

		//WebAPIを呼び出し
		var request = new XMLHttpRequest();
		request.open('GET', 'http://calloncall.herokuapp.com/calling-set.php?device_name=&msg_no=' + msg_no , true);
		request.onload = function () {
			//
		};
		request.send();

		 var msg = "通知を行いました。 メッセージNo:" + msg_no;   // 表示文作成
		 document.getElementById("PassageArea").innerHTML = msg;   // 表示更新

		 // window.location.reload();
	}
</script>
