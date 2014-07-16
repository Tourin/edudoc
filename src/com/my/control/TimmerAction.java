package com.my.control;

import java.util.List;

import com.my.bean.Link;

public class TimmerAction extends BaseAction {

	public String addLink() throws Exception {
		link.setHtml("init");
		timmerbo.addLink(link);
		request.put("message",
				"<script laguage='JavaScript'> alert('已添加!') </script>");
		return "addlink";
	}

	public String listLinkPrepare() throws Exception {
		List<Link> list = timmerbo.getAllLink();
		request.put("list", list);
		return "listlink";
	}

	public String removeLink() throws Exception {
		timmerbo.removeLink(link.getLinkid());
		return this.listLinkPrepare();
	}

	public String editLinkPrepare() throws Exception {
		link = timmerbo.getLinkById(Link.class, link.getLinkid());
		request.put("link", link);
		return "editlink";
	}

	public String editLink() throws Exception {
		timmerbo.editLink(link);
		request.put("message",
				"<script laguage='JavaScript'> alert('已修改!') </script>");
		return this.listLinkPrepare();
	}
}
