 <?php
    session_start();
error_reporting(0);
        // servername => localhost
        // username => root
        // password => empty
        // database name => staff
        $conn = mysqli_connect("localhost", "root", "", "tms");
         
        // Check connection
        if($conn === false){
            die("ERROR: Could not connect. "
                . mysqli_connect_error());
        }
         
        // Taking all 5 values from the form data(input)

     $useremail = $_SESSION['login'];
     $name = $_POST['name'];


     $card_number = $_POST['card_number'];
     $expiry_date = $_POST['expiry_date'];

     $amount = $_POST['amount'];


     // Performing insert query execution
     // here our table name is college
     $sql = "INSERT INTO packagepayment  VALUES ('$name',
            '$card_number','$expiry_date','$amount','$useremail')";

     if (mysqli_query($conn, $sql)) {
         echo "<h3>data stored in a database successfully."
             . " Please browse your localhost php my admin"
             . " to view the updated data</h3>";
     header("Location: thankyou.php");

     } else {
         echo "ERROR: Hush! Sorry $sql. "
             . mysqli_error($conn);
     }


         
        // Close connection
        mysqli_close($conn);?>