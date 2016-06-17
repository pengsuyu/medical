package com.medical.login.DAO;

import java.io.Serializable;

public class User implements Serializable {
	private Integer id;
	private String name;
	private String password;
	
	/** empty constructor !!*/
	public User() {
		// TODO Auto-generated constructor stub
	}
	/** full constructor */
    public User(String name, String password) {
        this.name = name;
        this.password = password;
    }
    
  //property accessors
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
    
    
    

	
}
