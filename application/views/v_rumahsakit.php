<style>
  .button-rs {
    margin-top: 15%;
    margin-bottom: 5%;
  }

  @media screen and (max-width: 1000px) {
    .button-rs {
      margin: 10px;
    }



  }

  @media screen and (max-width: 500px) {
    .konten-dokter {
      margin: 10px;
      font-size: 14px;
    }
  }
</style>
<div class="container" style="margin-top: 90px">
  <div class="row">
    <div class="col-md-6">
      <form action=" <?= base_url('rumahsakit/') ?> " method="post">
        <input class="cari-dokter" type="text" name="search" placeholder="Cari Rumah Sakit ..." autocomplete="off">
      </form>
    </div>
  </div>


  <div class="konten-dokter" style="overflow:auto; height:auto;">
    <?php foreach ($rs as $rs) { ?>
      <div class="card mb-3" style="width:inherit;height: auto; margin-right: 80px;margin-left:20px;">
        <div class="row no-gutters">
          <div class="col-md-2">
            <img src="<?php echo base_url(); ?>assets/rs/<?= $rs['foto_rumahsakit'] ?>" class="card-img" alt="<?= $rs['nama_rs'] ?>" style=" object-fit: cover; min-width: 100%; min-height: 100%">
          </div>
          <div class="col-md-8">
            <div class="card-body">
              <h5 class="card-title" style="text-align:left;"> <?= "Rumah Sakit " . $rs['nama_rs'] ?></h5>
              <!-- <h6 class="card-title">Jenis Spesialis</h6> -->
              <p class="card-text" style="text-align:left;opacity:0.7"> <img src="<?php echo base_url(); ?>/assets/location.png" style="width:20px;height:20px;"> <?= "Kota " . $rs['kota'] ?></p>
              <p class="card-text" style="text-align:left;"><?= "Alamat : " . $rs['alamat_rs'] ?> </p>
              <p class="card-text" style="text-align:left;"><?= "Telpon : " . $rs['telp_rs'] ?> </p>
              <p class="card-text" data-rating="<?= $rs['rating'] ?>" title="Average Rating - <?= $rs['rating'] ?>"><?= $rs['rating'] ?>
                <?php
                for ($count = 1; $count <= 5; $count++) {
                  $rating = $rs['rating'];
                  if ($count <= $rating) {
                    $color = 'color:#ffcc00;';
                  } else {
                    $color = 'color:#ccc;';
                  }
                  echo '<span title="' . $count . '" id_rs="' . $rs['id_rs'] . '-' . $count . '" data-index="' . $count . '" data-id_rs="' . $rs["id_rs"] . '" data-rating="' . $rating . '" class="rating" style="cursor:pointer; ' . $color . ' font-size:24px;">&#9733;</span>';
                }
                ?>
                (Google Review)</p>
              <!-- <a href="#" class="btn btn btn-primary btn-sm active" role="button" aria-pressed="true">Primary link</a> -->
            </div>
          </div>
          <div class="col-md-2 button-rs">
            <button class="ml-auto btn btn-primary text-uppercase" type="button" name="button_janji" style="border-radius:13px;font-size:13px;background-color:#033D68;border-color:#033D68;"> <a href="<?= base_url('rumahsakit/DetailRS/' . $rs['id_rs']) ?>"></a> Lihat Detail</button>
          </div>
        </div>
      </div>
    <?php } ?>
  </div>
</div>

<script>
  $(document).ready(function() {
    load_data();

    function load_data() {
      $.ajax({
        url: "<?php echo base_url(); ?>admin/rs/fetch",
        method: "POST",
        success: function(data) {
          $('#rating_list').html(data);
        }
      })
    }
  });
</script>