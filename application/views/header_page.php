<!doctype html>
<html>

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title><?= $title ?></title>
	<link rel="icon" href="<?php echo base_url(); ?>/assets/Curiter.ico">
	<link rel="stylesheet" href="<?php echo base_url('assets/css/bootstrap.min.css') ?>">
	<script src="<?php echo base_url('assets/js/jquery.min.js') ?>"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js">
	</script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js">
	</script>
	<script src="<?= base_url('assets/js/fontawesome-all.js'); ?>">
	</script>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<script>
		function myFunction() {
			document.getElementById("myDropdown").classList.toggle("show");
		}

		window.onclick = function(event) {
			if (!event.target.matches('.dropbtn')) {
				var dropdowns = document.getElementsByClassName("dropdown-content");
				var i;
				for (i = 0; i < dropdowns.length; i++) {
					var openDropdown = dropdowns[i];
					if (openDropdown.classList.contains('show')) {
						openDropdown.classList.remove('show');
					}
				}
			}
		}
	</script>
	<style>
		body {
			min-height: 100vh;
			display: flex;
			flex-direction: column;
			position: relative;
			margin: 0;
			padding-bottom: 10%;
		}

		.container {
			width: 90%;
			margin: 0 auto;
		}

		.container1 {
			width: 100%;
			display: flex;
			justify-content: center;
		}

		.topnav,
		.fixed-footer {
			width: 100%;
			position: fixed;
			background: #dff0fe;
			padding: 10px 0;
			color: #7f91a1;
			font-family: Segoe, 'Segoe UI', 'DejaVu Sans', 'Trebuchet MS', Verdana, 'sans-serif';
			font-weight: 600;
		}

		.topnav {
			top: 0;
			box-shadow: 0 4px 4px -2px rgba(0, 0, 0, .2);
			z-index: 10;
		}

		.topnav-right {
			float: right;
		}

		.footer {
			position: absolute;
			width: 100%;
			bottom: 0;
			color: #7f91a1;
			font-family: Segoe, 'Segoe UI', 'DejaVu Sans', 'Trebuchet MS', Verdana, 'sans-serif';
			font-weight: 600;
			background: #FFFFFF;
			padding: 10px 0;

			/* position: fixed; */

		}

		nav a {
			color: #626d78;
			text-decoration: none;
			padding: 1px 5px;
			margin: 1px 40px;
			font-size: 16px;
		}

		a:hover,
		a:active {
			color: #477A98;
		}

		a:link {
			text-decoration: none;
		}

		.search {
			background-color: #FFFFFF;
			border: 2px solid #7f91a1;
			padding: 5px 10px;
			font-size: 15px;
			border-radius: 50px 0 0 50px;
			margin: 0px;
		}

		.search:hover {
			border: 2px solid #477A98;
		}

		/* #button{
			background-color: #FFFFFF;
			color: #477A98;
			border: 2px solid #477A98;
			padding: 5px 10px;
			margin: 0px 0px 4px 0px;
			font-size: 15px;
			border-radius: 0 50px 50px 0;
		}
		#button:hover{
			background-color: #477A98;
			color: #FFFFFF;
		} */
		.curiter {
			color: #477A98;
			font-size: 26px;
			padding-right: 20px;
		}

		/* .d-block.w-100{
			height: 50vh;
		} */
		.carousel.slide {
			overflow: auto;
		}

		.cards {
			display: flex;
			flex-wrap: wrap;
			justify-content: space-between;
		}

		.card {
			flex: 0 1 25%;
			border-radius: 20px;
			text-align: center;
			margin-top: 30px;

		}

		.card a {
			position: absolute;
			width: 100%;
			height: 100%;
			top: 0px;
			left: 0px;
		}

		.card:hover {
			box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
		}

		.card-img-top {
			width: 30%;
			margin-top: 10px;
		}

		.dropbtn {
			/*background-image:  url("<?php echo base_url(); ?>/Assets/settings.png");*/
			background-color: #FFFFFF;
			padding: 10px;
			border: none;
			cursor: pointer;
			border-radius: 50%;
		}

		.dropbtn:hover,
		.dropbtn:focus,
		.fa-gear:hover {
			color: black;
		}

		.dropdown {
			position: relative;
			display: inline-block;
		}

		.dropdown-content {
			display: none;
			position: absolute;
			background-color: #f1f1f1;
			min-width: 160px;
			overflow: auto;
			box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
			z-index: 1;
		}

		.dropdown-content a {
			color: black;
			padding: 10px 12px;
			text-decoration: none;
			display: block;
		}

		.dropdown a:hover {
			background-color: #477A98;
			color: #FFFFFF;
		}

		.show {
			display: block;
		}

		.fa-gear {
			color: #477A98;
			font-size: 24px;
		}

		.isidrop {
			font-weight: 100;
		}

		div.sticky {
			position: -webkit-sticky;
			position: sticky;
			margin-top: 100px;
			margin-left: 15px;
			/* box-shadow: 0 4px 4px -2px rgba(0,0,0,.2); */

			/* background-color: yellow; */
			/* padding-top:  50px; */
			font-size: 20px;
		}

		.sticky a {
			margin-right: 15px;
			color: black;
		}

		.sticky a:hover,
		a:active {
			color: #477A98;
		}

		#konten-kiri-atas {
			display: -webkit-flex;
			display: flex;
			width: 35%;
			float: left;
		}

		article {
			display: -webkit-flex;
			display: flex;
			/* width: 70%;
  height: 100%;
  /* float: left; */
			/* padding-bottom: 50%; */
		}

		.Tentang {
			margin-left: 45%;
			margin-right: 10%;
		}

		.kolom-fasilitas {
			float: left;
			width: 20%;
			padding: 3px;
			margin: 5px;
		}

		.konten-atas {
			padding-bottom: 18%;

		}

		.konten-bawah {
			margin-bottom: 15%;
			margin-top: 10px;

		}

		.konten-bawah-poliklinik {
			width: 50%;
			float: left;
			margin-bottom: 15%;


		}

		.konten-bawah-dokter {
			width: 50%;
			float: left;
			margin-bottom: 15%;


		}

		.popup-poli {
			visibility: hidden;
			position: absolute;
			background: #ffffff;
			border: 3px solid #477A98;
			border-radius: 15px;
			width: 30%;
			height: 60%;
			left: 25%;
		}

		.popup-poli.active {
			visibility: visible;
			text-align: justify;
		}

		.popup-konten-poli {
			visibility: hidden;
			margin: 5px 15px 5px 15px;

		}

		.popup-konten-poli.active {
			visibility: visible;
		}

		.kolom-pelayanan-poli {
			column-fill: auto;
			-webkit-column-fill: auto;
			-moz-column-fill: auto;
			column-width: 150px;
			-webkit-column-width: 150px;
			-moz-column-width: 150px;
		}

		.close-poli {
			margin-top: 20px;
			border: 3px solid #477A98;
			color: #477A98;
			border-radius: 10px;
			width: 75%;
			font-size: 25px;
		}

		.button-poli {
			border-radius: 13px;
			font-size: 13px;
			background-color: #477A98;
			border-color: #477A98;
			color: white;
			margin-bottom: 10px;
			/* margin-right: 4px; */
			width: 110px;
		}

		.button-janji {
			border-radius: 13px;
			font-size: 13px;
			background-color: #477A98;
			border-color: #477A98;
			color: white;
			margin-bottom: 10px;
			/* margin-right: 4px; */
			width: 110px;
		}

		.aboong,
		.aboong:hover {
			color: #7f91a1;
			text-decoration: none;
			cursor: default;
		}

		.table-striped {
			font-size: 20px;

		}

		.table-striped>tbody>tr:nth-child(2n+1)>td,
		.table-striped>tbody>tr:nth-child(2n+1)>th {
			background: rgba(236, 70, 56, .3);
		}

		.cari-dokter {
			width: 200px;
			box-sizing: border-box;
			border: 2px solid #ccc;
			border-radius: 4px;
			font-size: 16px;
			background-color: white;
			background-image: url('http://localhost/toobes/assets/kaca-pembesar.png');
			background-position: 8px 10px;
			background-size: 30px 30px;
			background-repeat: no-repeat;
			padding: 12px 20px 12px 40px;
			-webkit-transition: width 0.4s ease-in-out;
			transition: width 0.4s ease-in-out;
			margin-left: 15px;
		}

		.cari-dokter:focus {
			width: 91%;
			border-color: #477A98;
			outline: none;
		}

		.cari-rs {
			width: 200px;
			box-sizing: border-box;
			border: 2px solid #ccc;
			border-radius: 4px;
			font-size: 16px;
			background-color: white;
			background-image: url('http://localhost/toobes/Assets/kaca-pembesar.png');
			background-position: 8px 10px;
			background-size: 30px 30px;
			background-repeat: no-repeat;
			padding: 12px 20px 12px 40px;
			-webkit-transition: width 0.4s ease-in-out;
			transition: width 0.4s ease-in-out;
			margin-left: 15px;
		}

		.cari-rs:focus {
			width: 91%;
			border-color: #477A98;
			outline: none;
		}

		.button-edit {
			border-radius: 5px;
			font-size: 15px;
			outline: none;

		}

		.button-edit:hover {
			background-color: #477A98;
			color: white;
			outline: none;
		}

		.container-artikel {
			width: 90%;
			margin: 0 auto;
			padding-left: 5%;
			margin-top: 5%;

		}

		.body-artikel {
			float: left;
			font-size: 20px;
			/* margin-right: 2px; */
			text-align: justify;
			width: 60%;
		}

		.artikel-card {
			width: 30%;
			float: left;
			margin-left: 15px;

		}

		.artikel-card .card {
			width: 18rem;
			margin-top: 20px;
			border-radius: 20px;
			text-align: center;


		}

		.checked {
			color: orange;
		}
		
		@media screen and (max-width: 700px) {

			.row,
			.navbar {
				flex-direction: none;
			}
			
		}
		@media screen and (max-width: 850px) {
				body {
				margin: 0;
				padding-bottom: 20%;
			}
		}
		@media screen and (max-width: 500px) {
				body {
				margin: 0;
				padding-bottom: 40%;
				}
			}
	</style>
</head>

<body>
	<div class="topnav">
		<div class="container1">
			<nav class="navbar navbar-expand-lg navbar-light">
				<a class="curiter" href="<?= base_url('home/') ?>">Curiter</a>
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav mr-auto">
						<li class="nav-item">
							<a class="nav-link" href="<?= base_url('home/') ?>">Home <span class="sr-only">(current)</span></a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="<?= base_url('caridokterrs/') ?>">Jadwal Dokter</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="<?= base_url('rumahsakit/') ?>">Rumah Sakit</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="<?= base_url('about/') ?>">About</a>
						</li>
						<!-- <li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								<?php $cek = $this->session->all_userdata();
								echo "Halo, " . $cek['user']['fullname']; ?> </a>
							</a>
							<div class="dropdown-menu" aria-labelledby="navbarDropdown">
								<a class="dropdown" href="<?= base_url('home/settings') ?>">Pengaturan</a>
								<a class="dropdown" href="<?= base_url('home/logout') ?>">Keluar</a>
							</div>
						</li> -->
				</div>
			</nav>
		</div>
	</div>