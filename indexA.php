<?php

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
	<div class=\"slideshow-container\">
	<div class=\"mySlides fade\">
    <img src=\"img/bg26.jpg\" style=\"width:75%;height:75%\">
	</a>  
	</div> 
	</center>

	<center>
	<div class=\"mySlides fade\">
    <img src=\"img/bg24.jpg\" style=\"width:75%;height:75%\">
	</a>
	</div>
	</center>
	
	<center>
	<div class=\"mySlides fade\">
	<img src=\"img/bg28.jpg\" style=\"width:75%;height:75%\">
	</a>
	</div>
	</center>
	</div>
	<br>
    
    <div style=\"text-align:center\">
  <span class=\"dot\" onclick=\"currentSlide(1)\"></span> 
  <span class=\"dot\" onclick=\"currentSlide(2)\"></span> 
  <span class=\"dot\" onclick=\"currentSlide(3)\"></span> 
  </div>

<script>
var slideIndex = 0;
showSlides();

function showSlides() {
    var i;
    var slides = document.getElementsByClassName(\"mySlides\");
    for (i = 0; i < slides.length; i++) {
        slides[i].style.display = \"none\"; 
    }
  slideIndex++;
    if (slideIndex> slides.length) {slideIndex = 1} 
    slides[slideIndex-1].style.display = \"block\"; 
    setTimeout(showSlides, 2000); 
}
</script>
    
<center>    
<br>

<br><br><br><br>

<footer style=\"text-align: right; font-style:Tw Cen MT; color:white\">Copyright &copy; 2020, UMSCAR. All Rights Reserved.
</footer>

</body>  
";


?>