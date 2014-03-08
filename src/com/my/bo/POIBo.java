package com.my.bo;

import java.math.BigInteger;
import java.util.List;

import com.my.bean.Temp001;

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
}
