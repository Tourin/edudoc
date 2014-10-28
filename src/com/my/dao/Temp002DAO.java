package com.my.dao;

import java.math.BigInteger;
import java.util.List;

import com.my.bean.Temp002;

public interface Temp002DAO {
	boolean addTemp002(Temp002 temp002) throws Exception;

	boolean editTemp002(Temp002 temp002) throws Exception;

	Temp002 getTemp002ById(Class<Temp002> c, Integer id) throws Exception;

	boolean removeTemp002(Integer id) throws Exception;

	BigInteger getTotalTemp002Records() throws Exception;

	List<Temp002> getAllTemp002ByPage(int pageindex, int pagesize)
			throws Exception;

	BigInteger searchTotalTemp002Records(Temp002 temp002) throws Exception;

	List<Temp002> searchTemp002ByPage(int pageindex, int pagesize,
			Temp002 temp002) throws Exception;
}
