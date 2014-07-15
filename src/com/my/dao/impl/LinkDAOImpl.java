package com.my.dao.impl;

import java.util.List;

import com.my.bean.Link;
import com.my.dao.IBaseDAO;
import com.my.dao.LinkDAO;

public class LinkDAOImpl implements LinkDAO {
	private IBaseDAO<Link> basedao;

	public void setBasedao(IBaseDAO<Link> basedao) {
		this.basedao = basedao;
	}

	@Override
	public boolean isExist(String link) {
		if (link.isEmpty()) {
			return false;
		}
		String hql = "from Link as a where a.link=?";
		return basedao.isExist(hql, link);
	}

	@Override
	public boolean addLink(Link link) throws Exception {
		if (this.checkLink(link)) {
			return basedao.add(link);
		}
		return false;
	}

	@Override
	public boolean editLink(Link link) throws Exception {
		if (this.checkLink(link)) {
			return basedao.edit(link);
		}
		return false;
	}

	@Override
	public Link getLinkById(Class<Link> c, Integer id) throws Exception {
		return basedao.getById(c, id);
	}

	@Override
	public Link findLink(String link) throws Exception {
		if (link.isEmpty()) {
			return null;
		}
		String hql = "from Link as l where l.link=?";
		return basedao.checkEntity(hql, link);
	}

	@Override
	public boolean removeLink(Integer id) throws Exception {
		Link link = basedao.getById(Link.class, id);
		if (link != null) {
			basedao.remove(link);
		}
		return false;
	}

	@Override
	public List<Link> getAllLink() throws Exception {
		String hql = "from Link";
		return basedao.getList(hql);
	}

	boolean checkLink(Link link) {
		if (link == null || link.getLink().isEmpty()) {
			return false;
		} else {
			return true;
		}
	}
}
