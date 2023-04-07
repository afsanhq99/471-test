<?php
session_start();
error_reporting(0);
include('includes/config.php');
if (isset($_POST['submit3'])) {
    $pid = intval($_GET['pkgid']);
    $useremail = $_SESSION['login'];
    $fromdate = $_POST['fromdate'];
    $todate = $_POST['todate'];
    $comment = $_POST['comment'];
    $status = 0;
    $sql = "INSERT INTO hotelbooking(HotelId,UserEmail,FromDate,ToDate,Comment,status) VALUES(:pid,:useremail,:fromdate,:todate,:comment,:status)";
    $query = $dbh->prepare($sql);
    $query->bindParam(':pid', $pid, PDO::PARAM_STR);
    $query->bindParam(':useremail', $useremail, PDO::PARAM_STR);
    $query->bindParam(':fromdate', $fromdate, PDO::PARAM_STR);
    $query->bindParam(':todate', $todate, PDO::PARAM_STR);
    $query->bindParam(':comment', $comment, PDO::PARAM_STR);
    $query->bindParam(':status', $status, PDO::PARAM_STR);
    $query->execute();
    $lastInsertId = $dbh->lastInsertId();
    if ($lastInsertId) {
        $msg = "Booked Successfully";
        header("Location: hotel-payment.php");

    } else {
        $error = "Something went wrong. Please try again";
    }
}
?>
<!DOCTYPE HTML>
<html>

<head>
    <title>Triumph Tourism | Hotel Details</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <script type="applijewelleryion/x-javascript">
        addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
    </script>
    <link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
    <link href="css/style.css" rel='stylesheet' type='text/css' />
    <link href='//fonts.googleapis.com/css?family=Open+Sans:400,700,600' rel='stylesheet' type='text/css'>
    <link href='//fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300' rel='stylesheet' type='text/css'>
    <link href='//fonts.googleapis.com/css?family=Oswald' rel='stylesheet' type='text/css'>
    <link href="css/font-awesome.css" rel="stylesheet">
    <!-- Custom Theme files -->
    <script src="js/jquery-1.12.0.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <!--animate-->
    <link href="css/animate.css" rel="stylesheet" type="text/css" media="all">
    <script src="js/wow.min.js"></script>
    <link rel="stylesheet" href="css/jquery-ui.css" />
    <script>
    new WOW().init();
    </script>
    <script src="js/jquery-ui.js"></script>
    <script>
    $(function() {
        $("#datepicker,#datepicker1").datepicker();
    });
    </script>
    <style>
    .errorWrap {
        padding: 10px;
        margin: 0 0 20px 0;
        background: #fff;
        border-left: 4px solid #dd3d36;
        -webkit-box-shadow: 0 1px 1px 0 rgba(0, 0, 0, .1);
        box-shadow: 0 1px 1px 0 rgba(0, 0, 0, .1);
    }

    .succWrap {
        padding: 10px;
        margin: 0 0 20px 0;
        background: #fff;
        border-left: 4px solid #5cb85c;
        -webkit-box-shadow: 0 1px 1px 0 rgba(0, 0, 0, .1);
        box-shadow: 0 1px 1px 0 rgba(0, 0, 0, .1);
    }
    </style>
</head>

<body>
    <!-- top-header -->
    <?php include('includes/header.php'); ?>
    <div class="banner-3">
        <div class="container">
            <h1 class="wow zoomIn animated animated" data-wow-delay=".5s"
                style="visibility: visible; animation-delay: 0.5s; animation-name: zoomIn;"> Triumph Tourism -Hotel
                Details</h1>
        </div>
    </div>
    <div class="container mt-5">
        <div class="row">
            <div class="col-md-12">
                <h1>Create Your Custom Tour Package</h1>
                <p>Choose your preferred destinations and activities to create your perfect tour package.</p>
            </div>
        </div>
        <form>
            <div class="form-group">
                <label for="destination">Destination</label>
                <select class="form-control" id="destination">
                    <option>Select a destination</option>
                    <option>Cox'Bazar</option>
                    <option>Los Angeles</option>
                    <option>Miami</option>
                    <option>San Francisco</option>
                </select>
            </div>
            <div class="form-group">
                <label for="activities">Activities</label>
                <div class="form-check">
                    <input class="form-check-input" type="checkbox" value="" id="activity1">
                    <label class="form-check-label" for="activity1">
                        Sightseeing
                    </label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="checkbox" value="" id="activity2">
                    <label class="form-check-label" for="activity2">
                        Hiking
                    </label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="checkbox" value="" id="activity3">
                    <label class="form-check-label" for="activity3">
                        Shopping
                    </label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="checkbox" value="" id="activity4">
                    <label class="form-check-label" for="activity4">
                        Beach
                    </label>
                </div>

            </div>
            <br></br>
            <div class="form-group">
                <label for="budget">Budget</label>
                <input type="range" class="form-control-range" id="budget" min="0" max="10000" step="100" value="5000">
                <span id="budgetValue">$5000</span>
            </div>

            <div class="bnr-right">
                <label class="inputLabel">From</label>
                <input class="date" id="datepicker" type="text" placeholder="dd-mm-yyyy" name="fromdate" required="">
            </div>
            <div class="bnr-right">
                <label class="inputLabel">To</label>
                <input class="date" id="datepicker1" type="text" placeholder="dd-mm-yyyy" name="todate">

            </div>


            <br></br>
            <div>
                <button type="submit" class="btn btn-primary">Submit</button>
            </div>


        </form>
    </div>


    <script>
    // Update budget value based on slider
    const budgetSlider = document.getElementById("budget");
    const budgetValue = document.getElementById("budgetValue");
    budgetSlider.oninput = function() {
        budgetValue.innerHTML = "$" + this.value;
    }
    </script>
    </div>
    <script>



    </script>
    <!--- /selectroom ---->
    <<!--- /footer-top ---->
        <?php include('includes/footer.php'); ?>
        <!-- signup -->
        <?php include('includes/signup.php'); ?>
        <!-- //signu -->
        <!-- signin -->
        <?php include('includes/signin.php'); ?>
        <!-- //signin -->
        <!-- write us -->
        <?php include('includes/write-us.php'); ?>
</body>

</html>