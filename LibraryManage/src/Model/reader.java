package Model;

public class reader {
	private static long reader_id;
	private static String reader_name;
	private static String sex;
	private static String id_card;
	private static String phone;
	
	
	public void setReader_id(long reader_id){
		this.reader_id=reader_id;
	}
	public void setReader_name(String reader_name){
		this.reader_name=reader_name;
	}
	public void setSex(String sex){
		this.sex=sex;
	}
	public void setId_card(String id_card){
		this.id_card=id_card;
	}
	public void setPhone(String phone){
		this.phone=phone;
	}
	
	
	public long getReader_id(){
		return this.reader_id;
	}
	public String getReader_name(){
		return this.reader_name;
	}
	public String getSex(){
		return this.sex;
	}
	public String getId_card(){
		return this.id_card;
	}
	public String getPhone(){
		return this.phone;
	}
}
