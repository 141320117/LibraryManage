package Action;

import java.sql.Connection;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import DB.*;
import Model.*;

public class Reader extends ActionSupport{
	private static String reader_id;
	private static String reader_name;
	private static String sex;
	private static String id_card;
	private static String phone;
	public static String search(){
		DbConn dbc=new DbConn();
		Connection conn=dbc.getConn();
		List<reader>list=dbc.reader_search(reader_id);
		if(list.size()>0){
			return "success";
		}
		return "error";
	}
	public static String add(){
		reader rr=new reader();
		rr.setReader_name(reader_name);
		rr.setSex(sex);
		rr.setId_card(id_card);
		rr.setPhone(phone);
		DbConn dbc=new DbConn();
		Connection conn=dbc.getConn();
		if(dbc.reader_add(rr)){
			return "success";
		}
		return "error";
	}
	public static String del(){
		DbConn dbc=new DbConn();
		Connection conn=dbc.getConn();
		if(dbc.reader_del(reader_id)){
			return "success";
		}
		return "error";
	}
	public void setReader_id(String reader_id){
		this.reader_id=reader_id;
	}
	public void setReader_name(String reader_name){
		this.reader_name=reader_name;
		System.out.println(reader_name);
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
