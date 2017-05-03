package Action;

import java.sql.Connection;

import com.opensymphony.xwork2.ActionSupport;

import DB.*;

public class Login extends ActionSupport{
	private static String username;
	private static String password;
	private static String ver_code;
	public static String logincheck(){
		DbConn dbConn=new DbConn();
		Connection conn=dbConn.getConn();
		if(dbConn.LoginCheck(username, password)){
			return SUCCESS;
		}else{
			return ERROR;
		}
	}
	public void setUsername(String username){
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
