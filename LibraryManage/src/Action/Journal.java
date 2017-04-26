package Action;

import com.opensymphony.xwork2.ActionSupport;

public class Journal extends ActionSupport{
	private static String journal_id;
	private static String journal_name;
	private static String subject;
	private static String writer;
	private static String publish_unit;
	private static String publish_place;
	private static String publish_date;
	private static String reader_id;
	private static String reader_name;
	public static String search() {
		if(!journal_name.equals("")){
			return "success";
		}
		return "error";
	}
	public static String borrow() {
		if(!journal_id.equals("")&&!reader_id.equals("")){
			return "success";
		}
		return "error";
	}
	public static String reback() {
		if(!journal_id.equals("")&&!reader_id.equals("")){
			return "success";
		}
		return "error";
	}
	public static String add() {
		if(!journal_name.equals("")){
			return "success";
		}
		return "error";
	}
	public static String del() {
		if(!journal_name.equals("")){
			return "success";
		}
		return "error";
	}
	public void setJournal_id(String book_id){
		this.journal_id=book_id;
	}
	public void setJournal_name(String book_name){
		this.journal_name=book_name;
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
	public String getJournal_id(){
		return this.journal_id;
	}
	public String getJournal_name(){
		return this.journal_name;
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