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
		<c:redirect url="listTemp001Prepare_poi" />
	</c:if>
	<div class="container">
		<h2>教案列表</h2>

		<form class="panel panel-ctrl" action="searchTemp001_poi">
			<fieldset>
				<label>输入年级：</label><input name="temp001.f1"
					class="text-input grid-2" type="text"/>
					<label>输入班级：</label><input name="temp001.f2"
					class="text-input grid-2" type="text"/>
				<button class="button js-loading-trigger" type="submit">查询</button>
			</fieldset>
		</form>
		<div class="clearfix">
			<table class="table table-fluid">
				<caption>教学计划列表</caption>
				<thead data-spy="fixedHead" data-wrapper="table"
					data-wrapper-class="table" data-target="#tbody-1">
					<tr>
						<th width="20%">年級</th>
						<th width="20%">班级</th>
						<th width="20%">执教者</th>
						<th width="20%">更新时间</th>
						<th>操作</th>
					</tr>
				</thead>
				<tbody id="tbody-1" class="typo-center">
					<c:forEach var="temp001" items="${request.pagebean.list}">
						<tr>
							<td>${temp001.f1}</td>
							<td>${temp001.f2}</td>
							<td>${temp001.f5}</td>
							<td><fmt:formatDate value="${temp001.date}"
						pattern="yyyy-MM-dd HH:mm:ss" /></td>
							<td><a
								href="removeTemp001_poi?temp001.temp001id=${temp001.temp001id}&pageNo=${pagebean.pageNo}"
								class="typo-danger" onclick="return confirm('确定删除吗？')">删除</a><span class="rule-inline">|</span> <a
								href="editTemp001Prepare_poi?temp001.temp001id=${temp001.temp001id}">查看详情</a>
								<span class="rule-inline">|</span> <a
								href="getTemp001Doc_poi?temp001.temp001id=${temp001.temp001id}">导出word</a></td>
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
