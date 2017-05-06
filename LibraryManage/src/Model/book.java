package Model;

public class book {
	private static long book_id;
	private static String book_name;
	private static String subject;
	private static String writer;
	private static String publish_unit;
	private static String publish_place;
	private static String publish_date;
	private static int amount;
	private static int num;
	public void setBook_id(long book_id){
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
	public void setAmount(int amount){
		this.amount=amount;
	}
	public void setNum(int num){
		this.num=num;
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
	
	
	public long getBook_id(){
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
	public int getAmount(){
		return this.amount;
	}
	public int getNum(){
		return this.num;
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
}
