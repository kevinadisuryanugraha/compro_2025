<?php

$id = isset($_GET['id']) ? $_GET['edit'] : '';

if (isset($_GET['edit'])) {
    $id = $_GET['edit'];
    $query = mysqli_query($koneksi, "SELECT * FROM card_content WHERE id = '$id'");
    $rowEdit = mysqli_fetch_assoc(result: $query);

    $title = "Edit Card";
} else {
    $title = "Tambah Card";
}

if (isset($_GET['delete'])) {
    $id = $_GET['delete'];
    $query = mysqli_query($koneksi, "DELETE FROM card_content WHERE id = '$id'");

    header("location:?page=card-content&hapus=berhasil");
}

if (isset($_POST['simpan'])) {
    $title = $_POST['title'];
    $content = $_POST['content'];

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
        $update = mysqli_query($koneksi, query: "UPDATE card_content SET title = '$title', content = '$content', image = '$image_name' WHERE id = '$id'");
        if ($update) {
            header("location:?page=card-content&ubah=berhasil");
        }
    } else {
        $insert = mysqli_query($koneksi, "INSERT INTO card_content (title, content, image) VALUES ('$title', '$content', '$image_name')");
        if ($insert) {
            header("location:?page=card-content&tambah=berhasil");
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
                            <label for="title" class="form-label">Title</label>
                            <input type="text" class="form-control" id="title" name="title" placeholder="Masukkan Title Anda" value="<?php echo ($id) ? $rowEdit['title'] : '' ?>" required>
                        </div>
                        <div class="mb-3">
                            <label for="content" class="form-label">Content</label>
                            <textarea type="text" class="form-control" id="summernote" name="content" placeholder="Masukkan Content Anda"><?php echo ($id) ? $rowEdit['content'] : '' ?></textarea>
                            <!-- <small>- Isi Content jika ingin mengubah content</small> -->
                        </div>
                        <div class="mb-3">
                            <label for="image" class="form-label">Gambar</label>
                            <br>
                            <small class="text-danger">- Isi Image jika ingin mengubah image</small>
                            <br>
                            <small class="text-danger">- Gambar harus landscape dan berukuran 1920 x 1088</small>
                            <br>
                            <small class="text-danger">- Format yang diperbolehkan: PNG, JPG, JPEG, WEBP</small>
                            <input type="file" class="form-control mt-3 mb-3" id="image" name="image" placeholder="Masukkan Image Anda">
                            <img class="mt-2" src="uploads/<?php echo isset($rowEdit['image']) ? $rowEdit['image'] : '' ?>" alt="" width="100">
                        </div>
                        <div class="mb-3">
                            <button class="btn btn-primary" type="submit" name="simpan">Simpan</button>
                            <a href="?page=card-content" class="btn btn-secondary" onclick="history.back()">
                                ← Kembali
                            </a>
                        </div>

                    </form>
                </div>
            </div>

        </div>
    </div>
</section>