<%@page session="true"%>
<%
if(session.getAttribute("user")==null||!session.getAttribute("user").equals("navdeep"))
{
	session.setAttribute("user",null);
response.sendRedirect("index.jsp");
}
%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Pharmacy Dashboard</title>

    <!-- Bootstrap Core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="vendor/metisMenu/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

    <div id="wrapper">

        <!-- Navigation -->
        <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="success.jsp">Pharmacy Dashboard</a>
            </div>
            <!-- /.navbar-header -->

            <ul class="nav navbar-top-links navbar-right">
                
                    
                   
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                        <li><a href="#"><i class="fa fa-user fa-fw"></i> ADMIN</a>
                        </li>
                        <li><a href="#"><i class="fa fa-gear fa-fw"></i> Reset Password</a>
                        </li>
                        <li class="divider"></li>
                        <li><a href="logout.jsp"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                        </li>
                    </ul>
                    <!-- /.dropdown-user -->
                </li>
                <!-- /.dropdown -->
            </ul>
            <!-- /.navbar-top-links -->

            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                        <!--<li class="sidebar-search">
                            <div class="input-group custom-search-form">
                                <input type="text" class="form-control" placeholder="Search...">
                                <span class="input-group-btn">
                                <button class="btn btn-default" type="button">
                                    <i class="fa fa-search"></i>
                                </button>
                            </span>
                            </div>-->
                            <!-- /input-group -->
                        
                        <li>
                            <a href="success.jsp"><i class="fa fa-dashboard fa-fw"></i> Dashboard</a>
                        </li>  
                     
                       <!--  <li>
                            <a href="#"><i class="fa fa-bar-chart-o fa-fw"></i> Charts<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="flot.html">Flot Charts</a>
                                </li>
                                <li>
                                    <a href="morris.html">Morris.js Charts</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                      <!-- </li> -->
                        
                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav>
                      <!-- ..//JQuery Source\\.. -->


                     <!-- ..//JQuery Source\\.. -->



        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Dashboard</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>

            <!-- /.row -->
            <div class="row">
                <div class="col-lg-3 col-md-6">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-tasks fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge">Add new chemical</div>
                                    <div></div>
                                </div>
                            </div>
                        </div>
                        <a href="a href="#intro" data-toggle="modal" data-target="#ch_add_form">
                            <div class="panel-footer">
                                <span class="pull-left">Add</span>
                                <span class="pull-right"><i class="fa fa-plus-square"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
                
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<!-- ..//JavaScript Code for this page\\.. -->
<script type="text/javascript">
$(document).ready(function(){
$("#ch_add_form").submit(function(){
 
//remove previous class and add new "myinfo" class
$("#msgbox").removeClass().addClass('myinfo').text('sending data ').fadeIn(1000);
 
this.timer = setTimeout(function () {
	$.ajax({
      	url: 'addchemical.jsp',
      	data: 'ch_id='+ $('#ch_id').val() +'&ch_name=' + $('#ch_name').val() +'&ch_quantity=' + $('#ch_quantity').val() +'&ch_threshold=' + $('#ch_threshold').val(),
      	type: 'post',
			success: function(msg){
			if(msg!= 1) // Message Sent, check and redirect
			{				// and direct to the success page
				$("#msgbox").html('Data Added verified.. ').addClass('myinfo').fadeTo(900,1,
		                  function()
		                  {
							 //add message and change the class of the box and start fading
			                  $(this).html('Voila! ,Data Added Successfully!!').removeClass().addClass('myerror').fadeTo(900,1);
		                  });
				document.myform.reset().fadeTo(900,1);
				}
			
			else
			{
				$("#msgbox").fadeTo(200,0.1,function() //start fading the messagebox
		            	{
		                  //add message and change the class of the box and start fading
		                  $(this).html('Sorry, not correct data entered. or not registered').removeClass().addClass('myerror').fadeTo(900,1);
		                 // $("#party_name").val($("#name").val());
		                 // $("#myModal").modal("hide").fadeTo(900,1);
		                 // $("#myModal2").modal("show");
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
  <div class="modal fade" id="ch_add_form" role="dialog">
    <div class="modal-dialog">
    
<!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header" style="padding:35px 50px;">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4><span class="fa fa-lock"></span> Chemical Entry</h4>
        </div>
        <div class="modal-body" style="padding:40px 50px;">
          <form name="ch_add_form" id="ch_add_myform" role="form" method="post" action="">
            <div class="form-group">
              <label for="usrname"><span class="fa fa-user"></span> Chemical Id</label>
              <input type="text" class="form-control" name="ch_id" id="ch_id" placeholder="chemical id">
            </div>
            <div class="form-group">
              <label for="psw"><span class="fa fa-eye"></span> Chemical Name</label>
              <input type="text" class="form-control" name="ch_name" id="ch_name" placeholder="chemical name" >
            </div>
            <div class="form-group">
              <label for="psw"><span class="fa fa-eye"></span> Chemical Quantity</label>
              <input type="text" class="form-control" name="ch_quantity" id="ch_quantity" placeholder="Chemical Quantity" >
            </div>
            <div class="form-group">
              <label for="psw"><span class="fa fa-eye"></span> Threshold Value</label>
              <input type="text" class="form-control" name="ch_threshold" id="ch_threshold" placeholder="Threshold Amount" >
            </div>
           <!--   <div class="checkbox">
              <label><input type="checkbox" value="" unchecked>Remember me</label>
            </div> -->
              <button type="submit" class="btn btn-success btn-block" name="entry" id="entry"><span class="fa fa-power-off"></span> Add Entry</button>
          </form>
        </div>
        <div class="modal-footer">
        <div id="result"></div>
          <button type="submit" class="btn btn-danger btn-default pull-left" data-dismiss="modal"><span class="fa fa-times"></span> Cancel</button>
          <!--<p>Not a member? <a href="#myModal1" data-dismiss="modal" data-toggle="modal" data-target="#myModal1">Sign Up</a></p>
          <p>Forgot <a href="#">Password?</a></p>-->
          <div>
          <h5 style="color:red;" id="msgbox"></h5>
          </div>
        </div>
      </div>
      
    </div>
  </div> 
  
   <!-- Modal -->
   
                
                <div class="col-lg-3 col-md-6">
                    <div class="panel panel-green">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-tasks fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge">Show chemical</div>
                                    <div></div>
                                </div>
                            </div>
                        </div>
                        <a href="showchemical.jsp">
                            <div class="panel-footer">
                                <span class="pull-left">Show</span>
                                <span class="pull-right"><i class="fa fa-plus-square"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
                
                                      <!-- ..//JQuery Source\\.. -->

                   <!-- Modal -->
  <div class="modal fade" id="ch_assign_form" role="dialog">
    <div class="modal-dialog">
    
<!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header" style="padding:35px 50px;">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4><span class="fa fa-lock"></span> Assign Chemical</h4>
        </div>
        <div class="modal-body" style="padding:40px 50px;">
          <form name="ch_add_form" id="ch_add_myform" role="form" method="post" action="">
            <div class="form-group">
              <label for="usrname"><span class="fa fa-user"></span> Lab Name</label>
              <input type="text" class="form-control" name="as_lb_nm" id="as_lb_nm" placeholder="Lab Name">
            </div>
            <div class="form-group">
              <label for="usrname"><span class="fa fa-user"></span> Chemical Id</label>
              <input type="text" class="form-control" name="as_ch_id" id="as_ch_id" placeholder="chemical id">
            </div>
            <div class="form-group">
              <label for="psw"><span class="fa fa-eye"></span> Chemical Quantity</label>
              <input type="text" class="form-control" name="as_ch_quantity" id="as_ch_quantity" placeholder="Chemical Quantity" >
            </div>
           <!--   <div class="checkbox">
              <label><input type="checkbox" value="" unchecked>Remember me</label>
            </div> -->
              <button type="submit" class="btn btn-success btn-block" name="entry" id="entry"><span class="fa fa-power-off"></span> Add Entry</button>
          </form>
        </div>
        <div class="modal-footer">
        <div id="result"></div>
          <button type="submit" class="btn btn-danger btn-default pull-left" data-dismiss="modal"><span class="fa fa-times"></span> Cancel</button>
          <!--<p>Not a member? <a href="#myModal1" data-dismiss="modal" data-toggle="modal" data-target="#myModal1">Sign Up</a></p>
          <p>Forgot <a href="#">Password?</a></p>-->
          <div>
          <h5 style="color:red;" id="as_msgbox"></h5>
          </div>
        </div>
      </div>
      
    </div>
  </div> 
  
   <!-- Modal -->

<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<!-- ..//JavaScript Code for this page\\.. -->
<script type="text/javascript">
$(document).ready(function(){
$("#ch_assign_form").submit(function(){
 
//remove previous class and add new "myinfo" class
$("#as_msgbox").removeClass().addClass('myinfo').text('sending data ').fadeIn(1000);
 
this.timer = setTimeout(function () {
	$.ajax({
      	url: 'AssignChemical.jsp',
      	data: 'as_lb_nm='+ $('#as_lb_nm').val() +'&as_ch_id=' + $('#as_ch_id').val() +'&as_ch_quantity=' + $('#as_ch_quantity').val(),
      	type: 'post',
			success: function(msg){
			if(msg!= 1) // Message Sent, check and redirect
			{				// and direct to the success page
				$("#as_msgbox").html('Data Added verified.. ').addClass('myinfo').fadeTo(900,1,
		                  function()
		                  {
							 //add message and change the class of the box and start fading
			                  $(this).html('Voila! ,Data Added Successfully!!').removeClass().addClass('myerror').fadeTo(900,1);
		                  });
				document.myform.reset().fadeTo(900,1);
				}
			
			else
			{
				$("#as_msgbox").fadeTo(200,0.1,function() //start fading the messagebox
		            	{
		                  //add message and change the class of the box and start fading
		                  $(this).html('Sorry, not correct data entered.').removeClass().addClass('myerror').fadeTo(900,1);
		                 // $("#party_name").val($("#name").val());
		                 // $("#myModal").modal("hide").fadeTo(900,1);
		                 // $("#myModal2").modal("show");
		                });
			}
		}
	});
}, 200);
return false;
});		

});
</script>       
                <div class="col-lg-3 col-md-6">
                    <div class="panel panel-yellow">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-tasks fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge">Assign chemical to lab</div>
                                    <div></div>
                                </div>
                            </div>
                        </div>
                        <a href="a href="#intro" data-toggle="modal" data-target="#ch_assign_form">
                            <div class="panel-footer">
                                <span class="pull-left">Assign</span>
                                <span class="pull-right"><i class="fa fa-plus-square"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
                
               
  
  <!-- bill modal end -->
  
  <script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<!-- ..//JavaScript Code for this page\\.. -->
<script type="text/javascript">
$(document).ready(function(){
$("#ut_add_form").submit(function(){
 
//remove previous class and add new "myinfo" class
$("#ut_msgbox").removeClass().addClass('myinfo').text('sending data ').fadeIn(1000);
 
this.timer = setTimeout(function () {
	$.ajax({
      	url: 'addUtensil.jsp',
      	data: 'ut_id='+ $('#ut_id').val() +'&ut_name=' + $('#ut_name').val() +'&ut_quantity=' + $('#ut_quantity').val() +'&ut_threshold=' + $('#ut_threshold').val(),
      	type: 'post',
			success: function(msg){
			if(msg!= 1) // Message Sent, check and redirect
			{				// and direct to the success page
				$("#ut_msgbox").html('Data Added verified.. ').addClass('myinfo').fadeTo(900,1,
		                  function()
		                  {
							 //add message and change the class of the box and start fading
			                  $(this).html('Voila! ,Data Added Successfully!!').removeClass().addClass('myerror').fadeTo(900,1);
		                  });
				document.myform.reset().fadeTo(900,1);
				}
			
			else
			{
				$("#ut_msgbox").fadeTo(200,0.1,function() //start fading the messagebox
		            	{
		                  //add message and change the class of the box and start fading
		                  $(this).html('Sorry, not correct data entered. or not registered').removeClass().addClass('myerror').fadeTo(900,1);
		                 // $("#party_name").val($("#name").val());
		                 // $("#myModal").modal("hide").fadeTo(900,1);
		                 // $("#myModal2").modal("show");
		                });
				

				
			}
		}
	
	});
}, 200);
return false;
});		

});
</script>
                
                <div class="col-lg-3 col-md-6">
                    <div class="panel panel-red">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-tasks fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge">Add new utensils</div>
                                    <div></div>
                                </div>
                            </div>
                        </div>
                        <a href="a href="#intro" data-toggle="modal" data-target="#ut_add_form">
                            <div class="panel-footer">
                                <span class="pull-left">Add</span>
                                <span class="pull-right"><i class="fa fa-plus-square"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
            <!-- /.row -->
                   <!-- Modal -->
  <div class="modal fade" id="ut_add_form" role="dialog">
    <div class="modal-dialog">
    
<!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header" style="padding:35px 50px;">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4><span class="fa fa-lock"></span> Utensils Entry</h4>
        </div>
        <div class="modal-body" style="padding:40px 50px;">
          <form name="ut_add_form" id="ch_add_myform" role="form" method="post" action="">
            <div class="form-group">
              <label for="usrname"><span class="fa fa-user"></span> Utensil Id</label>
              <input type="text" class="form-control" name="ut_id" id="ut_id" placeholder="Utensil id">
            </div>
            <div class="form-group">
              <label for="psw"><span class="fa fa-eye"></span> Utensil Name</label>
              <input type="text" class="form-control" name="ut_name" id="ut_name" placeholder="Utensil name" >
            </div>
            <div class="form-group">
              <label for="psw"><span class="fa fa-eye"></span> Utensil Quantity</label>
              <input type="text" class="form-control" name="ut_quantity" id="ut_quantity" placeholder="Utensil Quantity" >
            </div>
            <div class="form-group">
              <label for="psw"><span class="fa fa-eye"></span> Threshold Value</label>
              <input type="text" class="form-control" name="ut_threshold" id="ut_threshold" placeholder="Threshold Amount" >
            </div>
           <!--   <div class="checkbox">
              <label><input type="checkbox" value="" unchecked>Remember me</label>
            </div> -->
              <button type="submit" class="btn btn-success btn-block" name="entry" id="entry"><span class="fa fa-power-off"></span> Add Entry</button>
          </form>
        </div>
        <div class="modal-footer">
        <div id="result"></div>
          <button type="submit" class="btn btn-danger btn-default pull-left" data-dismiss="modal"><span class="fa fa-times"></span> Cancel</button>
          <!--<p>Not a member? <a href="#myModal1" data-dismiss="modal" data-toggle="modal" data-target="#myModal1">Sign Up</a></p>
          <p>Forgot <a href="#">Password?</a></p>-->
          <div>
          <h5 style="color:red;" id="ut_msgbox"></h5>
          </div>
        </div>
      </div>
      
    </div>
  </div> 

            <div class="row">
                <div class="col-lg-3 col-md-6">
                    <div class="panel panel-yellow">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-tasks fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge">Show Utensils</div>
                                    <div></div>
                                </div>
                            </div>
                        </div>
                        <a href="showUtensil.jsp">
                            <div class="panel-footer">
                                <span class="pull-left">Show</span>
                                <span class="pull-right"><i class="fa fa-plus-square"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
                                  <!-- Modal -->
  <div class="modal fade" id="ut_assign_form1" role="dialog">
    <div class="modal-dialog">
    
<!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header" style="padding:35px 50px;">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4><span class="fa fa-lock"></span> Assign Utensil</h4>
        </div>
        <div class="modal-body" style="padding:40px 50px;">
          <form name="ut_add_form1" id="ut_add_form1" role="form" method="post" action="">
            <div class="form-group">
              <label for="usrname"><span class="fa fa-user"></span> Lab Name</label>
              <input type="text" class="form-control" name="as_lb_nm1" id="as_lb_nm1" placeholder="Lab Name">
            </div>
            <div class="form-group">
              <label for="usrname"><span class="fa fa-user"></span> Utensil Id</label>
              <input type="text" class="form-control" name="as_ut_id" id="as_ut_id" placeholder="utensil id">
            </div>
            <div class="form-group">
              <label for="psw"><span class="fa fa-eye"></span> Utensil Quantity</label>
              <input type="text" class="form-control" name="as_ut_quantity" id="as_ut_quantity" placeholder="Utensil Quantity" >
            </div>
           <!--   <div class="checkbox">
              <label><input type="checkbox" value="" unchecked>Remember me</label>
            </div> -->
              <button type="submit" class="btn btn-success btn-block" name="entry" id="entry"><span class="fa fa-power-off"></span> Add Entry</button>
          </form>
        </div>
        <div class="modal-footer">
        <div id="result"></div>
          <button type="submit" class="btn btn-danger btn-default pull-left" data-dismiss="modal"><span class="fa fa-times"></span> Cancel</button>
          <!--<p>Not a member? <a href="#myModal1" data-dismiss="modal" data-toggle="modal" data-target="#myModal1">Sign Up</a></p>
          <p>Forgot <a href="#">Password?</a></p>-->
          <div>
          <h5 style="color:red;" id="ut_as_msgbox"></h5>
          </div>
        </div>
      </div>
      
    </div>
  </div> 
  
   <!-- Modal -->

<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<!-- ..//JavaScript Code for this page\\.. -->
<script type="text/javascript">
$(document).ready(function(){
$("#ut_add_form1").submit(function(){
 
//remove previous class and add new "myinfo" class
$("#ut_as_msgbox").removeClass().addClass('myinfo').text('sending data ').fadeIn(1000);
 
this.timer = setTimeout(function () {
	$.ajax({
      	url: 'AssignUtensil.jsp',
      	data: 'as_lb_nm1='+ $('#as_lb_nm1').val() +'&as_ut_id=' + $('#as_ut_id').val() +'&as_ut_quantity=' + $('#as_ut_quantity').val(),
      	type: 'post',
			success: function(msg){
			if(msg!= 1) // Message Sent, check and redirect
			{				// and direct to the success page
				$("#ut_as_msgbox").html('Data Added verified.. ').addClass('myinfo').fadeTo(900,1,
		                  function()
		                  {
							 //add message and change the class of the box and start fading
			                  $(this).html('Voila! ,Data Added Successfully!!').removeClass().addClass('myerror').fadeTo(900,1);
		                  });
				document.myform.reset().fadeTo(900,1);
				}
			
			else
			{
				$("#ut_as_msgbox").fadeTo(200,0.1,function() //start fading the messagebox
		            	{
		                  //add message and change the class of the box and start fading
		                  $(this).html('Sorry, not correct data entered.').removeClass().addClass('myerror').fadeTo(900,1);
		                 // $("#party_name").val($("#name").val());
		                 // $("#myModal").modal("hide").fadeTo(900,1);
		                 // $("#myModal2").modal("show");
		                });
			}
		}
	});
}, 200);
return false;
});		

});
</script>       
                <div class="col-lg-3 col-md-6">
                    <div class="panel panel-red">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-tasks fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge">Assign utensil to lab</div>
                                    <div></div>
                                </div>
                            </div>
                        </div>
                        <a href="a href="#intro" data-toggle="modal" data-target="#ut_assign_form1">
                            <div class="panel-footer">
                                <span class="pull-left">Assign</span>
                                <span class="pull-right"><i class="fa fa-plus-square"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-tasks fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge">Low quantity chemical</div>
                                    <div></div>
                                </div>
                            </div>
                        </div>
                        <a href="lowChemicals.jsp">
                            <div class="panel-footer">
                                <span class="pull-left">Show</span>
                                <span class="pull-right"><i class="fa fa-plus-square"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="panel panel-green">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-tasks fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge">Low quantity utensils</div>
                                    <div></div>
                                </div>
                            </div>
                        </div>
                        <a href="lowUtensils.jsp">
                            <div class="panel-footer">
                                <span class="pull-left">Show</span>
                                <span class="pull-right"><i class="fa fa-plus-square"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
              <div class="modal fade" id="add_lab" role="dialog">
    <div class="modal-dialog">
    
<!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header" style="padding:35px 50px;">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4><span class="fa fa-lock"></span> Add Lab</h4>
        </div>
        <div class="modal-body" style="padding:40px 50px;">
          <form name="lab_add" id="lab_add" role="form" method="post" action="">
            <div class="form-group">
              <label for="usrname"><span class="fa fa-user"></span> Lab Name</label>
              <input type="text" class="form-control" name="lb_nm" id="lb_nm" placeholder="Lab Name">
            </div>
            <div class="form-group">
              <label for="usrname"><span class="fa fa-user"></span> Password</label>
              <input type="text" class="form-control" name="pass" id="pass" placeholder="password">
            </div>
              <button type="submit" class="btn btn-success btn-block" name="entry" id="entry"><span class="fa fa-power-off"></span> Add Lab</button>
          </form>
        </div>
        <div class="modal-footer">
        <div id="result"></div>
          <button type="submit" class="btn btn-danger btn-default pull-left" data-dismiss="modal"><span class="fa fa-times"></span> Cancel</button>
          <!--<p>Not a member? <a href="#myModal1" data-dismiss="modal" data-toggle="modal" data-target="#myModal1">Sign Up</a></p>
          <p>Forgot <a href="#">Password?</a></p>-->
          <div>
          <h5 style="color:red;" id="new_msgbox_new"></h5>
          </div>
        </div>
      </div>
      
    </div>
  </div>
            <div class="row">
            	<div class="col-lg-3 col-md-6">
                    <div class="panel panel-green">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-tasks fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge">Add Lab</div>
                                    <div></div>
                                </div>
                            </div>
                        </div>
                        <a href="a href="#intro" data-toggle="modal" data-target="#add_lab">
                            <div class="panel-footer">
                                <span class="pull-left">Add</span>
                                <span class="pull-right"><i class="fa fa-plus-square"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="panel panel-yellow">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-tasks fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge">Show Labs</div>
                                    <div></div>
                                </div>
                            </div>
                        </div>
                        <a href="ShowLabs.jsp">
                            <div class="panel-footer">
                                <span class="pull-left">Show</span>
                                <span class="pull-right"><i class="fa fa-plus-square"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
 <script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<!-- ..//JavaScript Code for this page\\.. -->
<script type="text/javascript">
$(document).ready(function(){
$("#lab_add").submit(function(){
 
//remove previous class and add new "myinfo" class
$("#new_msgbox_new").removeClass().addClass('myinfo').text('sending data ').fadeIn(1000);
 
this.timer = setTimeout(function () {
	$.ajax({
      	url: 'AddLab.jsp',
      	data: 'lb_nm='+ $('#lb_nm').val()+'&pass=' + $('#pass').val(),
      	type: 'post',
			success: function(msg){
			if(msg!= 1) // Message Sent, check and redirect
			{				// and direct to the success page
				$("#new_msgbox_new").html('Data Added verified.. ').addClass('myinfo').fadeTo(900,1,
		                  function()
		                  {
							 //add message and change the class of the box and start fading
			                  $(this).html('Voila! ,Data Added Successfully!!').removeClass().addClass('myerror').fadeTo(900,1);
		                  });
				document.myform.reset().fadeTo(900,1);
				}
			
			else
			{
				$("#new_msgbox_new").fadeTo(200,0.1,function() //start fading the messagebox
		            	{
		                  //add message and change the class of the box and start fading
		                  $(this).html('Sorry, not correct data entered.').removeClass().addClass('myerror').fadeTo(900,1);
		                 // $("#party_name").val($("#name").val());
		                 // $("#myModal").modal("hide").fadeTo(900,1);
		                 // $("#myModal2").modal("show");
		                });
			}
		}
	});
}, 200);
return false;
});		

});
</script>        
        
        
        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="vendor/metisMenu/metisMenu.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="dist/js/sb-admin-2.js"></script>

</body>

</html>
