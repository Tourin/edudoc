package com.my.control;

import com.my.bean.InfoAdmin;
import com.my.util.MD5;

public class AccountAction extends BaseAction {

	private String newpassword;

	public String getNewpassword() {
		return newpassword;
	}

	public void setNewpassword(String newpassword) {
		this.newpassword = newpassword;
	}

	public String login() throws Exception {
		if (admin.getName().isEmpty() || admin.getPass().isEmpty()) {
			request.put("message",
					"<script laguage='JavaScript'> alert('用户名密码不能为空!') </script>");
			return "login";
		}
		StringBuilder stf = new StringBuilder();
		StringBuilder stf2 = new StringBuilder();
		String psMD5 = MD5.passwordToHash(admin.getPass());
		admin.setPass(psMD5);
		admin = accountbo.checkLoginInfoAdmin(admin);
		if (admin == null) {
			request.put("message",
					"<script laguage='JavaScript'> alert('用户名密码不正确!') </script>");
			return "login";
		} else {
			stf.append("<a class='menu_item is-menu_item-on js-loading-trigger' href='about.html' target='mainframe' hidefocus>首页</a>");
			stf.append("<a class='menu_item js-loading-trigger' href='templates/addlink.jsp' target='mainframe' hidefocus>添加爬虫</a>");
			stf.append("<a class='menu_item js-loading-trigger' href='templates/listlink.jsp' target='mainframe' hidefocus>爬虫列表</a>");
			stf.append("<a class='menu_item js-loading-trigger' href='templates/addtemp002.jsp' target='mainframe' hidefocus>添加资质</a>");
			stf.append("<a class='menu_item js-loading-trigger' href='templates/listtemp002.jsp' target='mainframe' hidefocus>资质列表</a>");
			stf.append("<a class='menu_item js-loading-trigger' href='templates/addtemp001.jsp' target='mainframe' hidefocus>添加教案</a>");
			stf.append("<a class='menu_item js-loading-trigger' href='templates/listtemp001.jsp' target='mainframe' hidefocus>教案列表</a>");
			stf2.append("<a class='menu_item js-loading-trigger' href='templates/editadminpass.jsp' target='mainframe' hidefocus>修改密码</a>");
			stf2.append("<a class='menu_item js-loading-trigger' href='templates/editadminemail.jsp' target='mainframe' hidefocus>修改邮箱</a>");
			session.put("rights", stf.toString());
			session.put("rights2", stf2.toString());
			session.put("admin", admin);
			return "index";
		}
	}

	public String logout() throws Exception {
		request.clear();
		session.clear();
		return "login";
	}

	public String editAdminPass() throws Exception {
		InfoAdmin a = (InfoAdmin) session.get("admin");
		admin.setName(a.getName());
		admin.setPass(MD5.passwordToHash(admin.getPass()));
		admin = accountbo.checkLoginInfoAdmin(admin);
		if (admin == null) {
			request.put("message",
					"<script laguage='JavaScript'> alert('原始密码不对，请重新输入!') </script>");
			return "editadminpass";
		}
		a.setPass(MD5.passwordToHash(newpassword));
		accountbo.editInfoAdmin(a);
		session.clear();
		request.put("message",
				"<script laguage='JavaScript'> alert('修改成功,请重新登录!') </script>");
		return "editadminpass";
	}

	public String editAdminEmail() throws Exception {
		InfoAdmin a = (InfoAdmin) session.get("admin");
		a.setEmail(admin.getEmail());
		accountbo.editInfoAdmin(a);
		session.put("admin", admin);
		return "editadminemail";
	}
}
