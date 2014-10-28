<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->
<head>
<meta charset="utf-8">
<title>Backstage</title>
<link rel="stylesheet" href="../styles/backstage.css" />
<script>
	(function() {
		var html = document.getElementsByTagName('html')[0];
		html.className = html.className.replace('no-js', 'js');
	})();
</script>
</head>
<body>
	${message}
	<div class="container">
		<form class="form" action="editTemp002_cit" method="post"
			enctype="multipart/form-data">
			<fieldset>
				<legend>添加住建部资质</legend>
				<table class="table table-form table-fluid">
					<tbody>
						<tr class="form-item">
							<th class="form-key"><label for="text">企业名称</label></th>
							<td class="form-value"><input id="text" name="temp002.f1"
								class="text-input grid-3" type="text" data-parent=".form-item"
								required data-validation-empty="请输入企业名称"
								data-validation-placement="right" value="${temp002.f1}"/></td>
						</tr>
						<tr class="form-item">
							<th class="form-key"><label for="text">所在省份</label></th>
							<td class="form-value"><input id="text" name="temp002.f2"
								class="text-input grid-3" type="text" data-parent=".form-item"
								 data-validation-empty="请输入省份"
								data-validation-placement="right" value="${temp002.f2}"/></td>
						</tr>
						<tr class="form-item">
							<th class="form-key"><label for="text">住建部资质</label></th>
							<td class="form-value"><input id="text" name="temp002.f3"
								class="text-input grid-3" type="text" data-parent=".form-item"
								 data-validation-empty="请输入住建部资质"
								data-validation-placement="right" value="${temp002.f3}"/></td>
						</tr>
						<tr class="form-item">
							<th class="form-key"><label for="text">系统集成资质</label></th>
							<td class="form-value"><input id="text" name="temp002.f4"
								class="text-input grid-3" type="text" data-parent=".form-item"
								 data-validation-empty="请输入集成资质"
								data-validation-placement="right" value="${temp002.f4}"/></td>
						</tr>
						<tr class="form-item">
							<th class="form-key"><label for="text">安防资质</label></th>
							<td class="form-value"><input id="text" name="temp002.f5"
								class="text-input grid-3" type="text" data-parent=".form-item"
								 data-validation-empty="请输入安防资质"
								data-validation-placement="right" value="${temp002.f5}"/></td>
						</tr>
						<tr class="form-item">
							<th class="form-key"><label for="text">法人</label></th>
							<td class="form-value"><input id="text" name="temp002.f6"
								class="text-input grid-3" type="text" data-parent=".form-item"
								 data-validation-empty="请输入法人"
								data-validation-placement="right" value="${temp002.f6}"/></td>
						</tr>
						<tr class="form-item">
							<th class="form-key"><label for="text">地址</label></th>
							<td class="form-value"><input id="text" name="temp002.f7"
								class="text-input grid-3" type="text" data-parent=".form-item"
								 data-validation-empty="请输入地址"
								data-validation-placement="right" value="${temp002.f7}"/></td>
						</tr>
						<tr class="form-item">
							<th class="form-key"><label for="text">电话</label></th>
							<td class="form-value"><input id="text" name="temp002.f8"
								class="text-input grid-3" type="text" data-parent=".form-item"
								 data-validation-empty="请输入电话"
								data-validation-placement="right" value="${temp002.f8}"/></td>
						</tr>
						<tr class="form-item">
							<th class="form-key"><label for="text">联系人</label></th>
							<td class="form-value"><input id="text" name="temp002.f9"
								class="text-input grid-3" type="text" data-parent=".form-item"
								 data-validation-empty="请输入联系人"
								data-validation-placement="right" value="${temp002.f9}"/></td>
						</tr>
						<tr class="form-item">
							<th class="form-key"><label for="text">联系方式</label></th>
							<td class="form-value"><input id="text" name="temp002.fa"
								class="text-input grid-3" type="text" data-parent=".form-item"
								 data-validation-empty="请输入联系方式"
								data-validation-placement="right" value="${temp002.fa}"/></td>
						</tr>
						<tr class="form-item">
							<th class="form-key"><label for="text">南通分公司</label></th>
							<td class="form-value"><input id="text" name="temp002.fb"
								class="text-input grid-3" type="text" data-parent=".form-item"
								 data-validation-empty="请输入南通分公司"
								data-validation-placement="right" value="${temp002.fb}"/></td>
						</tr>
					</tbody>
					<tfoot>
						<tr>
							<td></td>
							<td><input class="button" type="submit" value="修改" />&nbsp;&nbsp;<input
								class="button" onclick="window.location.href='listtemp002.jsp'"
								value="取消" type="reset" /></td>
						</tr>
					</tfoot>
				</table>
			</fieldset>
			<input type="hidden" name="temp002.temp002id" value="${temp002.temp002id}">
		</form>
	</div>
	<!-- / .container -->

	<script src="../scripts/lib/require.js"></script>
	<script>
		require([ '../scripts/config' ], function(config) {
			require([ 'app/main/form' ]);
		});
	</script>
</body>
</html>
