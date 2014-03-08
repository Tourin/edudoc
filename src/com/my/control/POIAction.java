package com.my.control;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.util.List;
import java.util.Map;

import com.my.bean.Temp001;
import com.my.util.POIUtil;
import com.my.util.PageBean;
import com.my.util.Relfect;

public class POIAction extends BaseAction {

	private InputStream wordStream;
	private String fileName;

	public InputStream getWordStream() {
		return wordStream;
	}

	public void setWordStream(InputStream wordStream) {
		this.wordStream = wordStream;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public String addTemp001() throws Exception {
		if (temp001.getF1().isEmpty()) {
			request.put("message",
					"<script laguage='JavaScript'> alert('请填写班级!') </script>");
			return "addtemp001";
		}
		poibo.addTemp001(temp001);
		request.put("message",
				"<script laguage='JavaScript'> alert('已添加!') </script>");
		return "addtemp001";
	}

	public String listTemp001Prepare() throws Exception {
		if (pageNo == null || pageNo == 0) {
			pageNo = 1;
		}
		int totalRecords = 0;
		List<Temp001> list;
		list = poibo.getAllTemp001ByPage(pageNo, 15);
		totalRecords = poibo.getTotalTemp001Records().intValue();
		PageBean<Temp001> pagebean = this.setPageBean(list, totalRecords);
		pagebean.setPageAction("listTemp001Prepare_poi");
		return "listtemp001";
	}

	public String searchTemp001() throws Exception {
		if (pageNo == null || pageNo == 0) {
			pageNo = 1;
		}
		int totalRecords = 0;
		List<Temp001> list;
		list = poibo.searchTemp001ByPage(pageNo, 15, temp001);
		totalRecords = poibo.searchTotalTemp001Records(temp001).intValue();
		PageBean<Temp001> pagebean = this.setPageBean(list, totalRecords);
		pagebean.setPageAction("searchTemp001_poi");
		return "listtemp001";
	}

	public String removeTemp001() throws Exception {
		poibo.removeTemp001(temp001.getTemp001id());
		return this.listTemp001Prepare();
	}

	public String editTemp001Prepare() throws Exception {
		temp001 = poibo.getTemp001ById(Temp001.class, temp001.getTemp001id());
		request.put("temp001", temp001);
		return "edittemp001";
	}

	public String editTemp001() throws Exception {
		poibo.editTemp001(temp001);
		request.put("message",
				"<script laguage='JavaScript'> alert('已修改!') </script>");
		return this.listTemp001Prepare();
	}

	public String getTemp001Doc() throws Exception {
		temp001 = poibo.getTemp001ById(Temp001.class, temp001.getTemp001id());
		this.setFileName(temp001.getTemp001id().toString());
		Map<String, String> map = Relfect.valueReflect(temp001);
		wordStream = new ByteArrayInputStream(POIUtil.readwriteWord(map)
				.toByteArray());
		return "word";
	}
}
