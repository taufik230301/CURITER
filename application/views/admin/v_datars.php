<!DOCTYPE html>
<html lang="" dir="ltr">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="<?php echo base_url('assets/css/bootstrap.min.css') ?>">
  <script src="<?php echo base_url('assets/js/jquery.min.js') ?>"></script>
  <script src="<?php echo base_url('assets/js/bootstrap.min.js') ?>"></script>
  <script src="<?php echo base_url('assets/js/all.min.js') ?>"></script>
  <script src="<?= base_url('assets/js/fontawesome-all.js'); ?>">
  </script>

  <script type="text/javascript" src="<?= base_url('assets/js/bootstrap.min.js'); ?>">
  </script>
  <title>Curiter | Admin</title>
  <style>
    .bodiadm {
      margin-top: 90px;
    }

    .button_tambah {
      background-color: #FFFFFF;
      color: #365465;
      border: 2px solid #365465;
      padding: 5px 10px;
      margin: 0px 0px 4px 0px;
      font-size: 15px;
      border-radius: 25px;
    }

    .button_tambah:hover {
      background-color: #365465;
      color: #FFFFFF;
    }
  </style>
</head>

<body class="bodiadm">
  <div class="container">
    <div class="box">
      <h3>Daftar Rumah Sakit</h3>
      <br>
      <button type="button" class="button_tambah" data-toggle="modal" data-target="#tambah">Tambah Rumah Sakit</button>
      <br></br>
      <table class="table table-responsive table-hover" id="table">
        <thead>
          <tr>
            <th>No</th>
            <th>Nama RS</th>
            <th>Rating</th>
            <th>Alamat</th>
            <th>Alamat Website</th>
            <th>Nomor</th>
            <th>Tentang</th>
            <th>Fasilitas</th>
            <th>Poliklinik</th>
            <th>Edit</th>
            <th>Hapus</th>
          </tr>
        </thead>
        <tbody>
          <?php $no = 1;
          foreach ($rs as $r) {
          ?>
            <tr>
              <form>
                <td><?= $no++;  ?></td>
                <td><?php echo $r['nama_rs']; ?></td>
                <td class="list-inline" data-rating="<?= $r['rating'] ?>" title="Average Rating - <?= $r['rating'] ?>"><?= $r['rating'] ?>
                  <?php
                  for ($count = 1; $count <= 5; $count++) {
                    $rating = $r['rating'];
                    if ($count <= $rating) {
                      $color = 'color:#ffcc00;';
                    } else {
                      $color = 'color:#ccc;';
                    }
                    echo '<span title="' . $count . '" id_rs="' . $r['id_rs'] . '-' . $count . '" data-index="' . $count . '" data-id_rs="' . $r["id_rs"] . '" data-rating="' . $rating . '" class="rating" style="cursor:pointer; ' . $color . ' font-size:24px;">&#9733;</span>';
                  }
                  ?>
                  (Google Review)</td>
                <!-- <td id="rating_list"><span id="rating_list"></span></td> -->
                <td><?php echo $r['alamat_rs']; ?></td>
                <td><?php echo $r['website']; ?></td>
                <td><?php echo $r['telp_rs']; ?></td>
                <td><?php echo $r['tentang_rs']; ?></td>
                <td><?php echo $r['fasilitas_rs']; ?></td>
                <td><a type="button" class="btn btn-warning" href="<?= base_url('admin/rs/detail_rs/' . $r['id_rs']) ?>"><i class="fa fa-info-circle" aria-hidden="true"></i></a></td>
                <td><button type="button" class="btn btn-warning" data-toggle="modal" data-target="#edit<?= $r['id_rs'] ?>"><i class="fas fa-edit"></i></button></td>
                <td><a href="<?= base_url(); ?>admin/rs/hapus/<?= $r['id_rs'] ?>/<?= $r['foto_rumahsakit'] ?>" type="button" class="btn btn-danger" onClick="return confirm('Apakah Anda Yakin?')"><i class="fas fa-trash"></i></a></td>
              </form>
            </tr>
            <!-- ubah -->
            <div class="modal fade" id="edit<?= $r['id_rs'] ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
              <div class="modal-dialog" role="document">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title"><?= "Update Data Rumah Sakit " . $r['nama_rs'] ?></h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button>
                  </div>

                  <div class="modal-body">
                    <div class="boxsetting">
                      <br>
                      <form action="<?= base_url(); ?>admin/rs/edit" method="post" enctype='multipart/form-data'>
                        <input type="hidden" name="id" value="<?= $r['id_rs'] ?>">

                        <div class="form-group">
                          <label for="formGroupExampleInput">Nama</label>
                          <input type="text" class="form-control" id="formGroupExampleInput" placeholder="Nama Rumah Sakit" name="nama" value="<?php echo $r['nama_rs'] ?>" required>
                        </div>
                        <div class="form-group">
                          <label for="formGroupExampleInput">Rating</label>
                          <input type="text" class="form-control" id="formGroupExampleInput" placeholder="Rating Rumah Sakit" name="rating" value="<?php echo $r['rating'] ?>" required>
                        </div>
                        <div class="form-group">
                          <label for="formGroupExampleInput">Alamat</label>
                          <input type="text" class="form-control" id="formGroupExampleInput" placeholder="Alamat RS" name="alamat" value="<?php echo $r['alamat_rs'] ?>" required>
                        </div>
                        <div class="form-group">
                          <label for="formGroupExampleInput">Alamat Website</label>
                          <input type="text" class="form-control" id="formGroupExampleInput" placeholder="Website" name="website" value="<?php echo $r['website'] ?>" required>
                        </div>
                        <div class="form-group">
                          <label for="formGroupExampleInput">Kota</label>
                          <input type="text" class="form-control" id="formGroupExampleInput" placeholder="Kota" name="kota" value="<?php echo $r['kota'] ?>" required>
                        </div>
                        <div class="form-group">
                          <label for="formGroupExampleInput">NO Telp</label>
                          <input type="text" class="form-control" id="formGroupExampleInput" placeholder="No Telp" name="no" value="<?php echo $r['telp_rs'] ?>" required>
                        </div>
                        <div class="form-group">
                          <label for="formGroupExampleInput">Tentang</label>
                          <input type="text" class="form-control" id="formGroupExampleInput" placeholder="Tentang RS" name="tentang" value="<?php echo $r['tentang_rs'] ?>" required>
                        </div>
                        <div class="form-group">
                          <label for="formGroupExampleInput">Gambar Rumah Sakit</label>
                          <input type="text" class="form-control" id="formGroupExampleInput" placeholder="Tentang RS" name="tentang" value="<?php echo $r['tentang_rs'] ?>" required>
                        </div>
                        <div class="form-gorup">
                          <label for="formGroupExampleInput">Fasilitas</label>
                          <input type="text" class="form-control" id="formGroupExampleInput" placeholder="Fasilitas RS" name="fasilitas" value="<?php echo $r['fasilitas_rs'] ?>" required>
                        </div>
                        <div class="form-gorup">
                          <label for="formGroupExampleInput">Gambar Rumah Sakit</label>
                          <input type="hidden" name="filelama" value="<?= $r['foto_rumahsakit'] ?>">
                          <input type="file" class="form-control" id="formGroupExampleInput" placeholder="Fasilitas RS" name="gambar" value="<?php echo $r['foto_rumahsakit'] ?>" required>
                        </div>
                        <br>
                        <button type="submit" name="tambah" class="btn btn-primary float-right">Ubah Data</button>
                      </form>
                      <br>
                    </div>
                  </div>

                </div>
              </div>
            </div>
          <?php } ?>
        </tbody>
      </table>
    </div>
  </div>


  <!-- Modal Tambah Data Rumah Sakit -->
  <div class="modal fade" id="tambah" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel1" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <center>
            <h2>TAMBAH DATA RUMAH SAKIT</h2>
          </center>
        </div>
        <div class="modal-body">
          <!-- isi form ini -->
          <form method="POST" action="<?= base_url(); ?>admin/rs/tambah" enctype='multipart/form-data'>
            <div class="form-group">
              <label for="nama">Nama Rumah Sakit</label>
              <input type="text" class="form-control" id="nama" placeholder="Nama Rumah Sakit" name="nama" required>
            </div>
            <div class="form-group">
              <label for="rating">Rating Rumah Sakit</label>
              <input type="text" class="form-control" id="rating" placeholder="Rating Rumah Sakit" name="rating">
            </div>
            <div class="form-group">
              <label for="nama_poli">Poliklinik</label>
              <input type="text" class="form-control" id="nama_poli" placeholder="Poliklinik" name="nama_poli" required>
            </div>
            <div class="form-group">
              <label for="alamat">Alamat</label>
              <input type="text" class="form-control" id="alamat" placeholder="Alamat" name="alamat" required>
            </div>
            <div class="form-group">
              <label for="website">Alamat Website</label>
              <input type="text" class="form-control" id="website" placeholder="Alamat Website" name="website" required>
            </div>
            <div class="form-group">
              <label for="kota">Kota</label>
              <input type="text" class="form-control" id="kota" placeholder="Kota" name="kota" required>
            </div>
            <div class="form-group">
              <!-- ini gatau kan increment yak -->
              <label for="no_telp">No Telp</label>
              <input type="text" class="form-control" id="no_telp" placeholder="No Telp" name="no" required>
            </div>
            <div class="form-group">
              <label for="tentang">Tentang</label>
              <input type="text" class="form-control" id="tentang" placeholder="Tentang RS" name="tentang" required>
            </div>
            <div class="form-group">
              <label for="fasilitas">Fasilitas</label>
              <input type="text" class="form-control" id="fasilitas" placeholder="Fasilitas RS" name="fasilitas" required>
            </div>
            <div class="form-group">
              <label for="gambar">Gambar</label>
              <input type="file" class="form-control" id="gambar" placeholder="Fasilitas RS" name="gambar" required>
            </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Batal</button>
          <input type="submit" class="btn btn-primary" id="tambah" value="Submit" placeholder="Simpan">
          </form>
        </div>
      </div>
    </div>
  </div>
</body>

</html>

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

    $(document).on('mouseenter', '.rating', function() {
      var index = $(this).data('index');
      var id_rs = $(this).data('id_rs');
      remove_background(id_rs);
      for (var count = 1; count <= index; count++) {
        $('#' + id_rs + '-' + count).css('color', '#ffcc00');
      }
    });

    function remove_background(id_rs) {
      for (var count = 1; count <= 5; count++) {
        $('#' + id_rs + '-' + count).css('color', '#ccc');
      }
    }

    $(document).on('click', '.rating', function() {
      var index = $(this).data('index');
      var id_rs = $(this).data('id_rs');
      $.ajax({
        url: "<?php echo base_url(); ?>admin/rs/insert",
        method: "POST",
        data: {
          index: index,
          id_rs: id_rs
        },
        success: function(data) {
          load_data();
          alert("You have rate " + index + " out of 5");
        }
      })
    });

    $(document).on('mouseleave', '.rating', function() {
      var index = $(this).data('index');
      var id_rs = $(this).data('id_rs');
      var rating = $(this).data('rating');
      remove_background(id_rs);
      for (var count = 1; count <= rating; count++) {
        $('#' + id_rs + '-' + count).css('color', '#ffcc00');
      }
    });
  });
</script>