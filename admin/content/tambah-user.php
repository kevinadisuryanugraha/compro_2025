<?php

$id = isset($_GET['id']) ? $_GET['edit'] : '';

if (isset($_GET['edit'])) {
    $id = $_GET['edit'];
    $query = mysqli_query($koneksi, "SELECT * FROM user WHERE id = '$id'");
    $rowEdit = mysqli_fetch_assoc($query);

    $title = "Edit User";
} else {
    $title = "Tambah User";
}

if (isset($_GET['delete'])) {
    $id = $_GET['delete'];
    $query = mysqli_query($koneksi, "DELETE FROM user WHERE id = '$id'");

    header("location:?page=user&hapus=berhasil");
}

if (isset($_POST['simpan'])) {
    $username = $_POST['username'];
    $email = $_POST['email'];
    $password =  ($_POST['password']) ? $_POST['password'] : $rowEdit['password'];

    if ($id) {
        // ini query update
        $update = mysqli_query($koneksi, "UPDATE user SET username = '$username', email = '$email', password = '$password' WHERE id = '$id'");
        if ($update) {
            header("location:?page=user&ubah=berhasil");
        }
    } else {
        $insert = mysqli_query($koneksi, "INSERT INTO user (username, email, password) VALUES ('$username', '$email', '$password')");
        if ($insert) {
            header("location:?page=user&tambah=berhasil");
        }
    }
}


?>

<div class="pagetitle">
    <h1><?php echo $title; ?></h1>
</div><!-- End Page Title -->

<section class="section">
    <div class="row">
        <div class="col-lg-12">

            <div class="card">
                <div class="card-body">
                    <h5 class="card-title "><?php echo $title; ?></h5>
                    <form action="" method="post">
                        <div class="mb-3">
                            <label for="username" class="form-label">Username</label>
                            <input type="text" class="form-control" id="username" name="username" placeholder="Masukkan Username Anda" value="<?php echo ($id) ? $rowEdit['username'] : '' ?>" required autofocus>
                        </div>
                        <div class="mb-3">
                            <label for="email" class="form-label">Email</label>
                            <input type="email" class="form-control" id="email" name="email" placeholder="Masukkan Email Anda" value="<?php echo ($id) ? $rowEdit['email'] : '' ?>" required>
                        </div>
                        <div class="mb-3">
                            <label for="password" class="form-label">Password</label>
                            <input type="password" class="form-control" id="password" name="password" placeholder="Masukkan Password Anda" <?php echo (!$id) ? 'required' : '' ?>>
                            <?php echo ($id) ? '<small>- Isi Password jika ingin mengubah password</small>' : '' ?>
                            <!-- <small>- Isi Password jika ingin mengubah password</small> -->
                        </div>
                        <div class="mb-3">
                            <button class="btn btn-primary" type="submit" name="simpan">Simpan</button>
                            <a href="?page=user" class="btn btn-secondary" onclick="history.back()">
                                ← Kembali
                            </a>
                        </div>
                    </form>
                </div>
            </div>

        </div>
    </div>
</section>