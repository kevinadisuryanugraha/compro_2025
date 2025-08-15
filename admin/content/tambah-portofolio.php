<?php

$id = isset($_GET['id']) ? $_GET['edit'] : '';

if (isset($_GET['edit'])) {
    $id = $_GET['edit'];
    $query = mysqli_query($koneksi, "SELECT * FROM portofolio WHERE id = '$id'");
    $rowEdit = mysqli_fetch_assoc(result: $query);

    $title = "Edit portofolio";
} else {
    $title = "Tambah portofolio";
}

if (isset($_GET['delete'])) {
    $id = $_GET['delete'];
    $query = mysqli_query($koneksi, "DELETE FROM portofolio WHERE id = '$id'");

    header("location:?page=portofolio&hapus=berhasil");
}

if (isset($_POST['simpan'])) {
    $id_category = $_POST['id_category'];
    $id_category = (int)$id_category;

    $title = $_POST['title'];
    $content = $_POST['content'];
    $client_name = $_POST['client_name'];
    $project_date = $_POST['project_date'];
    $project_url = $_POST['project_url'];
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

        $update_query = "UPDATE portofolio 
                     SET id_category = $id_category, 
                         title = '$title', 
                         content = '$content', 
                         client_name = '$client_name',
                         project_date = '$project_date',
                         project_url = '$project_url', 
                         image = '$image_name', 
                         is_active = '$is_active' 
                     WHERE id = '$id'";
    } else {
        $update_query = "UPDATE portofolio 
                     SET id_category = $id_category, 
                         title = '$title', 
                         content = '$content', 
                         client_name = '$client_name',
                         project_date = '$project_date',
                         project_url = '$project_url', 
                         is_active = '$is_active' 
                     WHERE id = '$id'";
    }

    if ($id) {
        // ini query update
        $update = mysqli_query($koneksi, $update_query);
        if ($update) {
            header("location:?page=portofolio&ubah=berhasil");
        }
    } else {
        $insert_query = "INSERT INTO portofolio (id_category, title, content, client_name, project_date, project_url, is_active, image) 
                     VALUES ($id_category, '$title', '$content', '$client_name', '$project_date', '$project_url', '$is_active', '$image_name')";
        $insert = mysqli_query($koneksi, $insert_query);
        if ($insert) {
            header("location:?page=portofolio&tambah=berhasil");
        }
    }
}

$queryCategories = mysqli_query($koneksi, "SELECT * FROM categories  WHERE type='portofolio' ORDER BY id DESC");
$rowCategories = mysqli_fetch_all($queryCategories, MYSQLI_ASSOC);

$queryPortofolios = mysqli_query($koneksi, "SELECT categories.name, portofolio.* FROM portofolio 
JOIN categories ON categories.id = portofolio.id_category 
ORDER BY portofolio.id DESC");
$rowPortofolios = mysqli_fetch_assoc($queryPortofolios);


?>

<div class="pagetitle">
    <h1><?php echo $title; ?></h1>
</div><!-- End Page Title -->

<section class="section">
    <form action="" method="post" enctype="multipart/form-data">
        <div class="row">
            <div class="col-lg-8">

                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title "><?php echo $title; ?></h5>

                        <div class="mb-3">
                            <label for="category" class="form-label">Category</label>
                            <select class="form-select" name="id_category" id="id_category">
                                <?php foreach ($rowCategories as $key => $rowCategorie): ?>
                                    <option value="<?php echo $rowCategorie['id'] ?>"><?php echo $rowCategorie['name'] ?></option>
                                <?php endforeach ?>
                            </select>
                        </div>
                        <div class="mb-3">
                            <label for="title" class="form-label">Title</label>
                            <input type="text" class="form-control" id="title" name="title" placeholder="Masukkan Judul Anda" value="<?php echo ($id) ? $rowEdit['title'] : '' ?>" required>
                        </div>
                        <div class="mb-3">
                            <label for="client_name" class="form-label">Client Name</label>
                            <input type="text" class="form-control" id="client_name" name="client_name" placeholder="Client Name" value="<?php echo ($id) ? $rowEdit['client_name'] : '' ?>" required>
                        </div>
                        <div class="mb-3">
                            <label for="project_date" class="form-label">Project Date</label>
                            <input type="date" class="form-control" id="project_date" name="project_date" placeholder="project Date" value="<?php echo ($id) ? $rowEdit['project_date'] : '' ?>" required>
                        </div>
                        <div class="mb-3">
                            <label for="project_url" class="form-label">Project Url</label>
                            <input type="url" class="form-control" id="project_url" name="project_url" placeholder="project Url" value="<?php echo ($id) ? $rowEdit['project_url'] : '' ?>" required>
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

                    </div>
                </div>

            </div>

            <div class="col-sm-4">

                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title "><?php echo $title; ?></h5>

                        <div class="mb-3">
                            <label class="form-label" for="inputGroupSelect01">Status</label>
                            <select name="is_active" class="form-select" id="inputGroupSelect01">
                                <option <?php echo ($id) ? $rowEdit['is_active'] == 1 ? 'selected' : '' : '' ?> value="1">Publish</option>
                                <option <?php echo ($id) ? $rowEdit['is_active'] == 0 ? 'selected' : '' : '' ?> value="0">Draft</option>
                            </select>
                        </div>
                        <div class="mb-3">
                            <button class="btn btn-primary" type="submit" name="simpan">Simpan</button>
                            <a href="?page=portofolio" class="btn btn-secondary" onclick="history.back()">
                                ← Kembali
                            </a>
                        </div>


                    </div>
                </div>

            </div>
        </div>
    </form>
    </div>
</section>