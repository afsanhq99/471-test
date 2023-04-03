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
    <div class="banner" style="height: 700px; ">
        <div class="container">
            <h1 class="wow zoomIn animated animated" data-wow-delay=".5s" style="visibility: visible; animation-delay: 0.5s; animation-name: zoomIn;"> Triumph Tourism
            </h1>
        </div>
    </div>


    <!--- rupes ---->
    <div class="container">
        <div class="rupes" style="background-color:#fff;" ; border-radius: 25px;">
            <div class="col-md-4 rupes-left wow fadeInDown animated animated" data-wow-delay=".5s" style="visibility: visible; animation-delay: 0.5s; animation-name: fadeInDown;">
                <div class="rup-left">
                    <a href="offers.html"><i class="fa fa-usd"></i></a>
                </div>
                <div class="rup-rgt">
                    <h3>UP TO USD. 50 OFF</h3>
                    <h4><a href="offers.html">TRAVEL SMART</a></h4>

                </div>
                <div class="clearfix"></div>
            </div>
            <div class="col-md-4 rupes-left wow fadeInDown animated animated" data-wow-delay=".5s" style="visibility: visible; animation-delay: 0.5s; animation-name: fadeInDown;">
                <div class="rup-left">
                    <a href="offers.html"><i class="fa fa-h-square"></i></a>
                </div>
                <div class="rup-rgt">
                    <h3>UP TO 70% OFF</h3>
                    <h4><a href="offers.html">ON HOTELS ACROSS WORLD</a></h4>

                </div>
                <div class="clearfix"></div>
            </div>
            <div class="col-md-4 rupes-left wow fadeInDown animated animated" data-wow-delay=".5s" style="visibility: visible; animation-delay: 0.5s; animation-name: fadeInDown;">
                <div class="rup-left">
                    <a href="offers.html"><i class="fa fa-mobile"></i></a>
                </div>
                <div class="rup-rgt">
                    <h3>FLAT USD. 50 OFF</h3>
                    <h4><a href="offers.html">US APP OFFER</a></h4>

                </div>
                <div class="clearfix"></div>
            </div>

        </div>
    </div>
    <!--- /rupes ---->




    <!---holiday---->
    <div class="container">
        <div class="holiday">





            <h3>Hotel List</h3>
            <b></b>
            <b></b>
            <b></b>




            <?php
            # price=SELECT * from hoteltourhotels WHERE hotelPrice BETWEEN '5000' AND '8000 '
            # location=SELECT * from hoteltourhotels WHERE hotelLocation like '$searched_name%''

            $searched_name = $_GET['searched_name'];
            $searched_price1 = intval($_GET['searched_price1']);

            $searched_price2 = intval($_GET['searched_price2']);
            $searched_location = $_GET['searched_location'];

            if (isset($searched_name)) {
                $sql
                    = "SELECT * from hoteltourhotels where HotelName like '%$searched_name%' ";
            } elseif (isset($searched_location)) {
                $sql = "SELECT * from hoteltourhotels where HotelLocation like '%$searched_location%'";
            } elseif (isset($searched_price1) and (isset($searched_price2))) {
                $sql = "SELECT * from hoteltourhotels where HotelPrice between  $searched_price1 and $searched_price2";
            } else {
                $sql = "SELECT * from hoteltourhotels";
            }



            $query = $dbh->prepare($sql);
            $query->execute();
            $results = $query->fetchAll(PDO::FETCH_OBJ);
            $cnt = 1;
            if ($query->rowCount() > 0) {
                foreach ($results as $result) {    ?>
                    <div class="rom-btm" style="border-radius: 10px;">
                        <div class="col-md-3 room-left wow fadeInLeft animated" data-wow-delay=".5s">
                            <img src="admin/hotelimages/<?php echo htmlentities($result->HotelImage); ?>" class="img-responsive" alt="">
                        </div>
                        <div class="col-md-6 room-midle wow fadeInUp animated" data-wow-delay=".5s">
                            <h4>Hotel Name: <?php echo htmlentities($result->HotelName); ?></h4>
                            <h6 style="color:black;">Hotel Type : <?php echo htmlentities($result->HotelType); ?>
                            </h6>
                            <p style="color:black;"><b>hotel Location :</b>
                                <?php echo htmlentities($result->HotelLocation); ?></p>
                            <p style="color:black;"> <b>Features</b>
                                <?php echo htmlentities($result->HotelFetures); ?>
                                </pstyle=>
                        </div>
                        <div class="col-md-3 room-right wow fadeInRight animated" data-wow-delay=".5s">
                            <h5> <?php echo htmlentities($result->HotelPrice); ?> TK</h5>
                            <a href="hotel-details.php?pkgid=<?php echo htmlentities($result->HotelId); ?>" class="view">Details</a>
                        </div>
                        <div class="clearfix" style="background-color:#ddd;  border-radius:4px; border-radius: 10px ; box-shadow: 10px 5px 5px teal;" ;">
                        </div>
                    </div>

            <?php }
            } ?>


            <div><a href="hotel-list.php" class="view">View More Hotels</a></div>
        </div>
        <div class="clearfix" style="box-shadow: 10px 5px 5px teal;"></div>
    </div>



    <!--- routes ---->
    <div class="routes" style="background-color:#253a1c;">
        <div class="container" style="background-color:#253a1c;">
            <div class=" col-md-4 routes-left wow fadeInRight animated" data-wow-delay=".5s">
                <div class="rou-left">
                    <a href="#"><i class="glyphicon glyphicon-list-alt"></i></a>
                </div>
                <div class="rou-rgt wow fadeInDown animated" data-wow-delay=".5s">
                    <h3>80000</h3>
                    <p>Enquiries</p>
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="col-md-4 routes-left">
                <div class="rou-left">
                    <a href="#"><i class="fa fa-user"></i></a>
                </div>
                <div class="rou-rgt">
                    <h3>1900</h3>
                    <p>Regestered users</p>
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="col-md-4 routes-left wow fadeInRight animated" data-wow-delay=".5s">
                <div class="rou-left">
                    <a href="#"><i class="fa fa-ticket"></i></a>
                </div>
                <div class="rou-rgt">
                    <h3>7,00,00,000+</h3>
                    <p>Booking</p>
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>

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