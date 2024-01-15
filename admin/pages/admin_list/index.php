<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Dashboard | CK Travel and Tours</title>
  <?php // include('../includes/css_dependencies.php') ?>
  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="../../AdminLTE-3.2.0/plugins/fontawesome-free/css/all.min.css">
  <!-- jsGrid -->
  <link rel="stylesheet" href="../../AdminLTE-3.2.0/plugins/jsgrid/jsgrid.min.css">
  <link rel="stylesheet" href="../../AdminLTE-3.2.0/plugins/jsgrid/jsgrid-theme.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="../../AdminLTE-3.2.0/dist/css/adminlte.min.css">

</head>
<body class="hold-transition sidebar-mini layout-fixed">
    <div class="wrapper">
    <?php include('../includes/preloader.php') ?>
    <!-- ============================================================== -->
	<!-- Navbar -->
	<!-- ============================================================== -->
    <?php include('../includes/navbar.php') ?>
    <!-- ============================================================== -->
	<!-- End of Navbar -->
	<!-- ============================================================== -->

    <!-- ============================================================== -->
	<!-- Sidebar -->
	<!-- ============================================================== -->
    <?php include('../includes/sidebar.php') ?>
    <!-- ============================================================== -->
	<!-- End of Sidebar -->
	<!-- ============================================================== -->


    <!-- ============================================================== -->
	<!-- Content Wrapper -->
	<!-- ============================================================== -->
        <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
            <div class="col-sm-6">
                <h1>List of Admins</h1>
            </div>
            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                <li class="breadcrumb-item"><a href="#">Home</a></li>
                <li class="breadcrumb-item active">jsGrid</li>
                </ol>
            </div>
            </div>
        </div><!-- /.container-fluid -->
        </section>

        <!-- Main content -->
        <section class="content">
        <div class="card">
            <div class="card-header">
            <h3 class="card-title">jsGrid</h3>
            </div>
            <!-- /.card-header -->
            <div class="card-body">
            <div id="jsGrid1"></div>
            </div>
            <!-- /.card-body -->
        </div>
        <!-- /.card -->
        </section>
        <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->
    <!-- ============================================================== -->
    <!-- End Wrapper -->
    <!-- ============================================================== -->

    <!-- ============================================================== -->
	<!-- Navbar -->
	<!-- ============================================================== -->
    <?php include('../includes/footer.php') ?>
    <!-- ============================================================== -->
	<!-- End of Navbar -->
	<!-- ============================================================== -->

    
    <!-- Control Sidebar -->
        <aside class="control-sidebar control-sidebar-dark">
            <!-- Control sidebar content goes here -->
        </aside>
        <!-- /.control-sidebar -->
    </div>
    <!-- ./wrapper -->


</body>
<?php // include('../includes/script_dependencies.php') ?>
<!-- jQuery -->
<script src="../../AdminLTE-3.2.0/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="../../AdminLTE-3.2.0/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- jsGrid -->
<script src="../../AdminLTE-3.2.0/plugins/jsgrid/demos/db.js"></script>
<script src="../../AdminLTE-3.2.0/plugins/jsgrid/jsgrid.min.js"></script>
<!-- AdminLTE App -->
<script src="../../AdminLTE-3.2.0/dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="../../AdminLTE-3.2.0/dist/js/demo.js"></script>


<script src="script.js"></script>
</html>
