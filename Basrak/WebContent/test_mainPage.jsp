<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<% pageContext.include("header.html"); %>
	<link rel = "stylesheet"  href = "css/bootstrap.css">
	<link  rel = "stylesheet"  href = "css/style.css">
	
</head>
<body>

	<!-- 반응형 웹을 위한 div 2개. -->
	<div class="container">
		<div class="row">
	
			<div class = "box1">
	
			<!--  회원가입 입력 폼. -->
			<form class="form-inline">
				<div class="form-group">
				
					<div class="input-group">
						<div class="input-group-addon">사용자 이미지</div>
						<input type="email" class="form-control" id="exampleInputAmount" placeholder="aaa@basrak.com">
					</div>
					<br/>
					<div class="input-group">
						<div class="input-group-addon">자물쇠 이미지</div>
						<input type="password" class="form-control" id="exampleInputAmount" placeholder="비밀번호 입력">
					</div>
					<br/>
				</div>
				
				<button type="submit" class="btn btn-primary">Transfer cash</button>
				<br/>
				<span>회원으로 이용하고 싶으시다면 클릭</span>
			</form>
	
			</div>
			
			<br/>
			<!--  바스락 클릭 시, 드롭다운으로 보일 부분.  -->
			<div class = "box1">
				바스락 소개
				<br/>바스락은요~
			
			</div>
			
			
		</div>
	</div>
	


</body>
</html>