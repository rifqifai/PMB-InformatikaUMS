<?php
include "lib/fungsi.php";
$nav				= "";
$ambil				= "home.php";

$sesi_username			= isset($_SESSION['username']) ? $_SESSION['username'] : NULL;

if ($sesi_username != NULL || !empty($sesi_username)) {

	$identitas_sekolah 	= getSekolah();

	$p 					= isset($_GET['p']) ? $_GET['p'] : "";
	
	if ($p == "") {
		$nav 	= "Depan";
		$ambil 	= "home.php";
	} elseif ($p == "daftar_form") {
		$nav 	= "Pendaftaran";
		$ambil 	= "daftar_form.php";
	} elseif ($p == "daftar_data") {
		$nav 	= "Data Pendaftar";
		$ambil 	= "$p.php";
	} elseif ($p == "daftar_prosedur") {
		$nav 	= "Prosedur Pendaftaran";
		$ambil 	= "$p.php";
	} elseif ($p == "data_statistik") {
		$nav 	= "Statistik Pendaftar";
		$ambil 	= "$p.php";
	} elseif ($p == "data_setting") {
		$nav 	= "Setting";
		$ambil 	= "$p.php";		
	} elseif ($p == "edit_admin") {
		$nav 	= "Edit Admin";
		$ambil 	= "$p.php";	
	} else if ($p == "logout") {
		session_destroy();
		$nav 	= "Depan";
		$ambil 	= "home.php";
		echo "<meta http-equiv='refresh' content='0; url=index.php'>";
	// kecuali di atas...
	} else {
		$nav 	= "Depan";
		$ambil 	= "home.php";
	}
?>
<!doctype html>
<html lang="en">

<head>
	<meta charset="utf-8"/>
	<title>PMB ADMIN INFORMATIKA UMS 2015</title>
	
	<link rel="stylesheet" href="css/layout.css" type="text/css" media="screen" />
	<script src="js/jquery-1.5.2.min.js" type="text/javascript"></script>
	<script src="js/hideshow.js" type="text/javascript"></script>
	<script src="js/jquery.tablesorter.min.js" type="text/javascript"></script>
	<script type="text/javascript" src="js/jquery.equalHeight.js"></script>
	<script type="text/javascript" src="js/validation.js"></script>
	<script type="text/javascript" src="js/editor/wysiwyg.js"></script>
	<script type="text/javascript">
	
	function buka(file) {
		window.open(file);
	}
	
	function konfirmasi(apa) {
		tanya = confirm('Apakah anda yakin ingin \r\r'+ apa + '\r\r ?');
		if (tanya == true) return true;
		else return false;
	}
	
	$(document).ready(function() 
    	{ 
      	  $(".tablesorter").tablesorter(); 
   	 } 
	);
	$(document).ready(function() {

	//When page loads...
	$(".tab_content").hide(); //Hide all content
	$("ul.tabs li:first").addClass("active").show(); //Activate first tab
	$(".tab_content:first").show(); //Show first tab content

	//On Click Event
	$("ul.tabs li").click(function() {

		$("ul.tabs li").removeClass("active"); //Remove any "active" class
		$(this).addClass("active"); //Add "active" class to selected tab
		$(".tab_content").hide(); //Hide all tab content

		var activeTab = $(this).find("a").attr("href"); //Find the href attribute value to identify the active tab + content
		$(activeTab).fadeIn(); //Fade in the active ID content
		return false;
	});

});
    </script>
    <script type="text/javascript">
    $(function(){
        $('.column').equalHeight();
    });
</script>

</head>


<body>

	<header id="header">
		<hgroup>
			<h1 class="site_title"><a href="index.php">INFORMATIKA UMS</a></h1>			
			<h6 class="alamat">Fakultas Komunikasi dan Informatika</h6>
			<h2 class="section_title">Admin PMB</h2>
		</hgroup>
	</header> <!-- end of header bar -->
	
	<section id="secondary_bar">
		<div class="user">
			<p><span style="font-weight: normal; text-decoration:none">Log As : </span><?php echo $_SESSION['username']; ?></p>
			<!-- <a class="logout_user" href="#" title="Logout">Logout</a> -->
		</div>
		<div class="breadcrumbs_container">
			<article class="breadcrumbs"><a href="index.php">Aplikasi PMB</a> <div class="breadcrumb_divider"></div> <a class="current"><?php echo $nav; ?></a></article>
		</div>
	</section><!-- end of secondary bar -->
	
	<aside id="sidebar" class="column">
		
		
		<h3>Pendaftaran</h3>
		<ul class="toggle">
			<li class="icn_new_article"><a href="?p=index.php">Beranda</a></li>
			<li class="icn_new_article"><a href="?p=daftar_form&mod=add">Daftar Baru</a></li>
			<li class="icn_new_article"><a href="?p=daftar_prosedur">Prosedur Pendaftaran</a></li>
		</ul>
		<h3>Data</h3>
		<ul class="toggle">
			<li class="icn_edit_article"><a href="?p=daftar_data">Lihat Data Pendaftar</a></li>
			<li class="icn_edit_article"><a href="?p=data_statistik">Statistik Pendaftar</a></li>
		</ul>

		</ul>
		<h3>Admin</h3>
		<ul class="toggle">
			<li class="icn_settings"><a href="?p=data_setting">Setting</a></li>
			<li class="icn_jump_back"><a href="?p=logout" onclick="return konfirmasi('LOG OUT');">Logout</a></li>
		</ul>
			
		<footer>
			<hr />
			<p><strong><a href="#">&copy; PMB Informatika UMS</br>Universitas Muhammadiyah Surakarta</a></strong></p>
 		</footer>
	</aside><!-- end of sidebar -->
	
	<section id="main" class="column">
		<?php include $ambil; ?>
		<div class="spacer"></div>
	</section>
	<script type="text/javascript">
	$('#close').click(function() {
		$('.alert_success').slideUp("fast");
		$('.alert_error').slideUp("fast");
	});
	
	generate_wysiwyg('prosedur');
	generate_wysiwyg('beranda');
	</script>

</body>

</html>
<?php 
} else {
	echo "<meta http-equiv='refresh' content='0; url=umum/index.php'>";
}
?>