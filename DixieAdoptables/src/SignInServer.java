
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Timestamp;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class SignInServer
 */
@WebServlet("/SignInServer")
public class SignInServer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignInServer() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// TODO Auto-generated method stub
		   //HttpSession session=request.getSession();  
		  // String username=(String) session.getAttribute("uname");
	       String visitorname=request.getParameter("visitorname");
	       String arrivaldatetime=request.getParameter("arrivaldatetime");
	       String departuredatetime=request.getParameter("departuredatetime");
	       int stateid=Integer.parseInt(request.getParameter("stateid"));
	      
	       
	       
	       
	       System.out.println(visitorname+"visitorname");
	       System.out.println(stateid+" stateid");
	      
	       try{
	    	   
	    	     Connection con=MySQLCon.main(null);
	    	    
	    	  
	    	     String sql="insert into visitorstb1 (visitorname,arrivaldatetime,departuredatetime,stateid) values(?,?,?,?);";
	     	     PreparedStatement p=con.prepareStatement(sql);
	    	     
	    	     p.setString(1, visitorname);
	    	     p.setString(2, arrivaldatetime);
	    	     Timestamp timestamp = new Timestamp(System.currentTimeMillis());
	    	     p.setTimestamp(3, timestamp);
	    	     //p.setString(3, departuredatetime);
	    	     p.setInt(4, stateid);      
	    	   
	    	     HttpSession session=request.getSession();  
 		         session.setAttribute("id",stateid); 
	    	     
	    	     p.executeUpdate();
		 		 System.out.println("Record is inserted into  table!");
		 		 response.sendRedirect("displayinfo.jsp");
		    	   
	    	    
	    	   
	       }
	       catch(NullPointerException n)
	       {
	    	   n.printStackTrace();
	    	  
	       }
	       catch (Exception e) {
	    	  
			// TODO: handle exception
	    	   e.printStackTrace();
		}
	}

}
