package com.my.dao;

import java.util.List;

import com.my.bean.Link;

public interface LinkDAO {

	boolean isExist(String link);

	boolean addLink(Link link) throws Exception;

	boolean editLink(Link link) throws Exception;

	Link getLinkById(Class<Link> c, Integer id) throws Exception;

	Link findLink(String link) throws Exception;

	boolean removeLink(Integer id) throws Exception;

	List<Link> getAllLink() throws Exception;
}
