<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<c:set var="loginId"
       value="${pageContext.request.getSession(false)==null ? null : pageContext.request.session.getAttribute('id')}"/>
<c:set var="loginPath" value="${loginId == null  ?  '/member/login' : '/member/logout'}"/>
<c:set var="loginStatus" value="${loginId== null ? '로그인' : '로그아웃'}"/>
<c:set var="memberPath" value="${loginId == null  ?  '/member/signup' : '/member/memberEdit'}"/>
<c:set var="memberStatus" value="${loginId== null ? '회원가입' : '마이 페이지'}"/>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="<c:url value="/css/reset.css"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="/css/jscdReset.css"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="/css/header.css"/>">
    <script type="text/javascript" src="<c:url value="/js/header.js"/>"></script>

    <%--폰트어썸 라이브러리 불러오기--%>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
          integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
</head>

<body>
<div id="mainHeader">
    <nav>
        <div id="jscdNav">
            <div id="homeImg">
                <a href="<c:url value='/'/>"><img src="<c:url value="/img/mainlogo.png"/>"></a>
                <a href="<c:url value='/'/>"><p>정석코딩</p></a>
            </div>
            <ul>
                <li id="about">
                    <p>ABOUT</p>
                    <ul class="Menu">
                        <li><a href="/member/introTeacher">
                            <i class="fa-solid fa-crown" style="color: #4a4a4a;"></i>
                            &nbsp;&nbsp;원장님 소개</a></li>
                        <li><a href="/member/jscdIntro">
                            <i class="fa-solid fa-landmark" style="color: #4a4a4a;"></i>
                            &nbsp;&nbsp;정석코딩 소개</a></li>
                        <li><a href="/member/jscdRoad">
                            <i class="fa-solid fa-map-location-dot" style="color: #4a4a4a;"></i>
                            &nbsp;&nbsp;찾아오시는 길</a></li>
                    </ul>
                </li>
                <li id="apply">
                    <p>교육신청</p>
                    <ul class="Menu">
                        <li><a href="<c:url value="/btTraining/list"/>">
                            <i class="fa-solid fa-rocket" style="color: #4a4a4a;"></i>
                            &nbsp;&nbsp;부트캠프 신청</a></li>
                        <li><a href="<c:url value="/smTraining/list"/>">
                            <i class="fa-solid fa-graduation-cap" style="color: #4a4a4a;"></i>
                            &nbsp;&nbsp;세미나 신청</a></li>
                    </ul>
                </li>
                <li id="community">
                    <p>커뮤니티</p>
                    <ul class="Menu">
                        <li><a href="<c:url value="/board/user/list"/>"><i class="fa-solid fa-bullhorn"
                                                                           style="color: #4a4a4a;"></i>
                            &nbsp;&nbsp;공지사항</a></li>
                        <li><a href="${path}/board/qna/allqnaList">
                            <i class="fa-solid fa-comment-dots" style="color: #4a4a4a;"></i>
                            &nbsp;&nbsp;질문&답변</a></li>
                        <li><a href="${path}/board/faq">
                            <i class="fa-solid fa-circle-question" style="color: #4a4a4a;"></i>
                            &nbsp;&nbsp;FAQ</a></li>
                    </ul>
                </li>
                <li id="manage">
                    <p>학사관리</p>
                    <ul class="Menu">
                        <li><a href="<c:url value="/board/userStd/list"/>">
                            <i class="fa-solid fa-bullhorn" style="color: #4a4a4a;"></i>
                            &nbsp;&nbsp;공지사항</a></li>
                        <li><a href="<c:url value="/board/qna/stdQnaList"/>">
                            <i class="fa-solid fa-comment-dots" style="color: #4a4a4a;"></i>
                            &nbsp;&nbsp;질문&답변</a></li>
                        <li><a href="<c:url value="/locker/mebrList"/>">
                            <i class="fa-solid fa-city" style="color: #4a4a4a;"></i>
                            &nbsp;&nbsp;사물함</a></li>
                    </ul>
                </li>
            </ul>
        </div>
        <%--        <div id="searchBox">--%>
        <%--            <img src="<c:url value="/img/readGlasses.png"/>">--%>
        <%--            <input type="text" placeholder="검색어를 입력해주세요.">--%>
        <%--        </div>--%>
        <div id="search_home">
            <input id="search_home_content" type="search" placeholder="검색어를 입력하세요">
            <i class="fa-solid fa-magnifying-glass fa-bounce" style="color: #0185fe;"></i>
        </div>
        <div id="memberBox">
            <input type="button" value="${loginStatus}" class="cancleBtn"
                   onClick="location.href='<c:url value='${loginPath}'/>'">
            <input type="button" value="${memberStatus}" class="registeBtn"
                   onClick="location.href='<c:url value='${memberPath}'/>'">
        </div>
    </nav>
</div>
</body>
</html>
