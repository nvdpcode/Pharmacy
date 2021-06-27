<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
  <title>Pharmacy Dept.</title>
  <meta charset="utf-8" />
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- css -->
  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700|Open+Sans:400,300,700,800" rel="stylesheet" media="screen">

  <link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
  <link href="css/style.css" rel="stylesheet" media="screen">
  <link href="color/default.css" rel="stylesheet" media="screen">
</head>

<body>

  <!-- Navigation -->
  <nav class="navbar navbar-default" role="navigation">
    <div class="container">
      <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
          <span class="sr-only">Toggle nav</span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>

        <!-- Logo text or image -->
        <a class="navbar-brand" href="index.html">Pharmacy Department</a>

      </div>
      <div class="navigation collapse navbar-collapse navbar-ex1-collapse">
        <ul class="nav navbar-nav">
          <li class="current"><a href="#intro">Home</a></li>
          <li><a href="#about">About</a></li>
          <li><a href="#services">Service</a></li>
          <li><a href="#portfolio">Works</a></li>
          <li><a href="#team">Team</a></li>
          <li><a href="#contact">Contact</a></li>
          <li><a href="#intro" data-toggle="modal" data-target="#myModal1">Lab Login </a></li>
          <li><a href="#intro" data-toggle="modal" data-target="#myModal">Admin Login </a></li>
        </ul>
      </div>
    </div>
  </nav>

      <!-- ..//JQuery Source\\.. -->
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<!-- ..//JavaScript Code for this page\\.. -->
<script type="text/javascript">
$(document).ready(function(){
$("#myform1").submit(function(){
 
//remove previous class and add new "myinfo" class
$("#msgbox1").removeClass().addClass('myinfo').text('Validating Your Login ').fadeIn(1000);
 
this.timer = setTimeout(function () {
	$.ajax({
      	url: 'login.jsp',
      	data: 'un='+ $('#login_id').val() +'&pw=' + $('#password').val(),
      	type: 'post',
			success: function(msg){
			if(msg != 1) // Message Sent, check and redirect
			{				// and direct to the success page
				
				$("#msgbox1").html('Login Verified, Logging in.....').addClass('myinfo').fadeTo(900,1,
                  function()
                  {
                     //redirect to secure page
                     document.location='success2.jsp?user='+msg;
                  });

			}
			else
			{
				$("#msgbox1").fadeTo(200,0.1,function() //start fading the messagebox
            	{
                  //add message and change the class of the box and start fading
                  $(this).html('Sorry, Wrong Combination Of Username And Password.').removeClass().addClass('myerror').fadeTo(900,1);
                });

			}
		}
	
	});
}, 200);
return false;
});		

});

 
</script> 
 
<!-- Modal -->
  <div class="modal fade" id="myModal1" role="dialog">
    <div class="modal-dialog">
    

    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header" style="padding:35px 50px;">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4><span class="fa fa-lock"></span> Login</h4>
        </div>
        <div class="modal-body" style="padding:40px 50px;">
          <form name="myform1" id="myform1" role="form" method="post" action="">
            <div class="form-group">
              <label for="usrname"><span class="fa fa-user"></span> Username</label>
              <input type="text" class="form-control" name="login_id" id="login_id" placeholder="Enter email">
            </div>
            <div class="form-group">
              <label for="psw"><span class="fa fa-eye"></span> Password</label>
              <input type="password" class="form-control" name="password" id="password" placeholder="Enter password" >
            </div>
            <div class="checkbox">
              <input type="checkbox" value="no" onclick="myFunctionpass()">Hide Password
            </div>
            
              <button type="submit" class="btn btn-success btn-block" name="login" id="login"><span class="fa fa-power-off"></span> Login</button>
          </form>
        </div>
        <div class="modal-footer">
        <div id="result"></div>
          <button type="submit" class="btn btn-danger btn-default pull-left" data-dismiss="modal"><span class="fa fa-times"></span> Cancel</button>
         <!--  <p>Not a member? <a href="#myModal1" data-dismiss="modal" data-toggle="modal" data-target="#myModal1">Sign Up</a></p> -->
          <!-- <p>Forgot <a href="#">Password?</a></p> -->
          <div>
          <h8 style="color:red;" id="msgbox1"></h8>
          </div>
        </div>
      </div>
      
    </div>
  </div> 
  <script>
function myFunctionpass() {
  var x = document.getElementById("password");
  if (x.type === "password") {
    x.type = "text";
  } else {
    x.type = "password";
  }
}
</script>  
  
      <!-- ..//JQuery Source\\.. -->
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<!-- ..//JavaScript Code for this page\\.. -->
<script type="text/javascript">
$(document).ready(function(){
$("#myform").submit(function(){
 
//remove previous class and add new "myinfo" class
$("#msgbox").removeClass().addClass('myinfo').text('Validating Your Login ').fadeIn(1000);
 
this.timer = setTimeout(function () {
	$.ajax({
      	url: 'login.jsp',
      	data: 'un='+ $('#login_id1').val() +'&pw=' + $('#password1').val(),
      	type: 'post',
			success: function(msg){
			if(msg != 1) // Message Sent, check and redirect
			{				// and direct to the success page
				
				$("#msgbox").html('Login Verified, Logging in.....').addClass('myinfo').fadeTo(900,1,
                  function()
                  {
                     //redirect to secure page
                     document.location='success1.jsp?user='+msg;
                  });

			}
			else
			{
				$("#msgbox").fadeTo(200,0.1,function() //start fading the messagebox
            	{
                  //add message and change the class of the box and start fading
                  $(this).html('Sorry, Wrong Combination Of Username And Password.').removeClass().addClass('myerror').fadeTo(900,1);
                });

			}
		}
	
	});
}, 200);
return false;
});		

});

 
</script>

 <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    

    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header" style="padding:35px 50px;">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4><span class="fa fa-lock"></span> Login</h4>
        </div>
        <div class="modal-body" style="padding:40px 50px;">
          <form name="myform" id="myform" role="form" method="post" action="">
            <div class="form-group">
              <label for="usrname"><span class="fa fa-user"></span> Username</label>
              <input type="text" class="form-control" name="login_id1" id="login_id1" placeholder="Enter email">
            </div>
            <div class="form-group">
              <label for="psw"><span class="fa fa-eye"></span> Password</label>
              <input type="password" class="form-control" name="password1" id="password1" placeholder="Enter password" >
            </div>
            <div class="checkbox">
              <input type="checkbox" value="no" onclick="myFunctionpass()">Hide Password
            </div>
            
              <button type="submit" class="btn btn-success btn-block" name="login" id="login"><span class="fa fa-power-off"></span> Login</button>
          </form>
        </div>
        <div class="modal-footer">
        <div id="result"></div>
          <button type="submit" class="btn btn-danger btn-default pull-left" data-dismiss="modal"><span class="fa fa-times"></span> Cancel</button>
         <!--  <p>Not a member? <a href="#myModal1" data-dismiss="modal" data-toggle="modal" data-target="#myModal1">Sign Up</a></p> -->
          <!-- <p>Forgot <a href="#">Password?</a></p> -->
          <div>
          <h8 style="color:red;" id="msgbox"></h8>
          </div>
        </div>
      </div>
      
    </div>
  </div> 
  <script>
function myFunctionpass() {
  var x = document.getElementById("password");
  if (x.type === "password") {
    x.type = "text";
  } else {
    x.type = "password";
  }
}
</script>

   
  



  <!-- intro area -->
  <div id="intro">
    <div class="intro-text">
      <div class="container">
        <div class="col-md-12">
          <div id="rotator">
            <h1><span class="1strotate">Medi-caps University, lord Byron, Our Goal</span></h1>
            <div class="line-spacer"></div>
            <p><span class="2ndrotate">Pharmacy Department, "Always laugh when you can. It is the cheapest medicine", To manage the inventory easily</span></p>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- About -->
  <section id="about" class="home-section bg-white">
    <div class="container">
      <div class="row">
        <div class="col-md-offset-2 col-md-8">
          <div class="section-heading">
            <h2>About us</h2>
            <div class="heading-line"></div>
            <p>The Pharmacy department in Medi-caps University was started in the year 2019. Medi-Caps University is one of the leading institutions in central India and has now become a brand name in the arena of technical education. </p>
          </div>
        </div>
      </div>
      <div class="row wow fadeInUp">
        <div class="col-md-6 about-img">
          <img src="img/about-img.jpg" alt="">
        </div>

        <div class="col-md-6 content">
          <h2>The Department aims to persuit the excellence for all. We strive for the development of individual potential and to provide high skills to our students.</h2>
          <h3></h3>
          <p>
            The 4-year Bachelor of Pharmacy program is aimed at creating skilled and competent Pharmacists, who guide the patients about the prescriptions of the doctors and provide medicines accordingly. This program gives students comprehensive knowledge of medical drugs and aids. The core pharmacy subjects include Pharmaceutics, Pharmaceutical Chemistry, Pharmacognosy and Pharmacology. The curriculum and syllabi for the course are as per Pharmacy Council of India (PCI) the statutory body governing pharmacy profession in India. The programme concentrates on preparing the students and training them for industry-ready holistic pharmaceutical care in the practice setting.
          </p>
        </div>
      </div>
    </div>
  </section>

  <!-- Parallax 1 -->
  <section id="parallax1" class="home-section parallax" data-stellar-background-ratio="0.5">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="color-light">
            <h2 class="wow bounceInDown" data-wow-delay="0.5s">Details are the key for perfection</h2>
            <p class="lead wow bounceInUp" data-wow-delay="1s">We mix all detailed things together</p>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- Services -->
 

  <!-- Works -->
  <section id="portfolio" class="home-section bg-gray">
    <div class="container">
      <div class="row">
        <div class="col-md-offset-2 col-md-8">
          <div class="section-heading">
            <h2>Works</h2>
            <div class="heading-line"></div>
            <p>Weâ€™ve been building unique digital products, platforms, and experiences for the past 6 years.</p>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-lg-12">

          <ul id="og-grid" class="og-grid">
            <li>
								<img src="img/works/thumbs/1.jpg" alt=""/>
							
            </li>
            <li>
								<img src="img/works/thumbs/2.jpg" alt=""/>
							
            </li>
            <li>
								<img src="img/works/thumbs/3.jpg" alt="img01"/>
							
            </li>
            <li>
								<img src="img/works/thumbs/4.jpg" alt="img01"/>
							
            </li>
            <li>
								<img src="img/works/thumbs/5.jpg" alt="img01"/>
            </li>
            <li>
								<img src="img/works/thumbs/6.jpg" alt="img01"/>
            </li>
            <li>
								<img src="img/works/thumbs/7.jpg" alt="img01"/>
            </li>
            <li>
								<img src="img/works/thumbs/8.jpg" alt="img01"/>
            </li>
            <li>
								<img src="img/works/thumbs/9.jpg" alt="img01"/>
            </li>
            <li>
								<img src="img/works/thumbs/10.jpg" alt="img01"/>
            </li>
            <li>
								<img src="img/works/thumbs/11.jpg" alt="img01"/>
            </li>
            <li>
								<img src="img/works/thumbs/12.jpg" alt="img01"/>
            </li>
          </ul>

        </div>
      </div>
    </div>
  </section>

  <!-- Parallax 2 -->
 

  <!-- Team -->
  <section id="team" class="home-section bg-white">
    <div class="container">
      <div class="row">
        <div class="col-md-offset-2 col-md-8">
          <div class="section-heading">
            <h2>Project Team</h2>
            <div class="heading-line"></div>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-xs-12 col-sm-4 col-md-3 col-lg-4">
          <div class="box-team wow bounceInUp" data-wow-delay="0.1s">
            <img src="img/team/2.jpg" alt="" class="img-circle img-responsive" />
            <h4>Dr. Hemant khambete</h4>
            <p>Project Advocate</p>
          </div>
        </div>
        <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4" data-wow-delay="0.3s">
          <div class="box-team wow bounceInUp">
            <img src="img/team/1.jpg" alt="" class="img-circle img-responsive" />
            <h4>Navdeep gupta</h4>
            <p>Developer</p>
          </div>
        </div>
        <div class="col-xs-12 col-sm-4 col-md-3 col-lg-4" data-wow-delay="0.5s">
          <div class="box-team wow bounceInUp">
            <img src="img/team/3.jpg" alt="" class="img-circle img-responsive" />
            <h4>Dr. Sanjay jain</h4>
            <p>Dean (Pharmacy)</p>
          </div>
        </div>

      </div>
    </div>
  </section>
  
            </div>
            <div class="form-group">
              <div class="col-md-offset-2 col-md-8">
                <button type="submit" class="btn btn-theme btn-lg btn-block">Send message</button>
              </div>
            </div>
          </form>

        </div>
      </div>

    </div>
  </section>

  <!-- Bottom widget -->
  <section id="bottom-widget" class="home-section bg-white">
    <div class="container">
      <div class="row">
        <div class="col-md-4">
          <div class="contact-widget wow bounceInLeft">
            <i class="fa fa-map-marker fa-4x"></i>
            <h5>Main Office</h5>
            <p>
              Medi-Caps University,A.B. Road,Rau,<br />Indore (M.P)
            </p>
          </div>
        </div>
        <div class="col-md-4">
          <div class="contact-widget wow bounceInUp">
            <i class="fa fa-phone fa-4x"></i>
            <h5>Call</h5>
            <p>
              +91 9893670420<br> +91 9893356026

            </p>
          </div>
        </div>
        <div class="col-md-4">
          <div class="contact-widget wow bounceInRight">
            <i class="fa fa-envelope fa-4x"></i>
            <h5>Email us</h5>
            <p>
              info@medicaps.ac.in
            </p>
          </div>
        </div>
      </div>
      <div class="row mar-top30">
        <div class="col-md-12">
          <h5>We're on social networks</h5>
          <ul class="social-network">
            <li><a href="#">
						<span class="fa-stack fa-2x">
							<i class="fa fa-circle fa-stack-2x"></i>
							<i class="fa fa-facebook fa-stack-1x fa-inverse"></i>
						</span></a>
            </li>
            <li><a href="#">
						<span class="fa-stack fa-2x">
							<i class="fa fa-circle fa-stack-2x"></i>
							<i class="fa fa-dribbble fa-stack-1x fa-inverse"></i>
						</span></a>
            </li>
            <li><a href="#">
						<span class="fa-stack fa-2x">
							<i class="fa fa-circle fa-stack-2x"></i>
							<i class="fa fa-twitter fa-stack-1x fa-inverse"></i>
						</span></a>
            </li>
            <li><a href="#">
						<span class="fa-stack fa-2x">
							<i class="fa fa-circle fa-stack-2x"></i>
							<i class="fa fa-pinterest fa-stack-1x fa-inverse"></i>
						</span></a>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </section>

  <!-- Footer -->
  <footer>
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <p>Copyright &copy; Pharmacy Department. All rights reserved.</p>
          <div class="credits">
           
            Designed by <a href="https://fmt.com/">Navdeep gupta</a>
          </div>
        </div>
      </div>
    </div>
  </footer>

  <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>

  <!-- js -->
  <script src="js/jquery.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/wow.min.js"></script>
  <script src="js/mb.bgndGallery.js"></script>
  <script src="js/mb.bgndGallery.effects.js"></script>
  <script src="js/jquery.simple-text-rotator.min.js"></script>
  <script src="js/jquery.scrollTo.min.js"></script>
  <script src="js/jquery.nav.js"></script>
  <script src="js/modernizr.custom.js"></script>
  <script src="js/grid.js"></script>
  <script src="js/stellar.js"></script>
  <!-- Contact Form JavaScript File -->
  <script src="contactform/contactform.js"></script>

  <!-- Template Custom Javascript File -->
  <script src="js/custom.js"></script>

</body>
</html>
