<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body class="container-flud">
	<div class="row">
		
		
		<div class="col-sm-10">
			<!-- main content -->
			<h1>GoodsCategory LIST</h1>
			
			<table class="table table-striped">
				<tr>
					<td>goodsNo</td>
					<td>categoryNo</td>
					<td>updateDate</td>
					<td>createDate</td>		
					<td>삭제</td>		
				</tr>
				
				
				<c:forEach var ="s" items="${goodsCategoryList}">
					<tr>
						<td>${s.goodsNo}</td>
						<td>${s.categoryNo}</td>
						<td>${s.updateDate}</td>
						<td>${s.createDate}</td>
						<td><a href="${pageContext.request.contextPath}/staff/removeGoodsCategory?goodsNo=${s.goodsNo}">상품카테고리 삭제</a></td>
					</tr>
				</c:forEach>
			</table>
			<td><a href="${pageContext.request.contextPath}/staff/goodsCategoryAdd">상품 카테고리 추가</a></td>
		</div>
		
	</div>
</body>
</html>


