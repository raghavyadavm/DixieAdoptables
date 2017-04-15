<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<% 
%>
<html>
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, shrink-to-fit=no, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="raghavyadavm(raghavyadav258@gmail.com)">

<title>Dixie Adoptables</title>
<link rel="icon" type="image/png" href="images/favicon-32x32.png"
	sizes="32x32" />
<link rel="icon" type="image/png" href="images/favicon-16x16.png"
	sizes="16x16" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style>
    body{height:100%;
        width:100%;
        background-image:url(images/25.jpg);/*your background image*/
        background-repeat:no-repeat;/*we want to have one single image not a repeated one*/
        background-size:cover;/*this sets the image to fullscreen covering the whole screen*/
        /*css hack for ie*/
        filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(src='.image.jpg',sizingMethod='scale');
        -ms-filter:"progid:DXImageTransform.Microsoft.AlphaImageLoader(src='image.jpg',sizingMethod='scale')";
    }

    </style>

<link rel="stylesheet" type="text/css"
	href="bootstrap/css/normalize.css" />
<link rel="stylesheet" type="text/css"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
<link rel="stylesheet" type="text/css" href="bootstrap/css/demo.css" />
<link rel="stylesheet" type="text/css"
	href="bootstrap/css/component.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js">
<script src="https://cdn.jsdelivr.net/jquery.validation/1.15.0/jquery.validate.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/jquery.validation/1.15.0/additional-methods.min.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
 <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
 <link rel="stylesheet" type="text/css" href="css/jquery.datetimepicker.css"/>
<script >
$( function() {
    $( "#arrivaldatetime" ).datepicker();
  } );
</script>
<!-- Bootstrap Core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="css/simple-sidebar.css" rel="stylesheet">


</head>

<body background="images/25.jpg">

	<div id="wrapper">

		<!-- Page Content -->
		<div id="page-content-wrapper">
			<div class="container-fluid">
				<div class="container">
					
					<form class="form-horizontal" id="contact-form" role="form"
						action="<%=application.getContextPath() %>/SignInServer"
						method="post">
						<div style="padding-left:450px;">
                        <img src="images/DixieAdoptablesLargeLogoWithName.png" alt="Logo" height="250" width="300">
                            </div>
						<h2 align="center">Sign</h2>
						<div class="form-group">
							<label for="visitorname" class="col-sm-3 control-label">Visitor Name</label>
							<div class="col-sm-7">
								<input type="text" id="visitorname" name="visitorname"
									placeholder="visitorname" class="form-control" autofocus required>

							</div>
						</div>
						<div class="form-group">
							<label for="arrivaldatetime" class="col-sm-3 control-label">Arrival Date time</label>
							<div class="col-sm-7">
								<input type="datetime-local" id="datetimepicker" name="arrivaldatetime"
									placeholder="Arrival Date time" class="form-control" autofocus readonly required>

							</div>
						</div>

						
						<div class="form-group">
							<label for="stateid" class="col-sm-3 control-label">State ID</label>
							<div class="col-sm-7">
								<input type="number" id="stateid" name="stateid"
									placeholder="stateid" class="form-control" required>
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-7 col-sm-offset-3">
								<button type="submit" class="btn btn-primary btn-block">SignIn</button>
							</div>
						</div>
					</form>
					<!-- /form -->
				</div>
				<!-- ./container -->
			</div>
		</div>
		<!-- /#page-content-wrapper -->

	</div>
	<!-- /#wrapper -->

	<!-- jQuery -->
	<script src="js/jquery.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="js/bootstrap.min.js"></script>

	<!-- Menu Toggle Script -->
	<script>
    $("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#wrapper").toggleClass("toggled");
    });
    </script>

</body>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="js/jquery.datetimepicker.full.js"></script>
<script>/*
window.onerror = function(errorMsg) {
	$('#console').html($('#console').html()+'<br>'+errorMsg)
}*/

$.datetimepicker.setLocale('en');

$('#datetimepicker_format').datetimepicker({value:'2015/04/15 05:03', format: $("#datetimepicker_format_value").val()});
console.log($('#datetimepicker_format').datetimepicker('getValue'));

$("#datetimepicker_format_change").on("click", function(e){
	$("#datetimepicker_format").data('xdsoft_datetimepicker').setOptions({format: $("#datetimepicker_format_value").val()});
});
$("#datetimepicker_format_locale").on("change", function(e){
	$.datetimepicker.setLocale($(e.currentTarget).val());
});


$('#datetimepicker').datetimepicker({value:'2017/04/07 05:50',step:10});

$('.some_class').datetimepicker();

$('#default_datetimepicker').datetimepicker({
	formatTime:'H:i',
	formatDate:'d.m.Y',
	//defaultDate:'8.12.1986', // it's my birthday
	defaultDate:'+03.01.1970', // it's my birthday
	defaultTime:'10:00',
	timepickerScrollbar:false
});


</script>

</html>
<% 
%>