<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
<link rel="stylesheet" href="../scripts/lib/jscal2/css/jscal2.css" />
<link rel="stylesheet" href="../scripts/lib/jscal2/css/win2k/win2k.css" />
<link rel="stylesheet" href="../scripts/lib/chosen/chosen.css" />
<script>
	(function() {
		var html = document.getElementsByTagName('html')[0];
		html.className = html.className.replace('no-js', 'js');
	})();
</script>
</head>
<body>
	${message}
	<c:if test="${empty requestScope.pagebean}">
		<c:redirect url="listTemp002Prepare_cit" />
	</c:if>
	<div class="container">
		<h2>教案列表</h2>

		<form class="panel panel-ctrl" action="searchTemp002_cit">
			<fieldset>
				<label>输入企业名称：</label><input name="temp002.f1"
					class="text-input grid-2" type="text"/>
					<label>输入所在省份：</label><input name="temp002.f2"
					class="text-input grid-2" type="text"/>
					<label>输入资质：</label><input name="temp002.f3"
					class="text-input grid-2" type="text"/>
				<button class="button js-loading-trigger" type="submit">查询</button>
			</fieldset>
		</form>
		<div class="clearfix">
			<table class="table table-fluid">
				<caption>住建部资质列表</caption>
				<thead data-spy="fixedHead" data-wrapper="table"
					data-wrapper-class="table" data-target="#tbody-1">
					<tr>
						<th >序号</th>
						<th width="10%">企业名称</th>
						<th width="10%">所在省份</th>
						<th width="20%">资质范围</th>
						<th >证书号</th>
						<th >有效期至</th>
						<th >法人</th>
						<th >地址</th>
						<th >电话</th>
						<th >联系人</th>
						<th >联系方式</th>
						<th >注册地址</th>
						<th>操作</th>
					</tr>
				</thead>
				<tbody id="tbody-1" class="typo-center">
					<c:forEach var="temp002" items="${request.pagebean.list}">
						<tr>
							<td>${temp002.temp002id}</td>
							<td>${temp002.f1}</td>
							<td>${temp002.f2}</td>
							<td>${temp002.f3}</td>
							<td>${temp002.f4}</td>
							<td>${temp002.f5}</td>
							<td>${temp002.f6}</td>
							<td>${temp002.f7}</td>
							<td>${temp002.f8}</td>
							<td>${temp002.f9}</td>
							<td>${temp002.fa}</td>
							<td>${temp002.fb}</td>
							<td><a
								href="removeTemp002_cit?temp002.temp002id=${temp002.temp002id}&pageNo=${pagebean.pageNo}"
								class="typo-danger" onclick="return confirm('确定删除吗？')">删除</a><span class="rule-inline">|</span> <a
								href="editTemp002Prepare_cit?temp002.temp002id=${temp002.temp002id}">查看详情</a>
						</tr>
					</c:forEach>
				</tbody>
				<tfoot>
					<tr>
						<td class="typo-right" colspan="12">${pagebean.pageToolBar }</td>
					</tr>
				</tfoot>
			</table>
		</div>
	</div>
	<!-- / .container -->

	<div class="loading" style="display: none;">正在加载...</div>
	<!-- / #loading -->

	<script src="../scripts/lib/require.js"></script>
	<script>
		require([ '../scripts/config' ], function(config) {
			require([ 'app/main/panel' ]);
		});
	</script>
</body>
</html>
