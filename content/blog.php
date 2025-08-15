<!-- Page Title -->
<div class="page-title accent-background">
    <div class="container d-lg-flex justify-content-between align-items-center">
        <h1 class="mb-2 mb-lg-0">Blog</h1>
        <nav class="breadcrumbs">
            <ol>
                <li><a href="index.html">Home</a></li>
                <li class="current">Blog</li>
            </ol>
        </nav>
    </div>
</div><!-- End Page Title -->

<!-- Blog Posts Section -->
<section id="blog-posts" class="blog-posts section">

    <div class="container">
        <div class="row gy-4">

            <?php foreach ($rowBlogs as $key => $rowBlog): ?>
                <div class="col-lg-4">
                    <article class="position-relative h-100">


                        <div class="post-img position-relative overflow-hidden">
                            <img class="img-fluid" src="admin/uploads/<?php echo $rowBlog['image']; ?>" alt="">
                            <span class="post-date">
                                <?php echo date("d M Y", strtotime($rowBlog['created_at'])); ?>
                            </span>
                        </div>

                        <div class="post-content d-flex flex-column">

                            <h3 class="post-title"><?php echo $rowBlog['title']; ?></h3>

                            <div class="meta d-flex align-items-center">
                                <div class="d-flex align-items-center">
                                    <i class="bi bi-person"></i> <span class="ps-2"><?php echo $rowBlog['penulis']; ?></span>
                                </div>
                                <span class="px-3 text-black-50">/</span>
                                <div class="d-flex align-items-center">
                                    <i class="bi bi-folder2"></i> <span class="ps-2"><?php echo $rowBlog['name']; ?></span>
                                </div>
                            </div>

                            <?php echo $rowBlog['content']; ?>

                            <hr>

                            <a href="?page=blog-detail&id<?php echo $rowBlog['id']; ?>" class="readmore stretched-link"><span>Read More</span><i class="bi bi-arrow-right"></i></a>

                        </div>

                    </article>
                </div><!-- End post list item --><!-- End post list item -->
            <?php endforeach ?>
        </div>
    </div>

</section><!-- /Blog Posts Section -->

<!-- Blog Pagination Section -->
<section id="blog-pagination" class="blog-pagination section">

    <div class="container">
        <div class="d-flex justify-content-center">
            <ul>
                <li><a href="#"><i class="bi bi-chevron-left"></i></a></li>
                <li><a href="#">1</a></li>
                <li><a href="#" class="active">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li>...</li>
                <li><a href="#">10</a></li>
                <li><a href="#"><i class="bi bi-chevron-right"></i></a></li>
            </ul>
        </div>
    </div>

</section>
<!-- /Blog Pagination Section -->