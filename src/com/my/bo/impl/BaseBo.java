/**
 * 
 */
package com.my.bo.impl;

import com.my.dao.AdminDAO;
import com.my.dao.Temp001DAO;

public class BaseBo {

	AdminDAO admindao;
	Temp001DAO temp001dao;

	public void setAdmindao(AdminDAO admindao) {
		this.admindao = admindao;
	}

	public void setTemp001dao(Temp001DAO temp001dao) {
		this.temp001dao = temp001dao;
	}

}
