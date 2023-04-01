<?php
session_start();
error_reporting(0);
include('includes/config.php');
?>
<!DOCTYPE HTML>
<html>

<head>
    <title>Triumph Tourism</title>
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
    <script>
        new WOW().init();
    </script>
    <!--//end-animate-->
</head>

<body>
    <?php include('includes/header.php'); ?>
    <!--- banner ---->
    <div class="banner-3">
        <div class="container">
            <h1 class="wow zoomIn animated animated" data-wow-delay=".5s" style="visibility: visible; animation-delay: 0.5s; animation-name: zoomIn;"> Triumph Tourism- Hotel
                List</h1>
        </div>
    </div>
    <!--- /banner ---->
    <!--- rooms ---->
    <div class="rooms">
        <div class="container">

            <div class="room-bottom">
                <h3>Hotel List</h3>
                <br></br>

                <form action="searchhotel.php" class="form-inline md-form mr-auto mb-4">
                    <input class="form-control mr-sm-2" name='searched_name' types="text" placeholder="Search by name" aria-label="Search" style="color:black;">
                    <button class=" btn btn-outline-warning mt-2 btn-rounded btn-sm my-0" type="submit" style="background-color:#adf0be;">Search By
                        Name </button>
                </form>


                <form action="searchhotel.php" class="form-inline md-form mr-auto mb-4">
                    <input class="form-control mr-sm-2" name='searched_price1' types="text" placeholder="Price" aria-label="Search" style="color:black;">


                    <input class="form-control mr-sm-2" name='searched_price2' types="text" placeholder="Price" aria-label="Search" style="color:black;">
                    <button class=" btn btn-outline-warning mt-2 btn-rounded btn-sm my-0" type="submit" style="background-color:#adf0be;">Price</button>
                </form>




                <form action="searchhotel.php" class="form-inline md-form mr-auto mb-4">
                    <input class="form-control mr-sm-2" name='searched_location' types="text" placeholder="Location" aria-label="Search">
                    <button class="btn btn-dark  btn-rounded btn-sm my-0" type="submit" style="background-color:#adf0be;">Location</button>

                </form>

                <?php $sql = "SELECT * from hoteltourhotels";
                $query = $dbh->prepare($sql);
                $query->execute();
                $results = $query->fetchAll(PDO::FETCH_OBJ);
                $cnt = 1;
                if ($query->rowCount() > 0) {
                    foreach ($results as $result) {    ?>
                        <div class="rom-btm">
                            <div class="col-md-3 room-left wow fadeInLeft animated" data-wow-delay=".5s">
                                <img src="admin/hotelimages/<?php echo htmlentities($result->HotelImage); ?>" class="img-responsive" alt="">
                            </div>
                            <div class="col-md-6 room-midle wow fadeInUp animated" data-wow-delay=".5s">
                                <h4>Hotel Name: <?php echo htmlentities($result->HotelName); ?></h4>
                                <h6 style="color:black;"> Hotel Type : <?php echo htmlentities($result->HotelType); ?></h6>
                                <p style="color:black;"><b>Hotel Location :</b>
                                    <?php echo htmlentities($result->HotelLocation); ?></p>
                                <p style="color:black;"><b>Features</b> <?php echo htmlentities($result->HotelFetures); ?></p>
                            </div>
                            <div class="col-md-3 room-right wow fadeInRight animated" data-wow-delay=".5s">
                                <h5 style="color:black;"> <?php echo htmlentities($result->HotelPrice); ?> Tk</h5>
                                <a href="hotel-details.php?pkgid=<?php echo htmlentities($result->HotelId); ?>" class="view">Details</a>
                            </div>
                            <div class="clearfix" style="box-shadow: 10px 5px 5px teal; border-radius: 10px"></div>
                        </div>

                <?php }
                } ?>



            </div>
        </div>
    </div>
    <!--- /rooms ---->

    <!--- /footer-top ---->
    <?php include('includes/footer.php'); ?>
    <!-- signup -->
    <?php include('includes/signup.php'); ?>
    <!-- //signu -->
    <!-- signin -->
    <?php include('includes/signin.php'); ?>
    <!-- //signin -->
    <!-- write us -->
    <?php include('includes/write-us.php'); ?>
    <!-- //write us -->
</body>

</html>