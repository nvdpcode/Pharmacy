package com.pharma;

public class User {
	private String u_id;
	private String password;
	public User(String u_id, String password) {
		super();
		this.u_id=u_id;
		this.password=password;
	}
	public String getUid() {
		return u_id;
	}
	public void setUid(String u_id) {
		this.u_id = u_id;
	}
	public String getPass() {
		return password;
	}
	public void setPass(String password) {
		this.password = password;
	}

}
