<?php
session_start();
ob_start();
include 'koneksi.php';

if (empty($_SESSION['ID_USER'])) {
    header("Location: index.php?access=failed");
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title>Components / Accordion - NiceAdmin Bootstrap Template</title>
    <meta content="" name="description">
    <meta content="" name="keywords">

    <?php include 'inc/css.php'; ?>

    <!-- =======================================================
  * Template Name: NiceAdmin
  * Template URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
  * Updated: Apr 20 2024 with Bootstrap v5.3.3
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->

    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/summernote@0.9.0/dist/summernote-lite.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/summernote@0.9.0/dist/summernote-lite.min.js"></script>
    <link rel="stylesheet" href="../assets/js/tagify/tagify.css">
    <!-- <link href="../assets/js/tags/dist/inputTags.min.css" rel="stylesheet"> -->
</head>

<body>

    <!-- ======= Header ======= -->
    <?php include 'inc/header.php'; ?>
    <!-- End Header -->

    <!-- ======= Sidebar ======= -->
    <?php include 'inc/sidebar.php'; ?>
    <!-- End Sidebar-->

    <main id="main" class="main">
        <?php
        if (isset($_GET['page'])) {
            if (file_exists('content/' . $_GET['page'] . ".php")) {
                include 'content/' . $_GET['page'] . '.php';
            } else {
                include 'content/notfound.php';
            }
        } else {
            include 'content/dashboard.php';
        }
        ?>

    </main><!-- End #main -->

    <!-- ======= Footer ======= -->
    <?php include 'inc/footer.php'; ?>
    <!-- End Footer -->

    <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

    <!-- Vendor JS Files -->
    <?php include 'inc/js.php'; ?>

    <script src="../assets/js/tagify/tagify.js"></script>

    <script>
        var input = document.querySelector('#tags');
        new Tagify(input)
    </script>

    <script>
        $('#summernote').summernote({
            placeholder: 'Hello stand alone ui',
            tabsize: 2,
            height: 120,
            toolbar: [
                ['style', ['style']],
                ['font', ['bold', 'underline', 'clear']],
                ['color', ['color']],
                ['para', ['ul', 'ol', 'paragraph']],
                ['table', ['table']],
                ['insert', ['link', 'picture', 'video']],
                ['view', ['fullscreen', 'codeview', 'help']]
            ]
        });
    </script>

</body>

</html>