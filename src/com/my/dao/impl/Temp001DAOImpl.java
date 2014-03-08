package com.my.dao.impl;

import java.math.BigInteger;
import java.util.List;

import com.my.bean.Temp001;
import com.my.dao.IBaseDAO;
import com.my.dao.Temp001DAO;

public class Temp001DAOImpl implements Temp001DAO {
	private IBaseDAO<Temp001> basedao;

	public void setBasedao(IBaseDAO<Temp001> basedao) {
		this.basedao = basedao;
	}

	@Override
	public boolean addTemp001(Temp001 temp001) throws Exception {
		return basedao.add(temp001);
	}

	@Override
	public boolean editTemp001(Temp001 temp001) throws Exception {
		return basedao.edit(temp001);
	}

	@Override
	public Temp001 getTemp001ById(Class<Temp001> c, Integer id)
			throws Exception {
		return basedao.getById(c, id);
	}

	@Override
	public boolean removeTemp001(Integer id) throws Exception {
		Temp001 temp001 = basedao.getById(Temp001.class, id);
		if (temp001 != null) {
			basedao.remove(temp001);
		}
		return false;
	}

	@Override
	public BigInteger getTotalTemp001Records() throws Exception {
		String sql = "select count(temp001id) from temp001";
		return basedao.getTotalRecords(sql);
	}

	@Override
	public List<Temp001> getAllTemp001ByPage(int pageindex, int pagesize)
			throws Exception {
		String hql = "from Temp001 order by date desc";
		return basedao.getAllEntityByPage(hql, pageindex, pagesize);
	}

	@Override
	public BigInteger searchTotalTemp001Records(Temp001 temp001)
			throws Exception {
		String sql = "select count(temp001id) from temp001 where f1 like ? and f2 like ?";
		String item1 = temp001.getF1() + "%";
		String item2 = temp001.getF2() + "%";
		return basedao.getTotalRecords(sql, item1, item2);
	}

	@Override
	public List<Temp001> searchTemp001ByPage(int pageindex, int pagesize,
			Temp001 temp001) throws Exception {
		String hql = "from Temp001 as t where t.f1 like ? and t.f2 like ? order by t.date desc";
		String item1 = temp001.getF1() + "%";
		String item2 = temp001.getF2() + "%";
		return basedao.getAllEntityByPage(hql, pageindex, pagesize, item1,
				item2);
	}
}
