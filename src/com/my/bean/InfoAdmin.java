package com.my.bean;

// Generated 2014-3-7 19:32:19 by Hibernate Tools 3.4.0.CR1

/**
 * InfoAdmin generated by hbm2java
 */
public class InfoAdmin implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer adminid;
	private String name;
	private String pass;

	public InfoAdmin() {
	}

	public InfoAdmin(String name, String pass) {
		this.name = name;
		this.pass = pass;
	}

	public Integer getAdminid() {
		return this.adminid;
	}

	public void setAdminid(Integer adminid) {
		this.adminid = adminid;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPass() {
		return this.pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

}