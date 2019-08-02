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

						echo '<form action="admin-callingsend.php" method="post">';				//送信用のpost
						echo '<table>';
						echo '<th>デバイス名</th><th>メッセージNo</th><th>コメント</th>';
						foreach ($sql as $row) {
							echo '<tr>';
							echo '<td>', $row['device_name'], '</td>';
							// echo '<td>', $row['msg_no'], '</td>';
							echo '<td><input type="number" name="msg_no_"' . $row['device_name'] . 'value="', $row['msg_no'], '"></td>';
							echo '<td>', $row['comment'], '</td>';
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
