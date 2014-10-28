package com.my.bo;

import java.math.BigInteger;
import java.util.List;

import com.my.bean.Temp001;
import com.my.bean.Temp002;

public interface POIBo {

	/***************************************** temp001 ***************************************************************************/

	boolean addTemp001(Temp001 temp001) throws Exception;

	boolean editTemp001(Temp001 temp001) throws Exception;

	Temp001 getTemp001ById(Class<Temp001> c, Integer id) throws Exception;

	boolean removeTemp001(Integer id) throws Exception;

	BigInteger getTotalTemp001Records() throws Exception;

	List<Temp001> getAllTemp001ByPage(int pageindex, int pagesize)
			throws Exception;

	BigInteger searchTotalTemp001Records(Temp001 temp001) throws Exception;

	List<Temp001> searchTemp001ByPage(int pageindex, int pagesize,
			Temp001 temp001) throws Exception;

	/***************************************** temp002 ***************************************************************************/

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
