package com.aman.pojo;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="users")
public class UserInfo {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int userid;
	private String username;
	private String email;
	private String password;
	private String dp;
	private String role;
	
    @Column(name = "htmlcss_access")
    private boolean htmlcssAccess;

    @Column(name = "python_access")
    private boolean pythonAccess;
    
	public UserInfo() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public UserInfo(String username, String email, String password, String dp, String role) {
		super();
		this.username = username;
		this.email = email;
		this.password = password;
		this.dp = dp;
		this.role = role;
	}

	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getDp() {
		return dp;
	}
	public void setDp(String dp) {
		this.dp = dp;
	}

	public boolean isHtmlcssAccess() {
		return htmlcssAccess;
	}

	public void setHtmlcssAccess(boolean htmlcssAccess) {
		this.htmlcssAccess = htmlcssAccess;
	}

	public boolean isPythonAccess() {
		return pythonAccess;
	}

	public void setPythonAccess(boolean pythonAccess) {
		this.pythonAccess = pythonAccess;
	}
	
	
}
