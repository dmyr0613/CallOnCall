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
						$msg_no = 0;

						// デバイス情報を取得する。
						$sql=$pdo->prepare('select * from call_message order by msg_no');
						$sql->execute();

						echo '<form action="admin-msg-send.php" method="post">';				//送信用のpost
						echo '<table>';
						echo '<th>メッセージNo</th><th>メッセージ</th>';
						foreach ($sql as $row) {
							$msg_no = $row['msg_no'];
							echo '<tr>';
							echo '<td>', $msg_no, '</td>';
							// 一意にするため、nameにデバイス名を付加する。　
							echo '<td><input type="text" name="msg_no_' . $msg_no . '" value="', $row['message'], '"></td>';
						}
						//追加用のレコード
						$msg_no = $msg_no + 1;
						echo '<tr>';
						echo '<td>', $msg_no, '</td>';
						echo '<td><input type="text" name="msg_no_' . $msg_no . '" value=""></td>';
						echo '</table>';
						echo '<input type="submit" class="button primary small" value="Register">';
						echo '</form>';

					?>
				</section>

			</div>
		</div>

<?php require 'admin-menu.php'; ?>
<?php require 'footer.php'; ?>
