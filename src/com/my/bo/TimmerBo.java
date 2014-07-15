package com.my.bo;

import java.util.List;

import com.my.bean.Html;
import com.my.bean.InfoAdmin;
import com.my.bean.Link;

public interface TimmerBo {

	boolean isExist(String link);

	boolean addLink(Link link) throws Exception;

	boolean editLink(Link link) throws Exception;

	Link getLinkById(Class<Link> c, Integer id) throws Exception;

	Link findLink(String link) throws Exception;

	boolean removeLink(Integer id) throws Exception;

	List<Link> getAllLink() throws Exception;

	boolean addHtml(Html html) throws Exception;

	boolean editHtml(Html html) throws Exception;

	Html getHtmlById(Class<Html> c, Integer id) throws Exception;

	boolean removeHtml(Integer id) throws Exception;

	InfoAdmin getInfoAdminById(Class<InfoAdmin> c, Integer id) throws Exception;
}
