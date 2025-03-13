<!DOCTYPE html>
<html>

<head>
  <!-- Basic -->
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <!-- Mobile Metas -->
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
  <!-- Site Metas -->
  <link rel="icon" href="template1/images/logo.png" type="image/gif" />
  <meta name="keywords" content="" />
  <meta name="description" content="" />
  <meta name="author" content="" />

  <title>Media Edukasi</title>


  <!-- bootstrap core css -->
  <link rel="stylesheet" type="text/css" href="template1/css/bootstrap.css" />

  <!-- fonts style -->
  <link href="https://fonts.googleapis.com/css?family=Poppins:400,600,700&display=swap" rel="stylesheet" />

  <!-- font awesome style -->
  <link href="template1/css/font-awesome.min.css" rel="stylesheet" />
  <!-- Custom styles for this template -->
  <link href="template1/css/style.css" rel="stylesheet" />
  <!-- responsive style -->
  <link href="template1/css/responsive.css" rel="stylesheet" />

</head>

<body>

  <div class="hero_area">
    <!-- header section strats -->
    <header class="header_section long_section px-0">
      <nav class="navbar navbar-expand-lg custom_nav-container ">
        <a class="navbar-brand" href="about_us.php">
          <span>
            Media Edukasi
          </span>
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class=""> </span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <div class="d-flex mx-auto flex-column flex-lg-row align-items-center">
            <ul class="navbar-nav  ">
              <li class="nav-item active">
                <a class="nav-link" href="index.php">Halaman Utama <span class="sr-only">(current)</span></a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="tambah.php">Materi</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="mapel.php">Mata Pelajaran</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="tambah_rangkuman.php">Rangkuman</a>
              </li>
              
            </ul>
          </div>
          <div class="quote_btn-container">
            <a href="timeline.php">
              <span>
                Akun Saya
              </span>
              <i class="fa fa-user" aria-hidden="true"></i>
            </a>
            <form class="form-inline">
              <button class="btn  my-2 my-sm-0 nav_search-btn" type="submit">
                <i class="fa fa-search" aria-hidden="true"></i>
              </button>
            </form>
          </div>
        </div>
      </nav>
    </header>
    <!-- end header section -->

 <br></br>   
<ceter><h5>HASIL LEMBAR SOAL BAB ALJABAR</h5></center>

<?php
	include "koneksi_aljabar.php";

	if(isset($_POST['submit'])){
		$pilihan = $_POST["pilihan"];
		$id_soal = $_POST["id"];
		$jumlah = $_POST["jumlah"];

		$score = 0;
		$benar = 0;
		$salah = 0;
		$kosong = 0;

		for($i=0;$i<$jumlah;$i++){
			$nomor = $id_soal[$i]; // id nomor soal

			// jika user tidak memilih jawaban
			if(empty($pilihan[$nomor])){
				$kosong++;
			} else {
				// jika memilih
				$jawaban = $pilihan[$nomor];

				// cocokan jawaban dengan yang ada didatabase
				$sql = "SELECT * FROM soal_aljabar WHERE id_soal='$nomor' AND kunci='$jawaban'";
				$query = mysqli_query($koneksi,$sql) or die (mysqli_error($koneksi));

				$cek = mysqli_num_rows($query);

				if($cek){
					// jika jawaban cocok (benar)
					$benar++;
				} else {
					// jika salah
					$salah++;
				}

			}
			/*
				----------
				Nilai 100
				----------
				Hasil = 100 / jumlah soal * Jawaban Benar
			*/

			$sql = "SELECT * FROM soal_aljabar WHERE aktif='Y'";
			$query = mysqli_query($koneksi,$sql) or die (mysqli_error($koneksi));
			$jumlah_soal = mysqli_num_rows($query);
			$score = 100 / $jumlah_soal * $benar;
			$hasil = number_format($score,1);
		}
	}

	// Simpan kedalam database
	echo "Jumlah Jawaban Benar: $benar"."<br>";
	echo "Jumlah Jawaban Salah: $salah"."<br>";
	echo "Jumlah Jawaban Kosong: $kosong"."<br>";
	echo "Nilai: $hasil"."<br>";
?>

<p>&larr; <a href="bab_aljabar.php">Back</a></p>
<!-- footer section -->
  <footer class="footer_section">
    <div class="container">
      <p>
        &copy; <span id="displayYear"></span> All Rights Reserved By
        <a href="https://www.instagram.com/ameliastell?igsh=OXF6NWE2aDdsd3Bq/">Stella Amelia</a>
        Rekayasa Perangkat Lunak <a href="https://smkn1kepanjen.sch.id/web/">SMKN 1 Kepanjen</a>
      </p>
    </div>
  </footer>
  <!-- footer section -->


  <!-- jQery -->
  <script src="template1/js/jquery-3.4.1.min.js"></script>
  <!-- bootstrap js -->
  <script src="template1/js/bootstrap.js"></script>
  <!-- custom js -->
  <script src="template1/js/custom.js"></script>
  <!-- Google Map -->
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCh39n5U-4IoWpsVGUHWdqB6puEkhRLdmI&callback=myMap"></script>
  <!-- End Google Map -->

</body>

</html>