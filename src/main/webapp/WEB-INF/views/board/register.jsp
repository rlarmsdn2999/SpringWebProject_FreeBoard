<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@include file="../includes/header.jsp"%>
<main>
	<div class="container-fluid px-4">
		<h1 class="mt-4">게시판 등록 페이지</h1>

		<div class="card mb-4">
			<div class="card-header">
				<i class="fas fa-table me-1"></i> 새로운 게시글 작성
			</div>
			<div class="card-body">
				<form role="form" action="/board/register" method="post">
					<div class="form-group">
						<label>제목</label> <input class="form-control" name="title">
					</div>
					<div class="form-group">
						<label>내용</label>
						<textarea class="form-control" rows="5" name="content"></textarea>
					</div>
					<div class="form-group">
						<label>작성자</label> <input class="form-control" name="writer">
					</div>
					<button type="submit" class="btn btn-default">등록</button>
					<button type="reset" class="btn btn-default">리셋</button>
				</form>
			</div>
		</div>
	</div>
</main>
<%@include file="../includes/footer.jsp" %>
