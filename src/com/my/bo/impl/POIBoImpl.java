package com.my.bo.impl;

import java.math.BigInteger;
import java.util.Date;
import java.util.List;

import com.my.bean.Temp001;
import com.my.bean.Temp002;
import com.my.bo.POIBo;

public class POIBoImpl extends BaseBo implements POIBo {

	/********************************************* temp001 ********************************************************/
	@Override
	public boolean addTemp001(Temp001 temp001) throws Exception {
		// TODO Auto-generated method stub
		temp001.setDate(new Date());
		return temp001dao.addTemp001(temp001);
	}

	@Override
	public boolean editTemp001(Temp001 temp001) throws Exception {
		// TODO Auto-generated method stub
		temp001.setDate(new Date());
		return temp001dao.editTemp001(temp001);
	}

	@Override
	public Temp001 getTemp001ById(Class<Temp001> c, Integer id)
			throws Exception {
		// TODO Auto-generated method stub
		return temp001dao.getTemp001ById(c, id);
	}

	@Override
	public boolean removeTemp001(Integer id) throws Exception {
		// TODO Auto-generated method stub
		return temp001dao.removeTemp001(id);
	}

	@Override
	public BigInteger getTotalTemp001Records() throws Exception {
		// TODO Auto-generated method stub
		return temp001dao.getTotalTemp001Records();
	}

	@Override
	public List<Temp001> getAllTemp001ByPage(int pageindex, int pagesize)
			throws Exception {
		// TODO Auto-generated method stub
		return temp001dao.getAllTemp001ByPage(pageindex, pagesize);
	}

	@Override
	public BigInteger searchTotalTemp001Records(Temp001 temp001)
			throws Exception {
		// TODO Auto-generated method stub
		return temp001dao.searchTotalTemp001Records(temp001);
	}

	@Override
	public List<Temp001> searchTemp001ByPage(int pageindex, int pagesize,
			Temp001 temp001) throws Exception {
		// TODO Auto-generated method stub
		return temp001dao.searchTemp001ByPage(pageindex, pagesize, temp001);
	}

	/********************************************* temp002 ********************************************************/
	@Override
	public boolean addTemp002(Temp002 temp002) throws Exception {
		// TODO Auto-generated method stub
		return temp002dao.addTemp002(temp002);
	}

	@Override
	public boolean editTemp002(Temp002 temp002) throws Exception {
		// TODO Auto-generated method stub
		return temp002dao.editTemp002(temp002);
	}

	@Override
	public Temp002 getTemp002ById(Class<Temp002> c, Integer id)
			throws Exception {
		// TODO Auto-generated method stub
		return temp002dao.getTemp002ById(c, id);
	}

	@Override
	public boolean removeTemp002(Integer id) throws Exception {
		// TODO Auto-generated method stub
		return temp002dao.removeTemp002(id);
	}

	@Override
	public BigInteger getTotalTemp002Records() throws Exception {
		// TODO Auto-generated method stub
		return temp002dao.getTotalTemp002Records();
	}

	@Override
	public List<Temp002> getAllTemp002ByPage(int pageindex, int pagesize)
			throws Exception {
		// TODO Auto-generated method stub
		return temp002dao.getAllTemp002ByPage(pageindex, pagesize);
	}

	@Override
	public BigInteger searchTotalTemp002Records(Temp002 temp002)
			throws Exception {
		// TODO Auto-generated method stub
		return temp002dao.searchTotalTemp002Records(temp002);
	}

	@Override
	public List<Temp002> searchTemp002ByPage(int pageindex, int pagesize,
			Temp002 temp002) throws Exception {
		// TODO Auto-generated method stub
		return temp002dao.searchTemp002ByPage(pageindex, pagesize, temp002);
	}

}
