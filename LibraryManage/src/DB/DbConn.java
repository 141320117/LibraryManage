package DB;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


public class DbConn {
	private static Connection conn=null;
	public static Connection getConn()
	{
		try {
			String url = "jdbc:mysql://localhost:3306/LibraryManage";
 			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(url, "root", "123456");
			return conn;
			
		} catch (Exception e) {
			System.err.println("error:" + e.getMessage());
			return null;
		}
	}
	public static void closeConn(){
		try {
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public static boolean LoginCheck(String username,String password){
		String sql="select * from manager where username='"+username+"' and password='"+password+"'";
		DbConn dc=new DbConn();
		Connection conn=dc.getConn();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs=stmt.executeQuery(sql);
			if(rs.next()){
				return true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			dc.closeConn();
		}
		return false;
	}
}
