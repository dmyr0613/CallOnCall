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
						$sql=$pdo->prepare('select * from call_message order by device_name');
						$sql->execute();

						echo '<form action="admin-mesg-send.php" method="post">';				//送信用のpost
						echo '<table>';
						echo '<th>メッセージNo</th><th>メッセージ</th>';
						foreach ($sql as $row) {
							echo '<tr>';
							echo '<td>', $row['msg_no'], '</td>';
							// 一意にするため、nameにデバイス名を付加する。
							echo '<td><input type="text" name="msg_no_' . $row['msg_no'] . '" value="', $row['message'], '"></td>';
						}
						echo '</table>';
						echo '<input type="submit" class="button primary small" value="Register">';
						echo '</form>';

					?>
				</section>

			</div>
		</div>

<?php require 'admin-menu.php'; ?>
<?php require 'footer.php'; ?>
