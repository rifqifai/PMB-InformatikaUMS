<?php

$n_sek_baru	= "";
$mode_form	= isset($_GET['mod']) ? $_GET['mod'] : "";
$id_admin	= isset($_GET['id']) ? $_GET['id'] : "";

$p_tombol	= isset($_POST['kirim_daftar']) ? $_POST['kirim_daftar'] : "";

//variabel POST

$p_id_admin 	= isset($_POST['id_admin']) ? $_POST['id_admin'] : "";
$p_nama_admin 	= isset($_POST['nama_admin']) ? $_POST['nama_admin'] : "";

$p_u 			= isset($_POST['u']) ? $_POST['u'] : "";		
$p_p			= isset($_POST['p']) ? $_POST['p'] : "";
$p_email		= isset($_POST['email_admin']) ? $_POST['email_admin'] : "";	

$ip 			= $_SERVER['REMOTE_ADDR'];

$p_submit		= "DAFTAR";


if ($mode_form == "add") {

	/// ELSE IF "EDIT"
} else if ($mode_form == "edit") {
	$q_data_edit	= mysql_query("SELECT * FROM admin WHERE id_admin = '$id_admin'");
	$a_data_edit	= mysql_fetch_array($q_data_edit);

	$p_id_admin	= $a_data_edit[0];		$p_nama_admin		= $a_data_edit[1];
	$p_u		= $a_data_edit[2];		$p_p 				= $a_data_edit[3];
	$p_email	= $a_data_edit[4];
	
	$p_submit	= "EDIT";	
}


/*-------- ACTION --------------*/
if ($p_tombol == "DAFTAR") {
	/* PENGECEKAN INPUTAN KOSONG YANG ke-2 sekaligus akses LANGSUNG lewat $_GET */
	//echo $p_tgl_lahir
	$pass = acakHuruf();
	if ($p_nama_admin == "" || $p_u == "" || $p_p == "" || $p_email == "") {
		
		echo "<h4 class='alert_error'>Kesalahan pada pengisian form (Masih kosong)<span id='close'>[<a href='#'>X</a>]</span></h4>";
	} else {
			
				$q_daftar	= mysql_query("INSERT INTO admin VALUES 
							('', '$p_nama_admin', '$p_u', '$p_p', '$p_email')");
				if ($q_daftar) {
					echo "<meta http-equiv='refresh' content='0; url=?p=data_setting'>";
				} else {
					echo "<h4 class='alert_error'>".mysql_error()."<span id='close'>[<a href='#'>X</a>]</span></h4>";
				}
			}
} else if ($p_tombol == "EDIT") {
	if ($p_nama_admin == "" || $p_u == "" || $p_p == "" || $p_email == "") {
		
		echo "<h4 class='alert_error'>Kesalahan pada pengisian form (Masih kosong)<span id='close'>[<a href='#'>X</a>]</span></h4>";
	} else {
	
	
		//INTINYA... INSERT Data Pendaftar ke tabel "admin" */
		$q_daftar	= mysql_query("UPDATE admin SET 
				 nama_admin = '$p_nama_admin', u = '$p_u', p = '$p_p', 
				 email_admin = '$p_email'
				 WHERE id_admin = '$p_id_admin'");
		if ($q_daftar) {
			echo "<h4 class='alert_success'>Data berhasil diperbaharui. $n_sek_baru<span id='close'>[<a href='#'>X</a>]</span></h4>";
		} else {
			echo "<h4 class='alert_error'>".mysql_error()."<span id='close'>[<a href='#'>X</a>]</span></h4>";
		}
	}
}

?>


<article class="module width_full">
	<header><h3>Edit Data Administrator</h3></header>
	<div class="module_content">
	<form action="?p=edit_admin" method="post" name="form_daftar">
	<input type="hidden" name="id_admin" value="<?php echo $id_admin; ?>">
	<table class="tbl_form">
		<?php
		cInput("Nama Admin", "nama_admin", "45", $p_nama_admin);
		cInput("Username", "u", "20", $p_u);
		?>
		<tr><td>Password</td><td><input type="password" name="p" value=""></td></tr>
		<?php
		cInput("Email", "email_admin", "30", $p_email);
		?>
	<tr><td colspan="2">
	<input type="checkbox" name="data_ok"> <label for="data_ok">Dengan ini saya menyatakan data administrator yang saya isikan adalah Benar adanya sesuai dengan bukti-bukti yang ada</label><br><br>
	<center><input type="submit" name="kirim_daftar" value="<?php echo $p_submit; ?>" id="tombol"></center>
	</td></tr>
	</table>
	</form>
	</div>
</article>
