<?php echo isset($_GET['id']) ? $_GET['id'] : '';

$queryBlogs = mysqli_query($koneksi, "SELECT categories.name, blogs.* FROM blogs 
JOIN categories ON categories.id = blogs.id_category 
ORDER BY blogs.id DESC");
$rowBlogs = mysqli_fetch_assoc($queryBlogs);

$recentBlogs = mysqli_query($koneksi, "SELECT categories.name, blogs.* FROM blogs 
JOIN categories ON categories.id = blogs.id_category 
ORDER BY blogs.id DESC LIMIT 5");
$rowRecentBlogs = mysqli_fetch_all($recentBlogs, MYSQLI_ASSOC);

?>

<main class="main">

    <!-- Page Title -->
    <div class="page-title accent-background">
        <div class="container d-lg-flex justify-content-between align-items-center">
            <h1 class="mb-2 mb-lg-0">Blog Details</h1>
            <nav class="breadcrumbs">
                <ol>
                    <li><a href="index.html">Home</a></li>
                    <li class="current">Blog Details</li>
                </ol>
            </nav>
        </div>
    </div><!-- End Page Title -->

    <div class="container">
        <div class="row">

            <div class="col-lg-8">

                <!-- Blog Details Section -->
                <section id="blog-details" class="blog-details section">
                    <div class="container">

                        <article class="article">

                            <div class="post-img">
                                <img src="admin/uploads/<?php echo $rowBlogs['image'] ?>" alt="" class="img-fluid">
                            </div>

                            <h2 class="title"><?php echo $rowBlogs['title'] ?></h2>

                            <div class="meta-top">
                                <ul>
                                    <li class="d-flex align-items-center"><i class="bi bi-person"></i> <a href="blog-details.html"><?php echo $rowBlogs['penulis'] ?></a></li>
                                    <li class="d-flex align-items-center"><i class="bi bi-clock"></i> <a href="blog-details.html"><time datetime="2020-01-01"><?php echo date("d M Y", strtotime($rowBlogs['created_at'])); ?></time></a></li>
                                    <!-- <li class="d-flex align-items-center"><i class="bi bi-chat-dots"></i> <a href="blog-details.html">12 Comments</a></li> -->
                                </ul>
                            </div><!-- End meta top -->

                            <div class="content">
                                <?php echo $rowBlogs['content'] ?>
                            </div><!-- End post content -->

                            <div class="meta-bottom">
                                <i class="bi bi-folder"></i>
                                <ul class="cats">
                                    <li><a href="#"><?php echo $rowBlogs['name']; ?></a></li>
                                </ul>

                                <i class="bi bi-tags"></i>
                                <ul class="tags">
                                    <?php
                                    $tagsArray = json_decode($rowBlogs['tags'], true);
                                    foreach ($tagsArray as $tag) {
                                        echo '<li><a href="#">' . htmlspecialchars($tag['value']) . '</a></li>';
                                    }
                                    ?>
                                </ul>
                            </div><!-- End meta bottom -->

                        </article>

                    </div>
                </section><!-- /Blog Details Section --><!-- /Comment Form Section -->

            </div>

            <div class="col-lg-4 sidebar">

                <div class="widgets-container"><!--/Blog Author Widget -->

                    <!-- Search Widget -->
                    <div class="search-widget widget-item">

                        <h3 class="widget-title">Search</h3>
                        <form action="">
                            <input type="text">
                            <button type="submit" title="Search"><i class="bi bi-search"></i></button>
                        </form>

                    </div><!--/Search Widget -->

                    <!-- Recent Posts Widget -->
                    <div class="recent-posts-widget widget-item">

                        <h3 class="widget-title">Recent Posts</h3>

                        <?php foreach ($rowRecentBlogs as $key => $rowRecentBlog): ?>

                            <div class="post-item">
                                <h4><a href="blog-details.html"><?php echo $rowRecentBlog['title'] ?></a></h4>
                                <time datetime="2020-01-01"><?php echo date("d M Y", strtotime($rowBlogs['created_at'])); ?></time>
                            </div>

                        <?php endforeach ?><!-- End recent post item--><!-- End recent post item-->

                    </div><!--/Recent Posts Widget -->

                    <!-- Tags Widget -->
                    <div class="tags-widget widget-item">

                        <h3 class="widget-title">Tags</h3>
                        <ul>
                            <?php
                            $tagsArray = json_decode($rowBlogs['tags'], true);
                            foreach ($tagsArray as $tag) {
                                echo '<li><a href="#">' . htmlspecialchars($tag['value']) . '</a></li>';
                            }
                            ?>
                        </ul>

                    </div><!--/Tags Widget -->

                </div>

            </div>

        </div>
    </div>

</main>