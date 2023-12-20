<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Home</title>
	<script type="text/javascript" src="/js/jquery-3.7.1.min.js"></script>
	<link rel="stylesheet" type="text/css" href="<c:url value="/css/reset.css"/>">
	<link rel="stylesheet" type="text/css" href="<c:url value="/css/home.css"/>">
	<script type="text/javascript" src="<c:url value="/js/home.js"/>"></script>
</head>
<body>
<header>
	<jsp:include page="header.jsp"/>
</header>
<div id="content">
	<main>
		<%--상단 슬라이드--%>
		<div class="slideshowContainer">

			<!-- Full-width images with number and caption text -->
			<div class="mySlides fade">
				<img src="<c:url value="/img/homeTeacher.png"/>" style="width:100%;  object-fit: cover;">
				<div class="text">JUNGSUK_CODING</div>
			</div>

			<div class="mySlides fade">
				<img src="<c:url value="/img/homeTeacher01.png"/>" style="width:100%;  object-fit: cover;">
				<div class="text">JUNGSUK_CODING</div>
			</div>

			<div class="mySlides fade">
				<img src="<c:url value="/img/homeTeacher02.png"/>" style="width:100%;  object-fit: cover;">
				<div class="text">JUNGSUK_CODING</div>
			</div>
			<!-- Next and previous buttons -->
			<a class="prev" onclick="moveSlides(-1)">&#10094;</a>
			<a class="next" onclick="moveSlides(1)">&#10095;</a>
		</div>
		<br/>

		<!-- The dots/circles -->
		<div style="text-align:center">
			<span class="dot" onclick="currentSlide(0)"></span>
			<span class="dot" onclick="currentSlide(1)"></span>
			<span class="dot" onclick="currentSlide(2)"></span>
		</div>
		<%-- lecture		--%>
		<div class="lectureContainer">
			<div id="lectureTxt">
				<span>
					<h1>남궁성의 정석코딩은</h1>
				</span>
				<span class="txt02">
					<h1>책임감으로 가르칠 확실한</h1>&nbsp
					<h2>'강사'</h2>
					<h1>가 있습니다.</h1>
				</span>
			</div>

			<div class="lectureBtn">
				<input type="button" class="cancleBtn" id="seminarBtn" value="세미나" onclick="seminarSelect();">
				<input type="button"  class="cancleBtn" id="bootCampBtn" value="정석코딩" onclick="bootCampSelect();">
			</div>
			<div id="lectureWrap">
			</div>
<%--			231220 유재경 이쪽은 필요없어지면 정리하겠습니다.--%>
<%--			<c:forEach var="seminarList" items="${seminarList}">--%>
<%--				<div id="lectureWrap">--%>
<%--					<div>--%>
<%--						<ul>--%>
<%--							<li>객체지향 설계 기초 정복 ! -> ${seminarList.discription}</li>--%>
<%--							<li>객체 지향 디자인 패턴 -> ${seminarList.title}</li>--%>
<%--							<a href="<c:url value="/smTraining/read?registCode=${seminarList.registCode}"/>"><li><input type="button" class="registeBtn" value="신청하기"></li></a>--%>
<%--						</ul>--%>
<%--						<img src="<c:url value="/img/code.png"/>">--%>
<%--					</div>--%>
<%--&lt;%&ndash;					<div>&ndash;%&gt;--%>
<%--&lt;%&ndash;						<ul>&ndash;%&gt;--%>
<%--&lt;%&ndash;							<li>데이터베이스 설계 마스터 -> ${seminarList.discription}</li>&ndash;%&gt;--%>
<%--&lt;%&ndash;							<li>DB 모델링 기본 ->  ${seminarList.title}</li>&ndash;%&gt;--%>
<%--&lt;%&ndash;							<a href ="<c:url value="/smTraining/read?registCode=${seminarList.registCode}"/>"><li><input type="button" class="registeBtn" value="신청하기"></li></a>&ndash;%&gt;--%>
<%--&lt;%&ndash;						</ul>&ndash;%&gt;--%>
<%--&lt;%&ndash;						<img src="<c:url value="/img/database.png"/>">&ndash;%&gt;--%>
<%--&lt;%&ndash;					</div>&ndash;%&gt;--%>
<%--				</div>--%>
<%--			</c:forEach>--%>
<%--			<c:forEach var="bootCampList" items="${bootCampList}">--%>
<%--				<div id="lectureWrap">--%>
<%--					<div>--%>
<%--						<ul>--%>
<%--							<li>객체지향 설계 기초 정복 ! -> ${bootCampList.discription}</li>--%>
<%--							<li>객체 지향 디자인 패턴 -> ${bootCampList.title}</li>--%>
<%--							<a href="<c:url value="/btTraining/read?registCode=${bootCampList.registCode}"/>"><li><input type="button" class="registeBtn" value="신청하기"></li></a>--%>
<%--						</ul>--%>
<%--						<img src="<c:url value="/img/rocket.png"/>">--%>
<%--					</div>--%>
<%--						&lt;%&ndash;					<div>&ndash;%&gt;--%>
<%--						&lt;%&ndash;						<ul>&ndash;%&gt;--%>
<%--						&lt;%&ndash;							<li>데이터베이스 설계 마스터 -> ${seminarList.discription}</li>&ndash;%&gt;--%>
<%--						&lt;%&ndash;							<li>DB 모델링 기본 ->  ${seminarList.title}</li>&ndash;%&gt;--%>
<%--						&lt;%&ndash;							<a href ="<c:url value="/smTraining/read?registCode=${seminarList.registCode}"/>"><li><input type="button" class="registeBtn" value="신청하기"></li></a>&ndash;%&gt;--%>
<%--						&lt;%&ndash;						</ul>&ndash;%&gt;--%>
<%--						&lt;%&ndash;						<img src="<c:url value="/img/database.png"/>">&ndash;%&gt;--%>
<%--						&lt;%&ndash;					</div>&ndash;%&gt;--%>
<%--				</div>--%>
<%--			</c:forEach>--%>
		</div>
<%--			lecture 끝--%>

		<div id="keyElementWrap">
			<div id="keyElement">
				<img src="<c:url value="/img/homeSquare.png"/>"/>
				<ul>
					<li>강사</li>
					<li>|</li>
					<li>학생</li>
					<li>|</li>
					<li>환경</li>
				</ul>
			</div>
			<div id="keyElementTxt">
				<span>
					<h1>코딩교육의</h1>&nbsp
					<h2>3가지 핵심 요소</h2>
					<h1>를 모두 갖춘</h1>
				</span>
				<span>
					<h1>정석코딩 부트캠프에서 한번의 교육으로 취업하세요</h1>
				</span>
					<br/>
				<span>
					<h6>커리큘럼은 따라해도 '강의'는 흉내낼 수 없습니다.</h6>
				</span>
			</div>
			<br/>
		</div>

<%--하단 슬라이드--%>
			<div class="slideshowContainer01">

				<!-- Full-width images with number and caption text -->
				<div class="mySlides01 fade">
					<img src="<c:url value="/img/lectureRoom.png"/>" style="width:100%; object-fit: cover;">
				</div>

				<div class="mySlides01 fade">
					<img src="<c:url value="/img/projectRoom.png"/>" style="width:100%; object-fit: cover;">
				</div>

				<div class="mySlides01 fade">
					<img src="<c:url value="/img/deskAndChair.png"/>" style="width:100%; object-fit: cover;">
				</div>

				<div class="mySlides01 fade">
					<img src="<c:url value="/img/locker.png"/>" style="width:100%; object-fit: cover;">
				</div>

				<div class="mySlides01 fade">
					<img src="<c:url value="/img/restArea.png"/>" style="width:100%; object-fit: cover;">
				</div>

				<!-- Next and previous buttons -->
				<a class="prev01" onclick="moveSlides01(-1)">&#10094;</a>
				<a class="next01" onclick="moveSlides01(1)">&#10095;</a>
			</div>
			<br/>

			<!-- The dots/circles -->
			<div style="text-align:center">
				<span class="dot01" onclick="currentSlide01(0)"></span>
				<span class="dot01" onclick="currentSlide01(1)"></span>
				<span class="dot01" onclick="currentSlide01(2)"></span>
				<span class="dot01" onclick="currentSlide01(3)"></span>
				<span class="dot01" onclick="currentSlide01(4)"></span>
			</div>
<%--하단 슬라이드 끝--%>
<%--유튜브--%>
		<div id="youtubeBox">
			<div>
				<ul>
					<li><a href="https://www.youtube.com/watch?v=6qcTq0HLhP8&t=273s"><img src="<c:url value="/img/youtube03.png"/>"></a></li>
					<li>정석코딩 2기 1팀 프로젝트 발표</li>
					<li>2개월 동안 누구의 도움도 받지 않고 학생들 스스로 열심히 만든 갓벽한 프로젝트 발표 영상</li>
				</ul>
			</div>
			<div>
				<ul>
					<li><a href="https://www.youtube.com/watch?v=dVh9y144_lw&t=2s"><img src="<c:url value="/img/youtube02.png"/>"></a></li>
					<li>DB 설계 1:1 리뷰</li>
					<li>1:1 꼼꼼한 코드 리뷰와 동시에 스스로 DB 설계하는 능력을 키워주기 위한 원장님의 고군분투</li>
				</ul>
			</div>
			<div>
				<ul>
					<li><a href="https://www.youtube.com/watch?v=4-szaYqeP9k&t=1468s"><img src="<c:url value="/img/youtube01.png"/>"></a></li>
					<li>코포자를 위한 코딩 공부법</li>
					<li>예제 공부법, 연습문제 푸는 방법 등 남궁성 원장님의 꿀팁 대방출</li>
				</ul>
			</div>
		</div>
	</main>
</div>
<footer>
	<jsp:include page="footer.jsp"/>
</footer>
</body>
</html>
