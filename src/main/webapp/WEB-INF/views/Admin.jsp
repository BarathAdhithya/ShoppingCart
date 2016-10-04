<%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title>ADMIN</title>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
  <style>
  div.FontManip{
  
  font-weight:bold;
  font-style:italic;
  color:red;
  }
  
  body{
    background-image:url("https://truthsandillusions.files.wordpress.com/2015/02/the-left-behind.png");
    background-repeat:no-repeat;
    }
    .carousel-control.left, .carousel-control.right {
   background: !important;
   progid: none !important;
   filter:none !important;
   background-image:none;
   outline: 5;
   opacity: 0.4;
 }
 
 .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 100%;
	  height:450px;
	  margin: 0px 0px 0px 0px;
	  }
  
  div.Carosel{
	 margin:-48px 0px 0px 0px;
	}
	
	div.Carosel5 {
 top:150px;
margin-left:410px;
width:20%;
height:65%;
}
  
  
  </style>
</head>
<body>



<nav class="navbar navbar-deafault">
<div class="FontManip">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="http://localhost:8080/ShoppingCart"><span style="font-family:arial;color:indigo;">ShoppingCart</span></a>
      <a class="navbar-brand" href="http://localhost:8080/ShoppingCart"><span style="margin-left:-20px;"><img class="image-rounded" src="http://www.avalisa.com/images/detailed/7/avalisa-canvas-wall-art-navy-dog-face.jpg" width=25px height=25px></span></a>
    </div>
    <ul class="nav navbar-nav nav-tabs" style="margin-left:320px;">
      <li class="active"><a class="glyphicon glyphicon-home" href="http://localhost:8080/ShoppingCart/"><span style="font-family:arial;color:indigo;"><b></b></span></a></li>
      <li><a href="Supplier"><span style="font-family:arial;color:indigo;"><b>Supplier</b></span></a></li>
      <li><a href="Product"><span style="font-family:arial;color:indigo;"><b>Product</b></span></a></li> 
      <li><a href="Category"><span style="font-family:arial;color:indigo;"><b>Category</b></span></a></li> 
    </ul>
     <a class="navbar-brand"><span style="font-family:arial;color:indigo;margin-left:300px;">Welcome Barath</span></a>
  </div>
  </div>
</nav>

<div class="Carosel">
  <div class="container myclass">
  
  <br>
  <div id="myCarousel" class="carousel slide" data-ride="carousel" style="width:500px; margin-left:320px;">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
      <li data-target="#myCarousel" data-slide-to="4"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">

      <div class="item active">
        <img src="http://www.hd-freewallpapers.com/latest-wallpapers/desktop-hd-parrots-birds-images.jpg" alt="Chania" width="500" height="500">
        <div class="carousel-caption">
         <a href="#myModal1" data-toggle="modal" data-target="#myModal1">
          <img src="http://www.nhptv.org/gsc/images/playbutton.png" 
                          class="img-circle" alt="#" width="304" height="236" 
                          style="width:50px;height:50px;  "></a>
          <h3></h3>
          <p></p>
        </div>
      </div>

      <div class="item">
        <img src="https://images7.alphacoders.com/313/thumb-1920-313966.jpg" alt="Chania" width="700" height="700">
        <div class="carousel-caption">
          <a href="#myModal2" data-toggle="modal" data-target="#myModal2">
         <img src="https://openclipart.org/download/219326/1432343177.svg" 
                          class="img-circle" alt="#" width="304" height="236" 
                          style="width:50px;height:50px;  "></a>
          <h3></h3>
          <p></p>
        </div>
      </div>
    
      <div class="item">
        <img src="http://i.imgur.com/MdUG4mc.jpg" alt="Flower" width="460" height="345">
        <div class="carousel-caption">
          <a href="#myModal3" data-toggle="modal" data-target="#myModal3">
         <img src="http://www.nhptv.org/gsc/images/playbutton.png" 
                          class="img-circle" alt="#" width="304" height="236" 
                          style="width:50px;height:50px;  "></a>
          <h3></h3>
          <p></p>
        </div>
      </div>
	  
	  <div class="item">
        <img src="http://wallpaperlayer.com/img/2015/12/cute-cats-hd-6153-6426-hd-wallpapers.jpg" alt="Flower" width="460" height="345">
        <div class="carousel-caption">
         <a href="#myModal4" data-toggle="modal" data-target="#myModal4">
        <img src="https://openclipart.org/download/219326/1432343177.svg" 
                          class="img-circle" alt="#" width="304" height="236" 
                          style="width:50px;height:50px;  "></a>
          <h3></h3>
          <p></p>
        </div>
      </div>


      <div class="item">
        <img src="http://www.magazinefuse.com/wp-content/uploads/2015/07/3-white_eyed_birds-1920x1200-1024x640.jpg" alt="Flower" width="460" height="345">
        <div class="carousel-caption">
        <a href="#myModal" data-toggle="modal" data-target="#myModal">
        <img src="http://icon-park.com/imagefiles/movie_play_pink.png" 
                          class="img-circle" alt="#" width="304" height="236" 
                          style="width:50px;height:50px;  "></a>
   
                          
          <h3></h3>
          <p> </p>
        </div>
      </div>
  
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
  </div>
  </div>
  
   <div class="modal fade" id="myModal">
	<div class="modal-dialog">
      <div class="modal-content">
       
          <!-- <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button> -->
        
       
        <div class="modal-body"  >
        <div class="Carosel5" >
         <!--  <img src="http://softtouchvolleyball.com/wp-content/uploads/2013/09/Cool-Designs-Wallpapers-for-Background-HD-Wallpaper-1080x607.jpg"
             style="width:100%;height:500px;"> -->
            <iframe title="YouTube1" class="youtube-player" style="margin:-7px 0px 0px -425px" 
           width="598.5px" height="100%" src="http://www.youtube.com/embed/W-Q7RMpINVo"
             ></iframe>
          </div>  
        </div>
         </div>
    </div>
</div>

 <div class="modal fade" id="myModal4">
	<div class="modal-dialog">
      <div class="modal-content">
       
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
        
       
        <div class="modal-body"  >
        <div class=Carosel5 >
          <!-- <img src="http://softtouchvolleyball.com/wp-content/uploads/2013/09/Cool-Designs-Wallpapers-for-Background-HD-Wallpaper-1080x607.jpg"
             style="width:100%;height:500px;"> -->
            <iframe title="YouTube2" class="youtube-player" style="margin:-7px 0px 0px -425px" 
           width="598.5px" height="100%" src="http://www.youtube.com/embed/W-Q7RMpINVo"
             ></iframe>
          </div>  
        </div>
         </div>
    </div>
</div>

<div class="modal fade" id="myModal3">
	<div class="modal-dialog">
      <div class="modal-content">
       
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
        
       
        <div class="modal-body"  >
        <div class=Carosel5 >
          <!-- <img src="http://softtouchvolleyball.com/wp-content/uploads/2013/09/Cool-Designs-Wallpapers-for-Background-HD-Wallpaper-1080x607.jpg"
             style="width:100%;height:500px;"> -->
            <iframe title="YouTube3" class="youtube-player" style="margin:-7px 0px 0px -425px" 
           width="598.5px" height="100%" src="http://www.youtube.com/embed/W-Q7RMpINVo"
             ></iframe>
          </div>  
        </div>
         </div>
    </div>
</div>

<div class="modal fade" id="myModal2">
	<div class="modal-dialog">
      <div class="modal-content">
       
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
        
       
        <div class="modal-body"  >
        <div class=Carosel5 >
          <!-- <img src="http://softtouchvolleyball.com/wp-content/uploads/2013/09/Cool-Designs-Wallpapers-for-Background-HD-Wallpaper-1080x607.jpg"
             style="width:100%;height:500px;"> -->
            <iframe title="YouTube4" class="youtube-player" style="margin:-7px 0px 0px -425px" 
           width="598.5px" height="100%" src="http://www.youtube.com/embed/W-Q7RMpINVo"
             ></iframe>
          </div>  
        </div>
         </div>
    </div>
</div>

<div class="modal fade" id="myModal1">
	<div class="modal-dialog">
      <div class="modal-content">
       
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
        
       
        <div class="modal-body"  >
        <div class=Carosel5 >
          <!-- <img src="http://softtouchvolleyball.com/wp-content/uploads/2013/09/Cool-Designs-Wallpapers-for-Background-HD-Wallpaper-1080x607.jpg"
             style="width:100%;height:500px;"> -->
            <iframe title="YouTube5" class="youtube-player" style="margin:-7px 0px 0px -425px" 
           width="598.5px" height="100%" src="http://www.youtube.com/embed/W-Q7RMpINVo"
             ></iframe>
          </div>  
        </div>
         </div>
    </div>
</div> 


</body>
<c:choose>
<c:when test="${userclickedproduct }">
<c:import url="/WEB-INF/views/Product.jsp"/>
</c:when>
</c:choose>

<c:choose>
<c:when test="${userclickedsupplier }">
<c:import url="/WEB-INF/views/Supplier.jsp"/>
</c:when>
</c:choose>

<c:choose>
<c:when test="${userclickedcategory }">
<c:import url="/WEB-INF/views/Category.jsp"/>
</c:when>
</c:choose>
</html>