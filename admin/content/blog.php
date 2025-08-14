<?php

$query = mysqli_query($koneksi, "SELECT categories.name, blogs.* FROM blogs 
JOIN categories ON categories.id = blogs.id_category 
ORDER BY blogs.id DESC");

$rows = mysqli_fetch_all($query, MYSQLI_ASSOC);

function changeIsActive($isActive)
{
    switch ($isActive) {
        case '1':
            $title = "<span class='badge bg-primary'>Publish</span>";
            break;

        default:
            $title = "<span class='badge bg-warning'>Draft</span>";
            break;
    }

    return $title;
}

?>

<div class="pagetitle">
    <h1>Data Blog</h1>
</div><!-- End Page Title -->

<section class="section">
    <div class="row">
        <div class="col-lg-12">

            <div class="card">
                <div class="card-body">
                    <h5 class="card-title ">Data Blog</h5>
                    <div class="mb-3" align="right">
                        <a href="?page=tambah-blog" class="btn btn-sm btn-success">Tambah</a>
                    </div>
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>Kategori</th>
                                <th>Title</th>
                                <th>Content</th>
                                <th>Penulis</th>
                                <th>Image</th>
                                <th>Tags</th>
                                <th>Status</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php foreach ($rows as $key => $row): ?>
                                <tr>
                                    <td><?php echo $key += 1 ?></td>
                                    <td><?php echo $row['name']; ?></td>
                                    <td><?php echo $row['title']; ?></td>
                                    <td><?php echo $row['content']; ?></td>
                                    <td><?php echo isset($_SESSION['NAME']) ? $_SESSION['NAME'] : '' ?> </td>
                                    <td><img class="img-fluid w-25" src="uploads/<?php echo $row['image']; ?>" alt=""></td>
                                    <td><?php echo $row['tags']; ?></td>
                                    <td><?php echo changeIsActive($row['is_active']) ?></td>
                                    <td>
                                        <a href="?page=tambah-blog&edit=<?php echo $row['id'] ?>" class="btn btn-sm btn-primary">Edit</a>
                                        <a onclick="return confirm('Apakah anda yakin akan menghapus data ini?')" href="?page=tambah-blog&delete=<?php echo $row['id'] ?>" class="btn btn-sm btn-danger">Delete</a>
                                    </td>
                                </tr>
                            <?php endforeach; ?>
                        </tbody>
                    </table>
                </div>
            </div>

        </div>
    </div>
</section>