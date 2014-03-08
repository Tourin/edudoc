package com.my.bo;

import com.my.bean.InfoAdmin;

public interface AccountBo {

	/***************************************** admin ***************************************************************************/

	boolean isExistInfoAdmin(String name);

	InfoAdmin checkLoginInfoAdmin(InfoAdmin admin) throws Exception;

	boolean addInfoAdmin(InfoAdmin admin) throws Exception;

	boolean editInfoAdmin(InfoAdmin admin) throws Exception;

	InfoAdmin getInfoAdminById(Class<InfoAdmin> c, Integer id) throws Exception;

	boolean removeInfoAdmin(Integer id) throws Exception;

}
