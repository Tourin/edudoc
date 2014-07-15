package com.my.dao.impl;

import com.my.bean.Html;
import com.my.dao.HtmlDAO;
import com.my.dao.IBaseDAO;

public class HtmlDAOImpl implements HtmlDAO {
	private IBaseDAO<Html> basedao;

	public void setBasedao(IBaseDAO<Html> basedao) {
		this.basedao = basedao;
	}

	@Override
	public boolean addHtml(Html html) throws Exception {
		if (this.checkHtml(html)) {
			return basedao.add(html);
		}
		return false;
	}

	@Override
	public boolean editHtml(Html html) throws Exception {
		if (this.checkHtml(html)) {
			return basedao.edit(html);
		}
		return false;
	}

	@Override
	public Html getHtmlById(Class<Html> c, Integer id) throws Exception {
		return basedao.getById(c, id);
	}

	@Override
	public boolean removeHtml(Integer id) throws Exception {
		Html html = basedao.getById(Html.class, id);
		if (html != null) {
			basedao.remove(html);
		}
		return false;
	}

	boolean checkHtml(Html html) {
		if (html == null || html.getHtml().isEmpty()) {
			return false;
		} else {
			return true;
		}
	}
}
