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
    <link href="css/style.css" rel='stylesheet' type='text/css' />
    <link href="css/bootstrap.css" rel='stylesheet' type='text/css' />

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
    <div class="banner" style="height: 700px; ">
        <div class="container">
            <h1 class="wow zoomIn animated animated" data-wow-delay=".5s"
                style="visibility: visible; animation-delay: 0.5s; animation-name: zoomIn;"> Triumph Tourism
            </h1>
        </div>
    </div>


    <!--- rupes ---->
    <div class="container">
        <div class="rupes" style="background-color:#fff;" ; border-radius: 25px;">
            <div class="col-md-4 rupes-left wow fadeInDown animated animated" data-wow-delay=".5s"
                style="visibility: visible; animation-delay: 0.5s; animation-name: fadeInDown;">
                <div class="rup-left">
                    <a href="offers.html"><i class="fa fa-usd"></i></a>
                </div>
                <div class="rup-rgt">
                    <h3>UP TO USD. 50 OFF</h3>
                    <h4><a href="offers.html">TRAVEL SMART</a></h4>

                </div>
                <div class="clearfix"></div>
            </div>
            <div class="col-md-4 rupes-left wow fadeInDown animated animated" data-wow-delay=".5s"
                style="visibility: visible; animation-delay: 0.5s; animation-name: fadeInDown;">
                <div class="rup-left">
                    <a href="offers.html"><i class="fa fa-h-square"></i></a>
                </div>
                <div class="rup-rgt">
                    <h3>UP TO 70% OFF</h3>
                    <h4><a href="offers.html">ON HOTELS ACROSS WORLD</a></h4>

                </div>
                <div class="clearfix"></div>
            </div>
            <div class="col-md-4 rupes-left wow fadeInDown animated animated" data-wow-delay=".5s"
                style="visibility: visible; animation-delay: 0.5s; animation-name: fadeInDown;">
                <div class="rup-left">
                    <a href="offers.html"><i class="fa fa-mobile"></i></a>
                </div>
                <div class="rup-rgt">
                    <h3>FLAT USD. 50 OFF</h3>
                    <h4><a href="offers.html">US APP OFFER</a></h4>

                </div>
                <div class="clearfix" style="box-shadow: 10px 5px 5px teal; border-radius: 10px; border-radius: 10px">
                </div>
            </div>

        </div>
    </div>
    <!--- /rupes ---->




    <!---holiday---->
    <div class="container">
        <div class="holiday">





            <h3>Package List</h3>
            <b></b>
            <b></b>
            <b></b>
            <div class="container">
                <div class="row">
                    <form action="search.php" class="form-inline md-form mr-auto mb-4">
                        <input class="form-control mr-sm-2" name='searched_name' types="text"
                            placeholder="Search by name" aria-label="Search">
                        <button class="btn btn-outline-warning mt-2  btn-rounded btn-sm my-0" type="submit">Search By
                            Name</button>
                    </form>


                    <form action="search.php" class="form-inline md-form mr-auto mb-4">
                        <input class="form-control mr-sm-2" name='searched_price1' types="text" placeholder="Price1"
                            aria-label="Search">

                        <input class="form-control mr-sm-2" name='searched_price2' types="text" placeholder="Price2"
                            aria-label="Search">
                        <button class="btn btn-outline-warning mt-2  btn-rounded btn-sm my-0"
                            type="submit">Price</button>
                    </form>




                    <form action="search.php" class="form-inline md-form mr-auto mb-4">
                        <input class="form-control mr-sm-2" name='searched_location' types="text" placeholder="Location"
                            aria-label="Search">
                        <button class="btn btn-outline-warning mt-2  btn-rounded btn-sm my-0"
                            type="submit">Location</button>
                    </form>
                    <br></br>



                    <?php $sql = "SELECT * from tbltourpackages order by rand() limit 4";
					$query = $dbh->prepare($sql);
					$query->execute();
					$results = $query->fetchAll(PDO::FETCH_OBJ);
					$cnt = 1;
					if ($query->rowCount() > 0) {
						foreach ($results as $result) {    ?>
                    <div class="rom-btm" style="border-radius: 10px;">
                        <div class="col-md-3 room-left wow fadeInLeft animated" data-wow-delay=".5s">
                            <img src="admin/pacakgeimages/<?php echo htmlentities($result->PackageImage); ?>"
                                class="img-responsive" alt="">
                        </div>
                        <div class="col-md-6 room-midle wow fadeInUp animated" data-wow-delay=".5s">
                            <h4>Package Name: <?php echo htmlentities($result->PackageName); ?></h4>
                            <h6 style="color:black;">Package Type : <?php echo htmlentities($result->PackageType); ?>
                            </h6>
                            <p style="color:black;"><b>Package Location :</b>
                                <?php echo htmlentities($result->PackageLocation); ?></p>
                            <p style="color:black;"> <b>Features</b>
                                <?php echo htmlentities($result->PackageFetures); ?>
                                </pstyle=>
                        </div>
                        <div class="col-md-3 room-right wow fadeInRight animated" data-wow-delay=".5s">
                            <h5>USD <?php echo htmlentities($result->PackagePrice); ?></h5>
                            <a href="package-details.php?pkgid=<?php echo htmlentities($result->PackageId); ?>"
                                class="view">Details</a>
                        </div>
                        <div class="clearfix"
                            style="background-color:#ddd;  border-radius:10px; box-shadow: 10px 5px 5px teal;">
                        </div>
                    </div>

                    <?php }
					} ?>


                    <div><a href="package-list.php" class="view">View More Packages</a></div>
                </div>
                <div class="clearfix"></div>
            </div>



            <!--- routes ---->


            <!-- signup -->
            <?php include('includes/signup.php'); ?>
            <!-- //signu -->
            <!-- signin -->
            <?php include('includes/signin.php'); ?>
            <!-- //signin -->
            <!-- write us -->
            <?php include('includes/write-us.php'); ?>
            <?php include('includes/footer.php'); ?>
            <!-- //write us -->
</body>

</html>