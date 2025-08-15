<?php
$query = mysqli_query($koneksi, "SELECT categories.name, portofolio.* FROM portofolio 
JOIN categories ON categories.id = portofolio.id_category 
ORDER BY portofolio.id DESC");

$rows = mysqli_fetch_all($query, MYSQLI_ASSOC);

$queryCategories = mysqli_query($koneksi, "SELECT * FROM categories  WHERE type='portofolio' ORDER BY id DESC");
$rowCategories = mysqli_fetch_all($queryCategories, MYSQLI_ASSOC);
?>

<main class="main">

    <!-- Page Title -->
    <div class="page-title accent-background">
        <div class="container d-lg-flex justify-content-between align-items-center">
            <h1 class="mb-2 mb-lg-0">Portfolio</h1>
            <nav class="breadcrumbs">
                <ol>
                    <li><a href="index.html">Home</a></li>
                    <li class="current">Portfolio</li>
                </ol>
            </nav>
        </div>
    </div><!-- End Page Title -->

    <!-- Portfolio Section -->
    <section id="portfolio" class="portfolio section">

        <div class="container">

            <div class="isotope-layout" data-default-filter="*" data-layout="masonry" data-sort="original-order">

                <ul class="portfolio-filters isotope-filters" data-aos="fade-up" data-aos-delay="100">

                    <li data-filter="*" class="filter-active">All</li>
                    <?php foreach ($rowCategories as $rowCategori): ?>
                        <li data-filter=".filter-<?php echo $rowCategori['id']; ?>"><?php echo $rowCategori['name'] ?></li>
                    <?php endforeach ?>
                </ul><!-- End Portfolio Filters -->

                <div class="row gy-4 isotope-container" data-aos="fade-up" data-aos-delay="200">

                    <!-- End Portfolio Item -->

                    <?php foreach ($rows as $key => $row): ?>

                        <div class="col-lg-4 col-md-6 portfolio-item isotope-item filter-<?php echo $row['id_category']; ?>">
                            <img src="admin/uploads/<?php echo $row['image']; ?>" class="img-fluid" alt="">
                            <div class="portfolio-info">
                                <h4><?php echo $row['title']; ?></h4>
                                <p><?php echo $row['content']; ?></p>
                                <a href="admin/uploads/<?php echo $row['image']; ?>" title="App 1" data-gallery="portfolio-gallery-app" class="glightbox preview-link"><i class="bi bi-zoom-in"></i></a>
                                <a href="?page=portofolio-detail" title="More Details" class="details-link"><i class="bi bi-link-45deg"></i></a>
                            </div>
                        </div><!-- End Portfolio Item -->

                    <?php endforeach ?>
                </div><!-- End Portfolio Container -->

            </div>

        </div>

    </section><!-- /Portfolio Section -->

</main>