package com.my.bo.impl;

import java.util.List;

import com.my.bean.Html;
import com.my.bean.InfoAdmin;
import com.my.bean.Link;
import com.my.bo.TimmerBo;

public class TimmerBoImpl extends BaseBo implements TimmerBo {

	@Override
	public boolean isExist(String link) {
		// TODO Auto-generated method stub
		return linkdao.isExist(link);
	}

	@Override
	public boolean addLink(Link link) throws Exception {
		// TODO Auto-generated method stub
		return linkdao.addLink(link);
	}

	@Override
	public boolean editLink(Link link) throws Exception {
		// TODO Auto-generated method stub
		return linkdao.editLink(link);
	}

	@Override
	public Link getLinkById(Class<Link> c, Integer id) throws Exception {
		// TODO Auto-generated method stub
		return linkdao.getLinkById(c, id);
	}

	@Override
	public Link findLink(String link) throws Exception {
		// TODO Auto-generated method stub
		return linkdao.findLink(link);
	}

	@Override
	public boolean removeLink(Integer id) throws Exception {
		// TODO Auto-generated method stub
		return linkdao.removeLink(id);
	}

	@Override
	public boolean addHtml(Html html) throws Exception {
		// TODO Auto-generated method stub
		return htmldao.addHtml(html);
	}

	@Override
	public boolean editHtml(Html html) throws Exception {
		// TODO Auto-generated method stub
		return htmldao.editHtml(html);
	}

	@Override
	public Html getHtmlById(Class<Html> c, Integer id) throws Exception {
		// TODO Auto-generated method stub
		return htmldao.getHtmlById(c, id);
	}

	@Override
	public boolean removeHtml(Integer id) throws Exception {
		// TODO Auto-generated method stub
		return htmldao.removeHtml(id);
	}

	@Override
	public List<Link> getAllLink() throws Exception {
		// TODO Auto-generated method stub
		return linkdao.getAllLink();
	}

	@Override
	public InfoAdmin getInfoAdminById(Class<InfoAdmin> c, Integer id)
			throws Exception {
		return admindao.getInfoAdminById(c, id);
	}

}
