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
		<form class="form" action="addLink_tim" method="post"
			enctype="multipart/form-data">
			<fieldset>
				<legend>添加爬虫</legend>
				<table class="table table-form table-fluid">
					<tbody>
						<tr class="form-item">
							<th class="form-key"><label for="text">网址</label></th>
							<td class="form-value"><input id="text" name="link.link"
								class="text-input grid-3" type="text" data-parent=".form-item"
								required data-validation-empty="请输入网址"
								data-validation-placement="right" /></td>
						</tr>
						<tr class="form-item">
							<th class="form-key"><label for="text">规则</label></th>
							<td class="form-value"><input id="text" name="link.regex"
								class="text-input grid-3" type="text" data-parent=".form-item"
								required data-validation-empty="请输入规则"
								data-validation-placement="right" /></td>
						</tr>
					</tbody>
					<tfoot>
						<tr>
							<td></td>
							<td><input class="button" type="submit" value="添加" />&nbsp;&nbsp;<input
								class="button" value="取消" type="reset" /></td>
						</tr>
					</tfoot>
				</table>
			</fieldset>
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
