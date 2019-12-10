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

						// ログ情報を取得する。
						$sql=$pdo->prepare('select * from calling_log order by insert_datetime desc');
						$sql->execute();

						echo '<form action="admin-calling-log-csv.php" method="post">';				//送信用のpost
						echo '<table>';
						echo '<th>登録時間</th><th>確認時間</th><th>デバイス名</th><th>メッセージNo</th>';
						foreach ($sql as $row) {
							echo '<tr>';
							echo '<td>', $row['insert_datetime'], '</td>';
							echo '<td>', $row['update_datetime'], '</td>';
							echo '<td>', $row['device_name'], '</td>';
							echo '<td>', $row['msg_no'], '</td>';

							$logarray = array(
							    "insert_datetime" => $row['insert_datetime'],
									"update_datetime" => $row['update_datetime'],
									"device_name" => $row['device_name'],
									"msg_no" => $row['msg_no'],
							);
						}
						echo '</table>';
						echo '<input type="submit" class="button primary small" value="CSV出力">';
						echo '</form>';

						// error_log($logarray);
						error_log(print_r($logarray, true));
					?>
				</section>

			</div>
		</div>

<?php require 'admin-menu.php'; ?>
<?php require 'footer.php'; ?>
