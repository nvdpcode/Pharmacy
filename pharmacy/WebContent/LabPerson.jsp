<%@page session="true"%>
<%
if(session.getAttribute("user")==null)
{
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

    <title>Lab Dashboard</title>

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
                <a class="navbar-brand" href="success.jsp">Lab Dashboard</a>
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
                            <a href="LabPerson.jsp"><i class="fa fa-dashboard fa-fw"></i> Dashboard</a>
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
           
                
                
                                      <!-- ..//JQuery Source\\.. -->

                   <!-- Modal -->

 

            <div class="row">
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
                        <a href="ShowLabChemical.jsp">
                            <div class="panel-footer">
                                <span class="pull-left">Show</span>
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
                                    <div class="huge">Show Utensils</div>
                                    <div></div>
                                </div>
                            </div>
                        </div>
                        <a href="ShowLabUtensils.jsp">
                            <div class="panel-footer">
                                <span class="pull-left">Show</span>
                                <span class="pull-right"><i class="fa fa-plus-square"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
                                  <!-- Modal -->
  <div class="modal fade" id="chemical_assign" role="dialog">
    <div class="modal-dialog">
    
<!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header" style="padding:35px 50px;">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4><span class="fa fa-lock"></span> Chemical Usage</h4>
        </div>
        <div class="modal-body" style="padding:40px 50px;">
          <form name="ch_usage" id="ch_usage" role="form" method="post" action="">
            <div class="form-group">
              <label for="usrname"><span class="fa fa-user"></span> Chemical Id</label>
              <input type="text" class="form-control" name="ch_id" id="ch_id" placeholder="Chemical id">
            </div>
            <div class="form-group">
              <label for="psw"><span class="fa fa-eye"></span> Chemical Quantity</label>
              <input type="text" class="form-control" name="ch_qty" id="ch_qty" placeholder="Chemical Quantity" >
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
          <h5 style="color:red;" id="ch_us_box"></h5>
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
$("#ut_usage").submit(function(){
 
//remove previous class and add new "myinfo" class
$("#ut_box").removeClass().addClass('myinfo').text('sending data ').fadeIn(1000);
 
this.timer = setTimeout(function () {
	$.ajax({
      	url: 'Utensil_Usage.jsp',
      	data: 'ut_id='+ $('#ut_id').val() +'&ut_qty=' + $('#ut_qty').val(),
      	type: 'post',
			success: function(msg){
			if(msg!= 1) // Message Sent, check and redirect
			{				// and direct to the success page
				$("#ut_box").html('Data Added verified.. ').addClass('myinfo').fadeTo(900,1,
		                  function()
		                  {
							 //add message and change the class of the box and start fading
			                  $(this).html('Voila! ,Data Added Successfully!!').removeClass().addClass('myerror').fadeTo(900,1);
		                  });
				document.myform.reset().fadeTo(900,1);
				}
			
			else
			{
				$("#ut_box").fadeTo(200,0.1,function() //start fading the messagebox
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
                                    <div class="huge">Chemical Usage</div>
                                    <div></div>
                                </div>
                            </div>
                        </div>
                        <a href="a href="#intro" data-toggle="modal" data-target="#chemical_assign">
                            <div class="panel-footer">
                                <span class="pull-left">Add Usage</span>
                                <span class="pull-right"><i class="fa fa-plus-square"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
                
                <div class="modal fade" id="utensil_breakage" role="dialog">
    <div class="modal-dialog">
    
<!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header" style="padding:35px 50px;">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4><span class="fa fa-lock"></span> Utensil Breakage</h4>
        </div>
        <div class="modal-body" style="padding:40px 50px;">
          <form name="ut_usage" id="ut_usage" role="form" method="post" action="">
            <div class="form-group">
              <label for="usrname"><span class="fa fa-user"></span> Utensil Id</label>
              <input type="text" class="form-control" name="ut_id" id="ut_id" placeholder="Utensil id">
            </div>
            <div class="form-group">
              <label for="psw"><span class="fa fa-eye"></span> Utensil Quantity</label>
              <input type="text" class="form-control" name="ut_qty" id="ut_qty" placeholder="Utensil Quantity" >
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
          <h5 style="color:red;" id="ut_box"></h5>
          </div>
        </div>
      </div>
      
    </div>
  </div>
  
  <script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<!-- ..//JavaScript Code for this page\\.. -->
<script type="text/javascript">
$(document).ready(function(){
$("#ch_usage").submit(function(){
 
//remove previous class and add new "myinfo" class
$("#ch_us_box").removeClass().addClass('myinfo').text('sending data ').fadeIn(1000);
 
this.timer = setTimeout(function () {
	$.ajax({
      	url: 'Chemical_Usage.jsp',
      	data: 'ch_id='+ $('#ch_id').val() +'&ch_qty=' + $('#ch_qty').val(),
      	type: 'post',
			success: function(msg){
			if(msg!= 1) // Message Sent, check and redirect
			{				// and direct to the success page
				$("#ch_us_box").html('Data Added verified.. ').addClass('myinfo').fadeTo(900,1,
		                  function()
		                  {
							 //add message and change the class of the box and start fading
			                  $(this).html('Voila! ,Data Added Successfully!!').removeClass().addClass('myerror').fadeTo(900,1);
		                  });
				document.myform.reset().fadeTo(900,1);
				}
			
			else
			{
				$("#ch_us_box").fadeTo(200,0.1,function() //start fading the messagebox
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
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-tasks fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge">Utensils Breakage</div>
                                    <div></div>
                                </div>
                            </div>
                        </div>
                        <a href="a href="#intro" data-toggle="modal" data-target="#utensil_breakage">
                            <div class="panel-footer">
                                <span class="pull-left">Add Breakage</span>
                                <span class="pull-right"><i class="fa fa-plus-square"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
                
            </div>   
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
