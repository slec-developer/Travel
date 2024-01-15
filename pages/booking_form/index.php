<?php
include_once ('../../api/config.php');

//@var change table name
define("TABLE_NAME", "token");

if($_GET['status'] === 'true' && $_GET['isExpired'] === 'true') {
    $status = 1;
    $description = "Your verification code is already used and expired. Please book again your destination.";
} elseif($_GET['status'] === 'true') {
    $status = 1;
    $description = "Your verification code is already used. Please book again your destination.";
} elseif($_GET['isExpired'] === 'true') {
    $status = 1;
    $description = "Your verification code is expired. Please book again your destination.";
} elseif($_GET['status'] === 'false' && $_GET['isExpired'] === 'false') {
    $status = 0;
//     //@TODO Change column variables
//    //@var
//    $columns = array(
//         "status" => "used"
//     );

//     $database->where("token", $_GET['t']);
//     $database->update(TABLE_NAME, $columns);

    $description = "Your email is verified!";
} else {
    $status = 1;
    $description = "Error";
}


?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Booing Form | CK Travel and Tours</title>

    <!-- ================================================= -->
    <!-- ============   CSS DEPENDENCIES   =============== -->
    <!-- ================================================= -->
    <?php   include('../includes/css_dependencies.php');   ?>
    <link rel="stylesheet" href="style.css">
    <!-- ================================================= -->
    <!-- =========   END OF CSS DEPENDENCIES   =========== -->
    <!-- ================================================= -->
</head>
<body>
     <!-- ================================================= -->
    <!-- ============   HEADER   =============== -->
    <!-- ================================================= -->
    <?php   include('../includes/header.php');   ?>
    <!-- ================================================= -->
    <!-- ==============   END OF HEADER  ================= -->
    <!-- ================================================= -->
    <div class="container bg-white mt-2 pt-2">
        <?php 
        if($status === 1) {
            echo "<h1 class='text-danger text-center'>".$description."</h1>";
        ?>
        
        <?php
        } else {
        ?>
            <div class="alert alert-success mt-2" role="alert">
                <h4 class="alert-heading"><?php echo $description; ?></h4>
                <p>Please fill up the form below, so you can proceed to your payment.</p>
                <hr>
                <p class="mb-0">Thank you for choosing CK Travel and Tours.</p>
            </div>
            <form>
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="inputEmail4">Email</label>
                        <input type="email" class="form-control" id="email" placeholder="Email" minlength="5" maxlength="20" required>
                    </div>
                    <div class="form-group col-md-6">
                        <label for="inputEmail4">Contact no:</label>
                        <input type="number" class="form-control" id="contact" placeholder="Contact no:" minlength="5" maxlength="11" required>
                    </div>
                    <div class="form-group col-md-6">
                        <label for="inputPassword4">First Name</label>
                        <input type="text" class="form-control" id="fname" placeholder="First Name" minlength="5" maxlength="20" required>
                    </div>
                    <div class="form-group col-md-6">
                        <label for="inputPassword4">Last Name</label>
                        <input type="text" class="form-control" id="lname" placeholder="Last Name" minlength="5" maxlength="20" required>
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputAddress">Address</label>
                    <input type="text" class="form-control" id="inputAddress" placeholder="1234 Main St" minlength="5" maxlength="100" required>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-6">
                    <label for="inputCity">Destination</label>
                    <input type="text" class="form-control" id="inputCity" minlength="5" maxlength="20" required>
                    </div>
                    <div class="form-group col-md-4">
                    <label for="inputState">Packages</label>
                    <select id="inputState" class="form-control" required>
                        <option selected>Choose Package</option>
                        <option>...</option>
                    </select>
                    </div>
                </div>
                <br><br>
                <button type="submit" class="btn btn-primary">Submit</button>
                <br><br>
            </form>
        <?php
        }
        ?>
    </div>
    
</body>
    <!-- ================================================= -->
    <!-- ============   CSS DEPENDENCIES   =============== -->
    <!-- ================================================= -->
    <?php   include('../includes/script_dependencies.php');   ?>
    <script src="script.js"></script>
    <!-- ================================================= -->
    <!-- =========   END OF CSS DEPENDENCIES   =========== -->
    <!-- ================================================= -->
</html>