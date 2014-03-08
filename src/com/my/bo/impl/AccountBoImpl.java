package com.my.bo.impl;

import com.my.bean.InfoAdmin;
import com.my.bo.AccountBo;

public class AccountBoImpl extends BaseBo implements AccountBo {

	/********************************************* admin ********************************************************/

	@Override
	public boolean isExistInfoAdmin(String name) {
		return admindao.isExist(name);
	}

	@Override
	public InfoAdmin checkLoginInfoAdmin(InfoAdmin admin) throws Exception {
		return admindao.checkLogin(admin);
	}

	@Override
	public boolean addInfoAdmin(InfoAdmin admin) throws Exception {
		return admindao.addInfoAdmin(admin);
	}

	@Override
	public boolean editInfoAdmin(InfoAdmin admin) throws Exception {
		return admindao.editInfoAdmin(admin);
	}

	@Override
	public InfoAdmin getInfoAdminById(Class<InfoAdmin> c, Integer id)
			throws Exception {
		return admindao.getInfoAdminById(c, id);
	}

	@Override
	public boolean removeInfoAdmin(Integer id) throws Exception {
		return admindao.removeInfoAdmin(id);
	}

}
