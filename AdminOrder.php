<?php

session_start();

echo"

<header>
<link rel = \"stylesheet\" href = \"css.css\">
<style>





#border
{
    box-sizing: border-box;
    width: 600px;
    height: 520px;
    padding: 30px;
    border: 10px solid black;

}

p.solid
{
    border-style: solid;
    background-color: DarkBlue;
    width: 250px;
    color: white;
    
}

table
{
    border: 0px;
    color:white;
    
}


</style>
</header>";


echo "

<body>

<link rel=\"stylesheet\" type=\"text/css\" href=\"styles.css\">

<body background=\"img/bg22.jpg\" style=\"background-image:url(img/bg22.jpg); background-repeat:no-repeat; background-size:cover\">

<a href=\"https://globfone.com/\" style=\"color:white; font-style:Tw Cen MT; \">012-3456789</a> &nbsp

<a href=\"mailto:email@email.com\" style=\"color:white; font-style:Tw Cen MT; \">email@email.com</a>

<a href=\"https://www.instagram.com\">
<img src = \"img/Instagram.png\" width=\"70\" height=\"70\" align=right> </a> 

<a href=\"https://www.facebook.com\">
<img src = \"img/Facebook.png\" width=\"70\" height=\"70\" align=right> </a>

<br>

<a href=\"indexA.php\">
<img src = \"img/logo.png\" width=\"70\" height=\"70\"></a>

<div id=\"box\">
		<ul>
			<li><a href=\"indexA.php\" style=\"color:white; text-decoration:none\">HOME</a></li>
			
			<li><a href=\"GalleryA.php\"  style=\"color:white; text-decoration:none\">GALLERY</a></li>
			<li><a href=\"AboutA.php\" style=\"color:white; text-decoration:none\">ABOUT US</a></li>
			<li><a href=\"ContactA.php\"  style=\"color:white; text-decoration:none\">CONTACT US</a></li>
		</ul>
</div>

<a href=\"AdminProfile.php\">
<img src = \"img/l.png\" width=\"70\" height=\"70\"></h3></a>

<br><br><br><br>

<center>
<table>
  <tr>
    <th>
        <h4><a href=\"AdminProfile.php\" style=\"color:white; font-style:Tw Cen MT;\">EDIT PROFILE</a></h4>
        <h4><a href=\"AdminOrder.php\" style=\"color:white; font-style:Tw Cen MT;\">MY ORDER</a></h4>
        <h4><a href=\"AdminListing.php\" style=\"color:white; font-style:Tw Cen MT;\">EDIT LISTING</a></h4>
        <h4><a href=\"AdminForum.php\" style=\"color:white; font-style:Tw Cen MT;\">FORUM</a></h4>
        <br><br>
        <h4><a href=\"index.php\" style=\"color:white; font-style:Tw Cen MT;\">SIGN OUT</a></h4>
    </th>
    <th>";




        $servername = "localhost";
        $username = "root";
        $password = "";
        $dbname = "group6db";

        //Create connection
        $conn = new mysqli($servername, $username, $password, $dbname);

        //Check connection
        if ($conn->connect_error)
        {   
            die("Connection failed: " . $conn->connect_error);
        }
            
        $adminId = $_SESSION['sAdminId'];
        
        $sql = "SELECT * FROM car
        WHERE adminId = '$adminId'";
        $result = $conn->query($sql);    

        if($result->num_rows > 0)
        {  
            while($row = $result->fetch_assoc()) {     
            
                $carId = $row["carId"];
            
                $sql2 = "SELECT * FROM booking
                WHERE carId = '$carId'";
                $result2 = $conn->query($sql2);    
                if($result2->num_rows > 0)
                {  
                    while($row2 = $result2->fetch_assoc()) {     
                        echo "
                        <table style=\"border:1px solid gold\"> <tr><th style=\"border:1px solid gold\">Booking ID</th><th style=\"border:1px solid gold\">Booking Date</th><th style=\"border:1px solid gold\">Booking Time</th><th style=\"border:1px solid gold\">Hours</th><th style=\"border:1px solid gold\">Price</th></tr>";
                    
                        echo" <tr><td>".$row2["bookingId"]."</td><td>".$row2["bookingDate"]."</td><td>".$row2["bookingTime"]."</td><td>".$row2["bookingDuration"]."</td><td>".$row2["bookingPrice"]."</td></tr></table><br><br>";
                    }
                }
                else echo " <script> alert('Data Error') </script> ";
            }
        }
        else echo " <script> alert('Data Error') </script> ";


        echo "
    </th>
    </tr>
</table>
</center>

<br><br><br><br><br><br>
<footer style=\"text-align: right; font-style:Tw Cen MT; color:white\">Copyright &copy; 2020, UMSCAR. All Rights Reserved.
</footer>
   
</body>    
";

?>