<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>실패</title>
	</head>
	<body>
		<h1>실패</h1>
		<script>
			const result = '${msg}';
			const url = '${url}';
			alert(result);
			location.href = url;
		</script>
	</body>
</html>