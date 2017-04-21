<article class="module width_full">
	<header><h3>Prosedur Pendaftaran Calon Penerimaan Mahasiswa Baru</h3></header>
		<div class="module_content">
		<?php
		$q_prosedur = mysql_query("SELECT * FROM t_info WHERE flag = '1'");
		$a_prosedur = mysql_fetch_array($q_prosedur);
		
		echo "<p align='justify'>$a_prosedur[8]</p>";
		?>
		</div>
</article>