<?php
include "lib/fungsi.php";
$q_kop = mysql_query("SELECT * FROM t_info WHERE admin = 'admin'");
$a_kop = mysql_fetch_array($q_kop);

?>
<html>
	<head>
	<link href="css/print.css" media="print" rel="stylesheet" type="text/css" />
	<link href="css/print.css" media="screen" rel="stylesheet" type="text/css" />
	</head>
	
	<body onload="print();">
		<table class="cetak">
			<tr style="border-bottom: solid 4px">
				<td align="center">
				<br>
				<h1>SISTEM PENERIMAAN MAHASISWA BARU ONLINE</h1>
				<h2>Program Studi <?php echo $a_kop[1]; ?></h2>
				<h3>Alamat : <?php echo $a_kop[2]; ?></h3>
				<br>
				</td>
			</tr>

			<tr>
			<td colspan="2"><br>

			<center><h3>DATA PENDAFTAR</h3></center><br>

			<tablE class="data" width="80%" align="center">
				<?php
				$dari = isset($_GET['dari']) ? $_GET['dari'] : "";
				
				if ($dari == "umum") {
					$nisn = $_GET['nisn'];
					$Q = "SELECT * FROM master WHERE nisn = '$nisn'";
					$q = mysql_query($Q);
					$a = mysql_fetch_array($q);
				} else {
					$id_daftar = $_GET['id_daftar'];
					$q = mysql_query("SELECT * FROM master WHERE id_daftar = '$id_daftar'");
					$a = mysql_fetch_array($q);
				}
				
				echo "<tr><th colspan='2'>Data Siswa</th></tr>";
				cFDfield("NISN", $a[43]);
				cFDfield("Nama", $a[1]);
				cFDfield("Jenis Kelamin", getJK($a[2]));
				cFDfield("Agama", getAgama($a[3]));
				cFDfield("Tempat, Tanggal Lahir", $a[4].", ".$a[5]);
				cFDfield("Alamat", $a[6]);
				cFDfield("No. HP", $a[44]);
				
				echo "<tr><th colspan='2'>Data Keluarga</th></tr>";
				cFDfield("Nama Ayah", $a['k_nama_ay']);
				cFDfield("Pendidikan Ayah", getPendidikan($a['k_pend_ay']));
				cFDfield("Pekerjaan Ayah", getPekerjaan($a['k_pkj_ay']));
				cFDfield("Nama Ibu", $a[13]);
				cFDfield("Pendidikan Ibu", getPendidikan($a[14]));
				cFDfield("Pekerjaan Ibu", getPekerjaan($a[15]));
				cFDfield("No. HP", $a[47]);
				
				echo "<tr><th colspan='2'>Data Lulus</th></tr>";
				cFDfield("Tahun Lulus", $a[16]);
				cFDfield("Nomor Ijazah", $a[17]);
				cFDfield("Asal Sekolah", $a[18]);
				cFDfield("Alamat Sekolah", $a[20]);

				echo "<tr><th colspan='2'>Data Nilai</th></tr>";
				cFDfield("Bahasa Inggris", $a[22]);
				cFDfield("Bahasa Indonesia", $a[23]);
				cFDfield("Matematika", $a[24]);
				cFDfield("IPA", $a[25]);

				echo "<tr><th colspan='2'>Prestasi</th></tr>";
				cFDfield("Prestasi 1", $a[26]);
				cFDfield("Tingkat 1", getTktPrestasi($a[27]));
				cFDfield("Prestasi 2", $a[29]);
				cFDfield("Tingkat 2", getTktPrestasi($a[30]));
				cFDfield("Prestasi 3", $a[32]);
				cFDfield("Tingkat 3", getTktPrestasi($a[33]));

				echo "<tr><th colspan='2'>Username & Password Login</th></tr>";
				cFDfield("Username", "<b>".$a[41]."</b>");
				cFDfield("Password", "<b>".$a[42]."</b>");
				cFDfield("Telah Terdaftar Pada", $a[39]);

				
				?>
			</table>
			</td>
			</tr>
		</table>
	</body>
</html>