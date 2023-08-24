<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>공지사항 목록 조회</title>
		<style>
			table{
				width : 800px;
				border : 1px solid black;
				border-collapse : collapse;
			}
			th, td {
				border : 1px solid black;
			}
			thead{
				background-color: #ffcb3d;
			}
		</style>
	</head>
	<body>
		<h1>공지사항 목록</h1>
		<table>
			<thead>
				<tr>
					<th>글번호</th>
					<th>공지번호</th>
					<th>글제목</th>
					<th>글쓴이</th>
					<th>작성일</th>
					<th>조회수</th>
				</tr>
			</thead>
			<tbody>
			
				<c:forEach var="notice" items="${nList }" varStatus="i">
					<tr align="center">
						<td>${i.count }</td>
						<td>${notice.noticeNo }</td>
						<td><a href="/notice/detail.do?noticeNo=${notice.noticeNo }">${notice.noticeSubject }</a></td>
						<td>${notice.noticeWriter }</td>
						<td>
							<fmt:formatDate pattern="yyyy-MM-dd" value="${notice.noticeDate }"/>
						</td>
						<td>${notice.viewCount }</td>
					</tr>
				</c:forEach>

			</tbody>
			
			<tfoot>
				<tr align="center">
					<td colspan="6">
						<c:forEach begin="${pInfo.startNavi }" end="${pInfo.endNavi }" var="p">
							<c:url var="pageUrl" value="/notice/noticeList.do">
								<c:param name="page" value="${p }"></c:param>
							</c:url>
							<a href="${pageUrl }">${p }</a>&nbsp;
						</c:forEach>
					</td>
				</tr>
				<tr>
					<td colspan="5" align="center">
						<form action="/notice/search.do" method="get">
							<select name="searchCondition">
								<option value="all">전체</option>
								<option value="writer">작성자</option>
								<option value="title">제목</option>
								<option value="content">내용</option>
							</select>
							<input type="text" name="searchKeyword" placeholder="검색어를 입력하세요">
							<input type="submit" value="검색">
						</form>
					</td>
					<td align="center">
						<button type="button" onclick="insertNotice();">글쓰기</button>
					</td>
				</tr>
			</tfoot>
		</table>
		<script>
			function insertNotice () {
				location.href="/notice/insertNotice.do";
			}
		</script>
	</body>
</html>