import java.sql.*;
public class Test {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		try {

			// step1 load the driver class
			Class.forName("com.mysql.jdbc.Driver");

			// step2 create the connection object
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dixieadoptables", "root", "password");

			System.out.println("Connection is  established");
			

			// step5 close the connection object

		} catch (Exception e) {
			System.out.println(e);
		}

	}

}
