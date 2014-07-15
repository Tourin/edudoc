/**
 * 
 */
package com.my.bo.impl;

import com.my.dao.AdminDAO;
import com.my.dao.HtmlDAO;
import com.my.dao.LinkDAO;
import com.my.dao.Temp001DAO;

public class BaseBo {

	AdminDAO admindao;
	Temp001DAO temp001dao;
	LinkDAO linkdao;
	HtmlDAO htmldao;

	public void setAdmindao(AdminDAO admindao) {
		this.admindao = admindao;
	}

	public void setTemp001dao(Temp001DAO temp001dao) {
		this.temp001dao = temp001dao;
	}

	public void setLinkdao(LinkDAO linkdao) {
		this.linkdao = linkdao;
	}

	public void setHtmldao(HtmlDAO htmldao) {
		this.htmldao = htmldao;
	}

}
