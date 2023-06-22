<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<style>
.qna {
	width: 350px;
	margin-left: 150px;
}
.no{
	margin:0px 0px 20px 0px;
}
</style>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>QnAForWhat</title>
<my:top />
</head>
<body>
	<my:navBar current="qnaForWhat"></my:navBar>
	<my:alert></my:alert>
	
	<div class="container-lg">
		<div class="row justify-content-center">
			<div class="col-12 col-md-8 col-lg-6">
				<a href="/qna"><img class="qna" src="/images/qnaDetailLogo.png" alt="" /></a>
				<div class="d-flex">
					<div class="no">
						<h1>
							<span id="qnaWriter">${qna.writer }</span> 
							님의 질문 <span class="" id="qnaIdText">${qna.id }</span>
						</h1>
					</div>
				</div>
				<div class="mb-3">
					<label for="" class="form-label">제목</label> <input type="text" class="form-control" value="${qna.title }" readonly />
				</div>
				<div class="mb-3">
					<label for="" class="form-label">본문</label>
					<textarea class="form-control" readonly rows="10">${qna.body }</textarea>
				</div>
				<div class="mb-3">
					<label for="" class="form-label">작성자</label> <input type="text" class="form-control" value="${qna.writer }" readonly />
				</div>
				<div class="mb-3">
					<label for="" class="form-label">작성일시</label> <input type="text" readonly class="form-control" value="${qna.inserted }" />
				</div>
				<sec:authorize access="hasAuthority('admin') or (isAuthenticated() and (authentication.name eq #qna.writer))">
					<div>
						<a class="btn btn-secondary" href="/qna/modify/${qna.id }">수정</a>
						<button id="removeButton" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#deleteConfirmModal">삭제</button>
					</div>
				</sec:authorize>
				
				<div id="commentContainer">
					<div id="addQnACommentContainer"> 
						<textarea id="qnaCommentTextArea" ></textarea>
						<button id="qnaCommentBtn">전송</button>
					</div>
					<div id="qnaCommentListContainer">
						<div>댓글 1 내용 : 누가 : 언제</div>
					</div>
				
				
				</div>
			</div>
		</div>
	</div>

	<sec:authorize access="hasAuthority('admin') or (isAuthenticated() and (authentication.name eq #qna.writer))">


		<div class="d-none">
			<form action="/qna/remove" method="post" id="removeForm">
				<input type="text" name="id" value="${qna.id }" />
			</form>
		</div>
	
		<!-- Modal -->
		<div class="modal fade" id="deleteConfirmModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h1 class="modal-title fs-5" id="exampleModalLabel">삭제 확인</h1>
						<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
					</div>
					<div class="modal-body">삭제 하시겠습니까?</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
						<button type="submit" class="btn btn-danger" form="removeForm">삭제</button>
					</div>
				</div>
			</div>
		</div>
	</sec:authorize>
	
	<my:bottom />
	<script src="/js/qna/qnaComment.js"></script>
</body>
</html>