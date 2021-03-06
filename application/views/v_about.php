<!DOCTYPE html>
<html>

<head>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <style>
    .card-about {
      margin-top: 90px;
      box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
      max-width: 300px;
      margin: auto;
      text-align: center;
      font-family: arial;
      
    }
    .bodi{
      padding-top: 100px;
      margin: 0 auto;
      width: 90%;
    }
    .title-card {
      color: grey;
      font-size: 18px;
    }

    .imgabt {
      border-radius: 25px 25px 0 0;
    }

    .about {
      margin-bottom: 40px;
    }

    .container-about {
      display: flex;
      margin: auto;
      width: 900px;
    }

    @media screen and (max-width: 770px) {
      .container-about {
        display: flex;
        flex-wrap: wrap;
        align-content: space-around;
        justify-content: center;
        flex-direction: column;
        margin: 10px;
        width:100%;
      }

      .card-about {
        margin: 10px;
      }
      .bodi{
      padding-top: 100px;
      margin: 0 auto;
      width: 90%;
    }
    }
  </style>
</head>

<body>
  <div class="bodi mb-5">
    <h2 class="about" style="text-align:left ">Tentang Curiter</h2>
    <p>Curiter merupakan sebuah website dimana anda dapat menemukan seluruh informasi mengenai jadwal praktik dokter dan tempat registrasi online dari seluruh rumah sakit yang ada di Palembang. Selain itu, anda juga dapat melihat berbagai macam artikel kesehatan yang dapat membantu anda meningkatkan kesehatan diri anda secara mandiri.</p>
    <br>
    <h2 class="about" style="text-align:center">TIM KAMI</h2>
    <div class="container-about">

      <div class="card card-about">
        <img src="<?php echo base_url(); ?>/assets/taufik.jpg" class="imgabt" alt="alvin" style="width:100%">
        <h3>Taufiiqulhakim</h3>
        <p class="title-card">Teknik Komputer</p>
        <p>Politeknik Negeri Sriwijaya</p>
      </div>
      <div class="card card-about">
        <img src="<?php echo base_url(); ?>/assets/ocaa.png" class="imgabt" alt="alvin" style="width:100%">
        <h3>Rosa Alawiyah</h3>
        <p class="title-card">Manajemen Informatika</p>
        <p>Politeknik Negeri Sriwijaya</p>

      </div>
      <div class="card card-about">
        <img src="<?php echo base_url(); ?>/assets/def.png" class="imgabt" alt="alvin" style="width:100%">
        <h3>Rida Dwirahma D</h3>
        <p class="title-card">Manajemen Informatika</p>
        <p>Politeknik Negeri Sriwijaya</p>

      </div>
    </div>
  </div>

</body>

</html>