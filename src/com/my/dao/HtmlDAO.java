package com.my.dao;

import com.my.bean.Html;

public interface HtmlDAO {

	boolean addHtml(Html html) throws Exception;

	boolean editHtml(Html html) throws Exception;

	Html getHtmlById(Class<Html> c, Integer id) throws Exception;

	boolean removeHtml(Integer id) throws Exception;
}
