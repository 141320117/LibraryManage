package Action;

import com.opensymphony.xwork2.ActionSupport;

public class Borrow extends ActionSupport{
	private static String kind;
	private static String subject;
	public static String search(){
		return "success";
	}
	public void setKind(String kind){
		this.kind=kind;
	}
	public void setSubject(String subject){
		this.subject=subject;
	}
	public String getKind(){
		return this.kind;
	}
	public String getSubject(){
		return this.subject;
	}
}
