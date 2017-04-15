<%@page import="java.sql.*"%>
<%@page import="java.io.Console"%>
<%@ page language="java" import="Login.MySQLCon"
	contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
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

<!-- Bootstrap Core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="css/simple-sidebar.css" rel="stylesheet">


</head>

<body>

	<div id="wrapper">
	
		<div id="page-content-wrapper">
			<div class="container-fluid">
				<div class="container">
					
				<h2 align="center">Info</h2>	
				 <table class="table table-bordered">
		    		<thead>
				      <tr>
				        <th>Visitor Name</th>
				        <th>Arrival Date Time</th>
				        <th>Departure Date Time</th>
						<th>State ID</th>			        
				      </tr>
			    	</thead>
			      <tbody>
				      <tr>
				 													

		<%
	        try{
		    	   
	   	     Connection con=MySQLCon.main(null);
	   	     
	   	     int id=(Integer) session.getAttribute("id");
	   	  	 System.out.println(id+" id");
	   		 String sql="SELECT visitorname,arrivaldatetime,departuredatetime,stateid FROM visitorstb1 where stateid ='"+id+"';";
		     PreparedStatement p=con.prepareStatement(sql);
	   	    
		     ResultSet r=p.executeQuery();
	 	    
			     while(r.next()){
			    	 out.println("<td>"+r.getString(1)+"</td>");
			    	 out.println("<td>"+r.getString(2)+"</td>");
		 	    	 out.println("<td>"+r.getString(3)+"</td>");
		 	    	 out.println("<td>"+r.getInt(4)+"</td> </tr>");
			     } 
	        } catch(NullPointerException n) {
		   	   n.printStackTrace();
		   	  
		      } catch (Exception e) {
		   	  
				// TODO: handle exception
		   	   e.printStackTrace();
			}
	     
        %>
  
			    </tbody>
		  </table>	
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

</html>
<% 
%>