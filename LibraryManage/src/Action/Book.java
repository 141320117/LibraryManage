package Action;

import com.opensymphony.xwork2.ActionSupport;

public class Book extends ActionSupport{
	private static String book_id;
	private static String book_name;
	private static String subject;
	private static String writer;
	private static String publish_unit;
	private static String publish_place;
	private static String publish_date;
	private static String reader_id;
	private static String reader_name;
	public static String search() {
		if(!book_name.equals("")){
			System.out.println(book_name);
			return "success";
		}
		return "error";
	}
	public static String borrow() {
		if(!book_id.equals("")&&!reader_id.equals("")){
			return "success";
		}
		return "error";
	}
	public static String reback() {
		if(!book_id.equals("")&&!reader_id.equals("")){
			return "success";
		}
		return "error";
	}
	public static String add() {
		if(!book_name.equals("")){
			return "success";
		}
		return "error";
	}
	public static String del() {
		if(!book_name.equals("")){
			return "success";
		}
		return "error";
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
	public void setPublish_date(String public_date){
		this.publish_date=public_date;
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
