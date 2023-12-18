<%--
  Created by IntelliJ IDEA.
  User: george
  Date: 12/9/23
  Time: 6:45 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="<c:url value="/css/reset.css"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="/css/jscdReset.css"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="/css/bootCamp.css"/>">
    <title>BootCampList</title>
</head>
<body>
<header>
    <jsp:include page="../header.jsp"/>
</header>
<div>
    <div id="BootCampBox">
        <header>
            <p>당신이 정석코딩 오프라인 BootCamp를 들어야 하는 이유!</p>
            <ul id="BootCampList">
                <li>
                    <h1>1</h1>
                    <p>퀄리티 높은 강의</p>
                </li>
                <li>
                    <h1>2</h1>
                    <p>일타 강사의 1:1 리뷰</p>
                </li>
                <li>
                    <h1>3</h1>
                    <p>몰입감 넘치는 학습 분위기</p>
                </li>
            </ul>
        </header>
        <div id="BootCampNav">
            <ul>
                <li><a href="#">전체 BootCamp</a></li>
                <li>|</li>
                <li><a href="#">진행 예정 BootCamp</a></li>
                <li>|</li>
                <li><a href="#">진행 중인 BootCamp</a></li>
            </ul>
        </div>
        <div id="btProcess">
            <h1>BootCamp Register Process</h1>
            <div id="imgBox">
                <div>
                    <img src="<c:url value="/img/bootCampRegist.png"/>">
                    <p>부트캠프 신청</p>
                    <p>(선착순)</p>
                </div>
                <div>
                    <img src="<c:url value="/img/arrow.png"/>">
                </div>
                <div>
                    <img src="<c:url value="/img/checkMail.png"/>">
                    <p>확인 메일 수신</p>
                </div>
                <div>
                    <img src="<c:url value="/img/arrow.png"/>">
                </div>
                <div>
                    <img src="<c:url value="/img/applyComplete.png"/>">
                    <p>신청 완료</p>
                </div>
            </div>
        </div>
    </div>
    <div id="btApplyList">
        <hr/>
        <c:forEach var="list" items="${list}">
        <div id="btApplyBox">
            <ul>
                <li class="applyTxt">${list.startDate} 모집중</li>
                <li class="btTitle">BootCamp</li>
                <li class="btTitle">${list.title}</li>
                <li class="applyTxt">담당 강사 ${list.title}</li>
                <li class="applyTxt">${list.startDate}</li>
                <li class="applyTxt2">${list.lastPrice} / Month</li>
                <li class="applyTxt">${list.location}</li>
            </ul>
            <button type="button"><a href="<c:url value='/btTraining/read?registCode=${list.registCode}&courseCode=${list.courseCode}'/>">수강 신청</a></button>
        </div>
        </c:forEach>
    </div>
</div>
<footer>
    <jsp:include page="../footer.jsp"/>
</footer>


</body>
</html>
