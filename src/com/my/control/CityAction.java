package com.my.control;

import java.util.List;

import com.my.bean.Temp002;
import com.my.util.PageBean;

public class CityAction extends BaseAction {

	public String addTemp002() throws Exception {
		if (temp002.getF1().isEmpty()) {
			request.put("message",
					"<script laguage='JavaScript'> alert('请填写企业名称!') </script>");
			return "addtemp002";
		}
		poibo.addTemp002(temp002);
		request.put("message",
				"<script laguage='JavaScript'> alert('已添加!') </script>");
		return "addtemp002";
	}

	public String listTemp002Prepare() throws Exception {
		if (pageNo == null || pageNo == 0) {
			pageNo = 1;
		}
		int totalRecords = 0;
		List<Temp002> list;
		list = poibo.getAllTemp002ByPage(pageNo, 15);
		totalRecords = poibo.getTotalTemp002Records().intValue();
		PageBean<Temp002> pagebean = this.setPageBean(list, totalRecords);
		pagebean.setPageAction("listTemp002Prepare_cit");
		return "listtemp002";
	}

	public String searchTemp002() throws Exception {
		if (pageNo == null || pageNo == 0) {
			pageNo = 1;
		}
		int totalRecords = 0;
		List<Temp002> list;
		list = poibo.searchTemp002ByPage(pageNo, 15, temp002);
		totalRecords = poibo.searchTotalTemp002Records(temp002).intValue();
		PageBean<Temp002> pagebean = this.setPageBean(list, totalRecords);
		pagebean.setPageAction("searchTemp002_cit");
		return "listtemp002";
	}

	public String removeTemp002() throws Exception {
		poibo.removeTemp002(temp002.getTemp002id());
		return this.listTemp002Prepare();
	}

	public String editTemp002Prepare() throws Exception {
		temp002 = poibo.getTemp002ById(Temp002.class, temp002.getTemp002id());
		request.put("temp002", temp002);
		return "edittemp002";
	}

	public String editTemp002() throws Exception {
		poibo.editTemp002(temp002);
		request.put("message",
				"<script laguage='JavaScript'> alert('已修改!') </script>");
		return this.listTemp002Prepare();
	}
}
