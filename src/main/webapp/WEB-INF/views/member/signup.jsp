<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>signup</title>

<style>
.container {
	display: flex;
	justify-content: center;
	align-items: center;
}
</style>

<my:top></my:top>

</head>
<body>
	<my:navBar current="signup"></my:navBar>

	<my:alert></my:alert>

	<div class="ui center aligned container" id="container">

		<div class="row justify-content-center">
			<div class="col-12 col-md-8 ">

				<div style="margin: 90px 0px 70px 0px;">
					<h1>회원 가입</h1>
				</div>

				<form method="post">
					<div class="ui fluid labeled big input mt-5">
						<div class="ui label">아이디</div>
						<input id="inputId" type="text" class="form-control" name="id" value="${member.id}" 
						style="font-size: 18px; text-align: center;" /> 
						
						<input id="availableIdMessage" class="d-none form-control" type="text" value="사용 가능한 아이디입니다." 
						style="font-size: 18px; text-align: center; color: blue;" readonly/> 
						
						<input id="notAvailableIdMessage" class="d-none form-control" type="text" value="사용 불가능한 아이디입니다." 
						style="font-size: 18px; text-align: center; color: red;" readonly/>
						
						<button id="checkIdBtn" class="ui olive button" type="button" style="font-size: 18px; padding: 11px;">중복확인</button>
					</div>

					<div class="ui fluid labeled big input mt-5">
						<div class="ui label">이름</div>
						<input id="inputName" type="text" class="form-control" name="name" value="${member.name }" style="font-size: 18px; text-align: center;" />
					</div>

					<div class="ui fluid labeled big input mt-5">
						<div class="ui label">비밀번호</div>
						<input id="inputPassword" type="password" class="form-control" name="password" style="font-size: 18px; text-align: center;" />
					</div>
					<div class="ui fluid labeled big input mt-5">
						<div class="ui label">비밀번호 확인</div>
						<input id="inputPasswordCheck" type="password" class="form-control" style="font-size: 18px; text-align: center;" />

						<div id="passwordCheckSuccess" class="d-none inline field">
							<div class="ui left pointing olive basic label" style="font-size: 15px;">비밀번호가 일치합니다.</div>
						</div>

						<div id="passwordCheckFail" class="d-none inline field">
							<div class="ui left pointing red basic label" style="font-size: 15px;">비밀번호가 일치하지 않습니다.</div>
						</div>
					</div>

					<div class="ui fluid labeled big input mt-5">
						<div class="ui label">닉네임</div>
						<input id="inputNickName" type="text" class="form-control" name="nickName" value="${member.nickName }" 
						style="font-size: 18px; text-align: center;" /> 
						
						<input id="availableNickNameMessage" class="d-none form-control" type="text" value="사용 가능한 닉네임입니다." 
						style="font-size: 18px; text-align: center; color: blue;" readonly/> 
						
						<input id="notAvailableNickNameMessage" class="d-none form-control" type="text" value="사용 불가능한 닉네임입니다." 
						style="font-size: 18px; text-align: center; color: red;" readonly/>
						<button id="checkNickNameBtn" class="ui olive button" type="button" style="font-size: 18px; padding: 11px;">중복확인</button>
					</div>

					<div class="ui fluid labeled big input mt-5">
						<div class="ui label">이메일</div>
						<input id="inputEmail" type="email" class="form-control" name="email" value="${member.email }" 
						style="font-size: 18px; text-align: center;" placeholder="영문으로만 입력해주세요"/> 
						
						<input id="availableEmailMessage" class="d-none form-control" type="text" value="사용 가능한 이메일입니다." 
						style="font-size: 18px; text-align: center; color: blue;" readonly/> 
						
						<input id="notAvailableEmailMessage" class="d-none form-control" type="text" value="사용 불가능한 이메일입니다." 
						style="font-size: 18px; text-align: center; color: red;" readonly/>
						
						<button id="checkEmailBtn" class="ui olive button" type="button" style="font-size: 18px; padding: 11px;">중복확인</button>
					</div>

					<div class="ui fluid labeled big input mt-5">
						<div class="ui label">연락처</div>
						<input id="inputPhoneNumber" type="text" class="form-control" name="phoneNumber" value="${member.phoneNumber }" 
						style="font-size: 18px; text-align: center;" /> 
						
						<input id="availablePhoneNumberMessage" class="d-none form-control" type="text" value="사용 가능한 연락처입니다." 
						style="font-size: 18px; text-align: center; color: blue;" readonly/> 
						
						<input id="notAvailablePhoneNumberMessage" class="d-none form-control" type="text" value="사용 불가능한 연락처입니다." 
						style="font-size: 18px; text-align: center; color: red;" readonly/>
						
						<button id="checkPhoneNumberBtn" class="ui olive button" type="button" style="font-size: 18px; padding: 11px;">중복확인</button>
					</div>

					<div class="mb-3">
						<input type="submit" id="signupSubmit" class="ui secondary button" disabled value="가입" style="font-size: 16.5px; margin: 20px;" />
					</div>
				</form>
			</div>
		</div>
	</div>

	<my:bottom></my:bottom>

	<script src="/js/member/signup.js"></script>


</body>
</html>