package com.my.control;

import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;

import com.my.bean.InfoAdmin;
import com.my.bean.Temp001;
import com.my.bo.AccountBo;
import com.my.bo.POIBo;
import com.my.util.PageBean;

public class BaseAction implements RequestAware, SessionAware {
	Map<String, Object> request;
	Map<String, Object> session;
	AccountBo accountbo;
	POIBo poibo;
	Integer pageNo;
	InfoAdmin admin;
	Temp001 temp001;

	@Override
	public void setRequest(Map<String, Object> request) {
		this.request = request;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public void setAccountbo(AccountBo accountbo) {
		this.accountbo = accountbo;
	}

	public void setPoibo(POIBo poibo) {
		this.poibo = poibo;
	}

	public Integer getPageNo() {
		return pageNo;
	}

	public void setPageNo(Integer pageNo) {
		this.pageNo = pageNo;
	}

	public InfoAdmin getAdmin() {
		return admin;
	}

	public void setAdmin(InfoAdmin admin) {
		this.admin = admin;
	}

	public Temp001 getTemp001() {
		return temp001;
	}

	public void setTemp001(Temp001 temp001) {
		this.temp001 = temp001;
	}

	@SuppressWarnings("unchecked")
	public <T> PageBean<T> setPageBean(List<T> list, int totalRecords) {
		PageBean<T> pagebean = (PageBean<T>) request.get("pagebean");
		if (pagebean == null) {
			pagebean = new PageBean<T>();
			request.put("pagebean", pagebean);
		}
		pagebean.setPageNo(pageNo); // 设置当前页码
		pagebean.setPageSize(15);// 每页显示15个
		pagebean.setTotalRecords(totalRecords);
		pagebean.setList(list);
		return pagebean;
	}
}
