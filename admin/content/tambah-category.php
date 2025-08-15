<?php

$id = isset($_GET['id']) ? $_GET['edit'] : '';

if (isset($_GET['edit'])) {
    $id = $_GET['edit'];
    $query = mysqli_query($koneksi, "SELECT * FROM categories WHERE id = '$id'");
    $rowEdit = mysqli_fetch_assoc(result: $query);

    $title = "Edit category";
} else {
    $title = "Tambah category";
}

if (isset($_GET['delete'])) {
    $id = $_GET['delete'];
    $query = mysqli_query($koneksi, "DELETE FROM categories WHERE id = '$id'");

    header("location:?page=category&hapus=berhasil");
}

if (isset($_POST['simpan'])) {
    $name = $_POST['name'];
    $is_active = $_POST['is_active'];

    // jika gambar terupload
    if (!empty($_FILES['image']['name'])) {
        $image = $_FILES['image']['name'];
        $tmp_name = $_FILES['image']['tmp_name'];
        $type = mime_content_type($tmp_name);

        $ext_allowed = ["image/png", "image/jpg", "image/jpeg"];

        if (!in_array($type, $ext_allowed)) {
            echo "Extensi file tidak diizinkan";
            exit;
        }

        $path = "uploads/";
        if (!is_dir($path)) mkdir($path);

        $image_name = md5($image) . "." . pathinfo($image, PATHINFO_EXTENSION);
        $target_files = $path . $image_name;

        if (move_uploaded_file($tmp_name, $target_files)) {
            echo "Upload berhasil";
        } else {
            echo "Upload gagal";
        }
    }

    if ($id) {
        // ini query update
        $update = mysqli_query($koneksi, query: "UPDATE categories SET name = '$name' WHERE id = '$id'");
        if ($update) {
            header("location:?page=category&ubah=berhasil");
        }
    } else {
        $insert = mysqli_query($koneksi, "INSERT INTO categories (name) VALUES ('$name')");
        if ($insert) {
            header("location:?page=category&tambah=berhasil");
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
                    <form action="" method="post" enctype="multipart/form-data">

                        <div class="mb-3">
                            <label for="name" class="form-label">Nama</label>
                            <input type="text" class="form-control" id="name" name="name" placeholder="Masukkan Nama Kategori" value="<?php echo ($id) ? $rowEdit['name'] : '' ?>" required>
                        </div>
                        <div class="mb-3">
                            <button class="btn btn-primary" type="submit" name="simpan">Simpan</button>
                            <a href="?page=category" class="btn btn-secondary" onclick="history.back()">
                                ← Kembali
                            </a>
                        </div>

                    </form>
                </div>
            </div>

        </div>
    </div>
</section>