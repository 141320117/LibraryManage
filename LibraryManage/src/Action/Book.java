package Action;

import java.sql.Connection;
import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import DB.DbConn;
import Model.book;

public class Book extends ActionSupport{
	private static Map session=ActionContext.getContext().getSession();
	private static String book_id;
	private static String book_name;
	private static String subject;
	private static String writer;
	private static String publish_unit;
	private static String publish_place;
	private static String publish_date;
	private static String reader_id;
	private static String reader_name;
	public String search() {
		DbConn dbc=new DbConn();
		Connection conn=dbc.getConn();
		List<book> list=dbc.book_search(book_name, subject);
		if(list.size()>0){
			session.put("book_search", list);
			return "success";
		}else{
			this.addFieldError("book_borrow","无法找到该书籍");
			return "error";
		}
	}
	public static String borrow() {
		DbConn dbc=new DbConn();
		Connection conn=dbc.getConn();
		if(dbc.book_borrow(book_id, reader_id)){
			return "success";
		}else{
			return "error";
		}
	}
	public static String reback() {
		DbConn dbc=new DbConn();
		Connection conn=dbc.getConn();
		if(dbc.book_reback(book_id, reader_id)){
			return "success";
		}else{
			return "error";
		}
	}
	public static String add() {
		book bk=new book();
		bk.setBook_name(book_name);
		bk.setWriter(writer);
		bk.setSubject(subject);
		bk.setPublish_unit(publish_unit);
		bk.setPublish_place(publish_place);
		bk.setPublish_date(publish_date);
		//System.out.println(bk.getBook_name());
		DbConn dbc=new DbConn();
		Connection conn=dbc.getConn();
		if(dbc.book_add(bk)){
			return "success";
		}else{
			return "error";
		}
	}
	public static String del() {
		DbConn dbc=new DbConn();
		Connection conn=dbc.getConn();
		if(dbc.book_del(book_id)){
			return "success";
		}else{
			return "error";
		}
	}
	
	
	public void setBook_id(String book_id){
		this.book_id=book_id;
	}
	public void setBook_name(String book_name){
		this.book_name=book_name;
	}
	public void setSubject(String subject){
		this.subject=subject;
	}
	public void setWriter(String writer){
		this.writer=writer;
	}
	public void setPublish_unit(String publish_unit){
		this.publish_unit=publish_unit;
	}
	public void setPublish_place(String publish_place){
		this.publish_place=publish_place;
	}
	public void setPublish_date(String publish_date){
		this.publish_date=publish_date;
	}
	public void setReader_id(String reader_id){
		this.reader_id=reader_id;
	}
	public void setReader_name(String reader_name){
		this.reader_name=reader_name;
	}
	
	
	public String getBook_id(){
		return this.book_id;
	}
	public String getBook_name(){
		return this.book_name;
	}
	public String getSubject(){
		return this.subject;
	}
	public String getWriter(){
		return this.writer;
	}
	public String getPublish_unit(){
		return this.publish_unit;
	}
	public String getPublish_place(){
		return this.publish_place;
	}
	public String getPublish_date(){
		return this.publish_date;
	}
	public String getReader_id(){
		return this.reader_id;
	}
	public String getReader_name(){
		return this.reader_name;
	}
}
