package Action;

import com.opensymphony.xwork2.ActionSupport;

public class Reader extends ActionSupport{
	private static String reader_id;
	private static String reader_name;
	private static String sex;
	private static String id_card;
	private static String phone;
	public static String search(){
		if(!reader_id.equals("")){
			return "success";
		}
		return "error";
	}
	public static String add(){
		if(!reader_name.equals("")&&!id_card.equals("")&&!phone.equals("")){
			return "success";
		}
		return "error";
	}
	public static String del(){
		if(!reader_id.equals("")&&!reader_name.equals("")){
			return "success";
		}
		return "error";
	}
	public void setReader_id(String reader_id){
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
	public String getReader_id(){
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
