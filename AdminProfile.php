<?php

session_start();

echo"

<header>
<style>

fieldset
{
    border:0px;
   
}

table
{
    border:0px;
    width:700px;
    text-align: left;
}


</style>
</header>";

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

    $_SESSION['sAdminId'];

    $sql = "SELECT * FROM admin
    WHERE adminId = '$adminId' ";
    
    $result = $conn->query($sql);
    
    while($row = $result->fetch_assoc())
    {
        $adminFirstName = $row['adminFirstName'];
        $adminMobile = $row['adminMobile'];
        $adminAge = $row['adminAge'];
        $adminIc = $row['adminIc'];
    }   

$_SESSION['sAdminFirstName'] = $adminFirstName;
$_SESSION['sAdminMobile'] = $adminMobile;

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
    <th>
    
        <form action = \"AdminEdit.php\" method = \"POST\">
        <fieldset><h5>
        <center><h4>Profile Details</h4></center>
        <br><br>
        
        Name : 
        <input type = \"text\" name = \"AdminName\" value = \"$adminFirstName\">

        Age : 
        <input type = \"text\" name = \"Age\" value = \"$adminAge\"><br><br>

        IC No : 
        <input type = \"text\" name = \"Icno\" value = \"$adminIc\">
        <br><br>
    
        Phone No : 
        <input type = \"text\" name = \"Mobile\" value = \"$adminMobile\">
        <br><br><br>
    
        <input style=\"font-size: 15px ; font-family:Georgia ; background-color:silver; border-radius: 12px;\" type = \"submit\" name =\"edit\" \" value = \"Edit\">
    
        </h5></fieldset>
        </form>
    </th>
    </tr>
</table>
</center>
<br><br><br><br><br><br>
<footer style=\"text-align: right; font-style:Tw Cen MT; color:white\">Copyright &copy; 2020, UMSCAR. All Rights Reserved.
</footer>

</body>  
";

$conn->close();
?>