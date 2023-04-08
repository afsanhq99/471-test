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
     $destination= $_POST['destination'];


     $from_date = $_POST['from_date'];
     $to_date = $_POST['to_date'];

     $budget = $_POST['budget'];
     
     $adults = $_POST['adults'];
     
     $children = $_POST['children'];
     


     // Performing insert query execution
     // here our table name is college
     $sql = "INSERT INTO customize_tour  VALUES ('$destination',
            '$budget','$from_date','$to_date','$useremail','$adults','$children')";

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