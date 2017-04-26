package Action;

import com.opensymphony.xwork2.ActionSupport;

public class Login extends ActionSupport{
	private static String username;
	private static String password;
	private static String ver_code;
	public static String logincheck(){
		if(username.equals("141320117")&&password.equals("141320117")){
			return SUCCESS;
		}else{
			return ERROR;
		}
	}
	public void setUsername(String username){
		System.out.println(username);
		this.username=username;
	}
	public void setPassword(String password){
		this.password=password;
	}
	public void setVer_code(String ver_code){
		this.ver_code=ver_code;
	}
	public String getUsername(){
		return this.username;
	}
	public String getPassword(){
		return this.password;
	}
}
