package DB;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.*;

import Model.*;



public class DbConn {
	private static Connection conn=null;
	//数据库驱动加载
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
	//登陆功能实现
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
	//图书查询
	public List<book> book_search(String book_name,String subject){
		List<book> list=new ArrayList();
		String sql="select * from book where book_name='"+book_name+"' and subject='"+subject+"'";
		DbConn dc=new DbConn();
		Connection conn=dc.getConn();
		try {
			Statement stmt=conn.createStatement();
			ResultSet rs=stmt.executeQuery(sql);
			while(rs.next()){
				book bk=new book();
				bk.setBook_id(rs.getLong("book_id"));
				bk.setBook_name(rs.getString("book_name"));
				bk.setSubject(rs.getString("subject"));
				bk.setWriter(rs.getString("writer"));
				bk.setAmount(rs.getInt("amount"));
				bk.setNum(rs.getInt("num"));
				bk.setPublish_unit(rs.getString("publish_unit"));
				bk.setPublish_place(rs.getString("publish_place"));
				bk.setPublish_date(rs.getString("publish_date"));
				list.add(bk);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		dc.closeConn();
		return list;
	}
	//图书借阅
	public static boolean book_borrow(String book_id,String reader_id){
		DbConn dc=new DbConn();
		Connection conn=dc.getConn();
		try{
			String sql="select * from book where book_id="+book_id;
			Statement stmt=conn.createStatement();
			ResultSet rs=stmt.executeQuery(sql);
			if(!rs.next()||rs.getInt("num")==0){
				return false;
			}
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
		try{
			String sql="update book set num=num-1 where book_id="+book_id;
			Statement stmt=conn.createStatement();
			int count=stmt.executeUpdate(sql);
			if(count<=0){
				return false;
			}
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
		try {
			Date date=new Date();
			String sql="insert into book_borrow values("+book_id+","+reader_id+","+date+","+"'借阅中')";
			Statement stmt=conn.createStatement();
			int count=stmt.executeUpdate(sql);
			if(count>0){
				return true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		dc.closeConn();
		return false;
	}
	//图书归还
	public static boolean book_reback(String book_id,String reader_id){
		DbConn dc=new DbConn();
		Connection conn=dc.getConn();
		try{
			String sql="select * from book_borrow where book_id="+book_id+" and reader_id="+reader_id;
			Statement stmt=conn.createStatement();
			ResultSet rs=stmt.executeQuery(sql);
			if(!rs.next()){
				return false;
			}
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
		try{
			String sql="update book set num=num+1 where book_id="+book_id;
			Statement stmt=conn.createStatement();
			int count=stmt.executeUpdate(sql);
			if(count<=0){
				return false;
			}
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
		try{
			String sql="delete from book_borrow where book_id="+book_id+" and reader_id="+reader_id;
			Statement stmt=conn.createStatement();
			int count=stmt.executeUpdate(sql);
			if(count>0){
				return true;
			}
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
		return false;
	}
	//图书添加
	public static boolean book_add(book bk){
		DbConn dc=new DbConn();
		Connection conn=dc.getConn();
		boolean flag=false;
		String book_id="";
		try{
			String sql="select * from book where book_name='"+bk.getBook_name()+"' and subject='"+bk.getSubject()
						+"' and writer='"+bk.getWriter()+"' and publish_unit='"+bk.getPublish_unit()
						+"' and publish_place='"+bk.getPublish_place()+"' and publish_date='"+bk.getPublish_date()+"'";
			Statement stmt=conn.createStatement();
			ResultSet rs=stmt.executeQuery(sql);
			if(!rs.next()){
				return false;
			}else{
				flag=true;
				book_id+=rs.getLong("book_id");
			}
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
		if(flag==false){
			try{
				String sql="insert into book(book_name,subject,writer,publish_unit,publish_place,publish_date,amount,num)values(?,?,?,?,?,?,1,1)";
				PreparedStatement ps=conn.prepareStatement(sql);
				ps.setString(1, bk.getBook_name());
				ps.setString(2, bk.getSubject());
				ps.setString(3, bk.getWriter());
				ps.setString(4, bk.getPublish_unit());
				ps.setString(5, bk.getPublish_place());
				ps.setString(6, bk.getPublish_date());
				int count=ps.executeUpdate();
				if(count>0){
					return true;
				}else{
					return false;
				}
			}catch(Exception e){
				e.printStackTrace();
				return false;
			}
		}else{
			try{
				String sql="update book set num=num+1 and amount=amount+1 where book_id="+book_id;
				Statement stmt=conn.createStatement();
				int count=stmt.executeUpdate(sql);
				if(count>0){
					return true;
				}else{
					return false;
				}
			}catch(Exception e){
				e.printStackTrace();
				return false;
			}
		}
	}
	//图书注销
	public static boolean book_del(String book_id){
		DbConn dc=new DbConn();
		Connection conn=dc.getConn();
		try{
			String sql="delete from book where book_id="+book_id;
			Statement stmt=conn.createStatement();
			int count=stmt.executeUpdate(sql);
			if(count>0){
				return true;
			}else{
				return false;
			}
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
	}
}
