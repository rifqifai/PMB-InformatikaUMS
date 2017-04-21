<?php
$total_results 	= mysql_result(mysql_query("SELECT COUNT(*) FROM admin"),0);

//DELETE ROWS
$mod 			= isset($_GET['mod']) ? $_GET['mod'] : NULL;
$id_del 		= isset($_GET['id']) ? $_GET['id'] : NULL;

if ($mod == "del") {
	$q_del = mysql_query("DELETE FROM admin WHERE id_admin = '$id_del'");

	if ($q_del) {
		echo "<h4 class='alert_success'>Data berhasil Dihapus. <span id='close'>[<a href='#'>X</a>]</span></h4>";
	} else {
		echo "<h4 class='alert_error'>".mysql_error()."<span id='close'>[<a href='#'>X</a>]</span></h4>";
	}
}
		
?>
<article class="module width_full">
	<header><h3>Edit Administrator | <a href="?p=edit_admin&mod=add"> Tambah Admin</a></h3></header>
		<div class="module_content">
		
		<?php		
		// ================ TAMPILKAN DATANYA =====================//
		echo "<table border='1' class='data'><tr><th width='10%'>ID</th><th width='40%'>Nama Admin</th><th width='20%'>Username</th><th width='30%'>Pilihan</th></tr>";
		$q_admin 	= mysql_query("SELECT * FROM admin ORDER BY id_admin") or die (mysql_error());
		$j_data 	= mysql_num_rows($q_admin);

		if ($j_data == 0) {
			echo "<tr><td id='tengah' colspan='3'>-- Tidak Ada Data --</td></tr>";
		} else {
			$no = 1;
			while ($a_admin = mysql_fetch_array($q_admin)) {
				echo "<tr>
				<td id='tengah'>$a_admin[0]</td>
				<td>$a_admin[1]</td>
				<td id='tengah'>$a_admin[2]</td>
				<td id='tengah'><a href='?p=edit_admin&mod=edit&id=$a_admin[0]'>Edit</a> |
				<a href='?p=data_setting&mod=del&id=$a_admin[0]' onclick=\"return konfirmasi('Menghapus data $a_admin[1]')\">Delete</a>
				</tr>";
				$no++;
			}
		}
		echo "</table>";
		?>

		</div>
</article>

