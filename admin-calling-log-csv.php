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

					// ダウンロードするサーバのファイルパス
					$filepath = 'sample.csv';

					// HTTPヘッダを設定
					header('Content-Type: application/octet-stream');
					header('Content-Length: '.filesize($filepath));
					header('Content-Disposition: attachment; filename=download.csv');

					// ファイル出力
					readfile($filepath);

					?>
				</section>

			</div>
		</div>

<?php require 'admin-menu.php'; ?>
<?php require 'footer.php'; ?>
