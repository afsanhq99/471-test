<?php
session_start();
error_reporting(0);
include('includes/config.php');
if (isset($_POST['submit'])) {
    $pid = intval($_GET['pkgid']);
    $useremail = $_SESSION['login'];
    $fromdate = $_POST['fromdate'];
    $todate = $_POST['todate'];
    $comment = $_POST['comment'];
    $status = 0;
    $sql = "INSERT INTO tblbooking(PackageId,UserEmail,FromDate,ToDate,Comment,status) VALUES(:pid,:useremail,:fromdate,:todate,:comment,:status)";
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
    } else {
        $error = "Something went wrong. Please try again";
    }
}
?>
<!DOCTYPE HTML>
<html>

<head>
    <title>Payments</title>
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
        body {
            margin-top: 20px;
        }

        .panel-title {
            display: inline;
            font-weight: bold;
        }

        .checkbox.pull-right {
            margin: 0;
        }

        .pl-ziro {
            padding-left: 0px;
        }
    </style>
</head>

<body>
    <!-- top-header -->
    <?php include('includes/header.php'); ?>

    <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>


    <!------ Include the above in your HEAD tag ---------->
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Customize Tour Package</title>
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.1.3/css/bootstrap.min.css" integrity="sha512-DgGY40t8apHqo3FyLxUSXhE4f4otjK4+1Zzmk2ix/SiP+vccS+7Kj0UyI9BjKsW8Ov22bwLlUZwKSm6T8Y86tw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <!-- Custom CSS -->
        <style>
            body {
                background-color: #f7f7f7;
                font-family: Arial, sans-serif;
            }

            .form-wrapper {
                background-color: #ffffff;
                padding: 40px;
                border-radius: 10px;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            }

            .form-title {
                font-size: 36px;
                font-weight: bold;
                text-align: center;
                margin-bottom: 40px;
            }

            .form-label {
                font-size: 18px;
                font-weight: bold;
            }

            .form-control {
                height: 48px;
                font-size: 18px;
                border: none;
                border-radius: 5px;
                box-shadow: inset 0 0 0 1px rgba(0, 0, 0, 0.2);
            }

            .form-control:focus {
                outline: none;
                box-shadow: inset 0 0 0 2px #007bff;
            }

            .form-btn {
                height: 48px;
                font-size: 18px;
                font-weight: bold;
                border: none;
                border-radius: 5px;
                background-color: #007bff;
                color: #ffffff;
                transition: background-color 0.2s ease;
            }

            .form-btn:hover {
                background-color: #0069d9;
            }

            .form-btn:focus {
                outline: none;
                box-shadow: 0 0 0 2px rgba(0, 123, 255, 0.5);
            }
        </style>
    </head>

    <body>
        <div class="container mt-5">
            <div class="row justify-content-center">
                <div class="col-md-6 form-wrapper">
                    <h1 class="form-title">Customize Your Tour Package</h1>
                    <form id="customizeForm">
                        <div class="mb-3">
                            <label for="destination" class="form-label">Destination:</label>
                            <input type="text" class="form-control" id="destination" name="destination" required>
                        </div>
                        <div class="mb-3">
                            <label for="duration" class="form-label">Duration (days):</label>
                            <input type="number" class="form-control" id="duration" name="duration" min="1" required>
                        </div>
                        <div class="mb-3">
                            <label for="startDate" class="form-label">Start Date:</label>
                            <input type="date" class="form-control" id="startDate" name="startDate" required>
                            <label for="endDate" class="form-label">End Date:</label>
                            <input type="date" class="form-control" id="endDate" name="endDate" required>
                        </div>
                        <div class="mb-3">
                            <label for="numTravelers" class="form-label">Number of Travelers:</label>
                            <input type="number" class="form-control" id="numTravelers" name="numTravelers" min="1" required>
                        </div>
                        <div class="mb-3">
                            <label for="budget" class="form-label">Budget (USD):</label>
                            <input type="number" class="form-control" id="budget" name="budget" min="1" required>
                        </div>
                        <button type="submit" class="btn form-btn">Submit</button>
                    </form>
                </div>
            </div>
        </div>
        <!-- jQuery -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-W2dS7LKtIh9Io4BvC4W4LHftPXtmh//L/lmMAa3nWjzku7AZtR9aNTlYvA8WNo3wY3OJLd/XL7VJfsWIVIbq3Q==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
        <!-- Bootstrap JS -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.1.3/js/bootstrap.min.js" integrity="sha512-GOG7VSwyW/Mu8qV44c2XKj5NY5C5/F5a7zELsjjKlZChfUaxpe6pj14K6Ug9XyGFWn6ogodrGWXXYfsZYY8Q6A==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
        <!-- Custom JS -->
        <script>
            $(document).ready(function() {
                $('#customizeForm').submit(function(e) {
                    e.preventDefault();
                    $.ajax({
                        url: 'customize.php',
                        type: 'POST',
                        data: $('#customizeForm').serialize(),
                        success: function(response) {
                            // Handle success response here
                            console.log(response);
                        },
                        error: function(xhr, status, error) {
                            // Handle error response here
                            console.log(xhr.responseText);
                        }
                    });
                });
            });
        </script>
    </body>

    </html>













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