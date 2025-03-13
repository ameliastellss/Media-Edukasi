<?php require_once("auth2.php"); ?>


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

<body class="sub_page">

  <div class="hero_area">
    <!-- header section strats -->
    <header class="header_section long_section px-0">
      <nav class="navbar navbar-expand-lg custom_nav-container ">
        <a class="navbar-brand" href="about_us.php">
          <span>
            Media Edukasi
          </span>
        </a>
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class=""> </span>
        </button>

         <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <div class="d-flex mx-auto flex-column flex-lg-row align-items-center">
            <ul class="navbar-nav  ">
              <li class="nav-item active">
                <a class="nav-link" href="menu.php">Halaman Utama <span class="sr-only">(current)</span></a>
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
            <a href="timeline2.php">
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

<div class="container mt-5">
    <div class="row">
        <div class="col-md-4">

            <div class="card">
                <div class="card-body text-center">

                    <h3>Pengajar</h3>
                    <img class="img img-responsive rounded-circle mb-3" width="160" src="img/<?php echo $_SESSION['user']['photo'] ?>" />
                    <h3><?php echo  $_SESSION["user"]["name"] ?></h3>
                    <p><?php echo $_SESSION["user"]["email"] ?></p>

                    
                    <p><a href="logout2.php">Logout</a></p>

                    <p><a href="menu.php">Home</a></p>
                </div>
            </div>

            
        </div>

        <div class="col-md-8">


            
            <div class="card mb-3">
                <div class="card-body">
                Belajar adalah investasi terbaik untuk masa depanmu. Tetap fokus pada tujuanmu, jadikan pembelajaran sebagai kebiasaan sehari-hari dan jangan pernah berhenti mengejar pengetahuan.
              </p>
              
                </div>
            </div>
            

            <?php for($i=0; $i < 3; $i++){ ?>
            <div class="card mb-3">
                <div class="card-body">
                Ketekunan dan disiplin dalam belajar adalah kunci untuk meraih prestasi. Setiap usaha yang kamu lakukan hari ini akan memberikan hasil di masa depan.
                </div>
            </div>
            <?php } ?>
            
        </div>
    
    </div>
</div>

</body>
</html>