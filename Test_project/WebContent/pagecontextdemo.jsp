<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "java.util.Date, java.text.SimpleDateFormat"%>
<%-- html을 header 따로, copyright 따로 붙여서 생성. --%>

<%-- 여기는 header 부분. --%>
<% pageContext.include("header.html"); %>
<%-- include : buffer 필요.  buffer에서 조립해서 유저에게 발송.--%>

<style>
	.box1{
		text-align: center;
		background-color: rgb(216, 215, 215);
	}
	.box2{
		display: inline-block;
		text-align: center;
	}
	
	
	
</style>


<div  class= "box1">
	<div class = "box2">

		회원가입 없이 바스락 이용하기
		<ul>
			<li>이메일 입력칸</li><br/>
			<li>비밀번호 입력칸</li><br/>
			<li>Basrak 시작하기</li><br/>
			<li>회원으로 이용하고 싶으시다면 클릭</li>
		</ul>

	</div>
</div>

<br/>
<div  class= "box1">
	<div class = "box2">

		메인 카테고리 '바스락' 클릭 시, 드롭다운으로 보일 부분<br/>
		바스락 소개
	</div>
</div>




<img src = "images/meat.jpg"/>
<%		
	String pattern = "지금은 GG yyyy년 MM월 dd일 EE aa hh시 mm분 ss초 입니다.";
	SimpleDateFormat sdf = new SimpleDateFormat(pattern);
	String now = sdf.format(new Date());	
%>
	<%=now %>		<%--출력.--%>
	
<%		//footer 부분.
	pageContext.include("copyright.html");
%>