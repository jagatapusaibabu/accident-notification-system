package AAS;
import java.sql.*;

import java.sql.DriverManager;
import java.sql.SQLException;

public class database {
	public static  Connection Database()
	throws SQLException,ClassNotFoundException
	{	
		String DbDriver="com.mysql.cj.jdbc.Driver";
		String url="jdbc:mysql://localhost:3306/";
		String name="vehicleinfo";
		String uname="root";
		String password="";
		Class.forName(DbDriver);
		Connection con=DriverManager.getConnection(url+name,uname,password);
		return con;
	}
}