package com.my.util;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.util.Map;

import org.apache.poi.hwpf.HWPFDocument;
import org.apache.poi.hwpf.usermodel.Range;

public class POIUtil {

	// ======================输出文件流下载方式：==========================　　

	/**
	 * 实现对word读取和修改操作
	 * 
	 * @param response
	 *            响应,设置生成的文件类型,文件头编码方式和文件名,以及输出
	 * @param filePath
	 *            word模板路径和名称
	 * @param map
	 *            待填充的数据，从数据库读取
	 */
	public static ByteArrayOutputStream readwriteWord(Map<String, String> map) {
		FileInputStream in;
		HWPFDocument hdt = null;
		try {
			in = new FileInputStream(new File("D:/java/temp001.doc"));
			hdt = new HWPFDocument(in);
		} catch (Exception e1) {
			e1.printStackTrace();
		}

		// 替换读取到的word模板内容的指定字段
		Range range = hdt.getRange();

		for (Map.Entry<String, String> entry : map.entrySet()) {
			if (!entry.getKey().equals(entry.getValue())) {
				range.replaceText(entry.getKey(),
						entry.getValue().replaceAll("\r\n", "\r"));
			}
		}

		ByteArrayOutputStream ostream = new ByteArrayOutputStream();
		try {
			hdt.write(ostream);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ostream;
	}
}
