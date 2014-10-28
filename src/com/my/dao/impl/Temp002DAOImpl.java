package com.my.dao.impl;

import java.math.BigInteger;
import java.util.List;

import com.my.bean.Temp002;
import com.my.dao.IBaseDAO;
import com.my.dao.Temp002DAO;

public class Temp002DAOImpl implements Temp002DAO {
	private IBaseDAO<Temp002> basedao;

	public void setBasedao(IBaseDAO<Temp002> basedao) {
		this.basedao = basedao;
	}

	@Override
	public boolean addTemp002(Temp002 temp002) throws Exception {
		return basedao.add(temp002);
	}

	@Override
	public boolean editTemp002(Temp002 temp002) throws Exception {
		return basedao.edit(temp002);
	}

	@Override
	public Temp002 getTemp002ById(Class<Temp002> c, Integer id)
			throws Exception {
		return basedao.getById(c, id);
	}

	@Override
	public boolean removeTemp002(Integer id) throws Exception {
		Temp002 temp002 = basedao.getById(Temp002.class, id);
		if (temp002 != null) {
			basedao.remove(temp002);
		}
		return false;
	}

	@Override
	public BigInteger getTotalTemp002Records() throws Exception {
		String sql = "select count(temp002id) from temp002";
		return basedao.getTotalRecords(sql);
	}

	@Override
	public List<Temp002> getAllTemp002ByPage(int pageindex, int pagesize)
			throws Exception {
		String hql = "from Temp002";
		return basedao.getAllEntityByPage(hql, pageindex, pagesize);
	}

	@Override
	public BigInteger searchTotalTemp002Records(Temp002 temp002)
			throws Exception {
		String sql = "select count(temp002id) from temp002 where f1 like ? and f2 like ? and f3 like ?";
		String item1 = temp002.getF1() + "%";
		String item2 = temp002.getF2() + "%";
		String item3 = temp002.getF3() + "%";
		return basedao.getTotalRecords(sql, item1, item2, item3);
	}

	@Override
	public List<Temp002> searchTemp002ByPage(int pageindex, int pagesize,
			Temp002 temp002) throws Exception {
		String hql = "from Temp002 as t where t.f1 like ? and t.f2 like ? and t.f3 like ?";
		String item1 = temp002.getF1() + "%";
		String item2 = temp002.getF2() + "%";
		String item3 = temp002.getF3() + "%";
		return basedao.getAllEntityByPage(hql, pageindex, pagesize, item1,
				item2, item3);
	}
}
