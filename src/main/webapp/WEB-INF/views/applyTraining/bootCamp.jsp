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

<c:set var="loginId" value="${pageContext.request.getSession(false)==null ? null : pageContext.request.session.getAttribute('id')}"/>

<html>
<head>
    <script type="text/javascript" src="/js/jquery-3.7.1.min.js"></script>
    <link rel="stylesheet" type="text/css" href="<c:url value="/css/reset.css"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="/css/jscdReset.css"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="/css/bootCamp.css"/>">
    <link rel="icon" href="/img/mainlogo.png"/>
    <link rel="apple-touch-icon" href="/img/mainlogo.png"/>
<%--    <script type="text/javascript" src="<c:url value="/js/bootCamp.js"/>"></script>--%>
    <!-- 탭 아이콘 & 글자 지정 -->
    <link rel="icon" href="/img/mainlogo.png"/>
    <link rel="apple-touch-icon" href="/img/mainlogo.png"/>
    <title>정석코딩 | 부트캠프 소개</title>
</head>
<body>

<header>
    <jsp:include page="../header.jsp"/>
</header>

<input type="hidden" id="id" value=${loginId}>
<input type="hidden" id="registCode" value=${lstRegistDto.registCode}>

<div id="btDetailInfo">
    <div>
        <h1>${lstRegistDto.onOff}&nbsp${lstRegistDto.title}</h1>
    </div>
    <hr/>
    <div>
        <input type="button" class="registeBtn" id="registeBtn" value="수강 신청">
        <input type="button" class="modifyBtn" value="공유 하기">
        <input type="button" class="backBtn" id="backBtn" value="둘러 보기">
    </div>
    <hr/>
    <div>
        <div>
            <img src="<c:url value="/img/lectureInfo.png"/>">
            <h1>강의 소개</h1>
        </div>
        <input type="text" class="btinputTxt" value="${lstRegistDto.discription}" readonly>
    </div>
    <hr/>
    <div>
        <div>
            <img src="<c:url value="/img/curri.png"/>">
            <h1>커리큘럼</h1>
        </div>
        <table id="btTable">
            <tr>
                <th>분류</th>
                <th>주차</th>
                <th>학습내용</th>
            </tr>
            <c:forEach var="list" items="${list}">
                <tr>
                    <td>${list.className}</td>
                    <td>${list.category}</td>
                    <td>${list.content}</td>
                </tr>
            </c:forEach>
        </table>
    </div>
    <hr/>
    <div>
        <div>
            <img src="<c:url value="/img/calendar.png"/>">
            <h1>수강 기간</h1>
        </div>
        <input type="text" class="Date" value="${lstRegistDto.startDate}" readonly>&nbsp&nbsp~&nbsp&nbsp
        <input type="text" class="Date" value="${lstRegistDto.endDate}" readonly>
    </div>
    <hr/>
    <div>
        <div>
            <img src="<c:url value="/img/lectureTime.png"/>">
            <h1>강의 시간</h1>
        </div>
        <input type="text" class="btinputTxt" value="${lstRegistDto.startTime} ~ ${lstRegistDto.endTime}" readonly>
    </div>
    <hr/>
    <div>
        <div>
            <img src="<c:url value="/img/instructorInfo.png"/>">
            <h1>강사 정보</h1>
        </div>
        <input type="text" class="btinputTxt" value="${lstRegistDto.name}"readonly>
    </div>
    <hr/>
    <div>
        <div>
            <img src="<c:url value="/img/book.png"/>">
            <h1>교재(각자구입)</h1>
        </div>
        <input type="text" class="btinputTxt" value="${lstRegistDto.book}" readonly>
    </div>
    <hr/>
    <div>
        <div>
            <img src="<c:url value="/img/materials.png"/>">
            <h1>준비물</h1>
        </div>
        <input type="text" class="btinputTxt" value="${lstRegistDto.material}" readonly>
    </div>
    <hr/>
    <div>
        <div>
            <img src="<c:url value="/img/lastPrice.png"/>">
            <h1>비용</h1>
        </div>
        <input type="text" class="btinputTxt" value="${lstRegistDto.lastPrice}" readonly>
        <h2>${lstRegistDto.discount} 할인가</h2>
        <h3>*카드 결제, 계좌이체 가능</h3>
    </div>
    <hr/>
    <div>
        <div>
            <img src="<c:url value="/img/addr.png"/>">
            <h1>강의 장소</h1>
        </div>
        <input type="text" class="btinputTxt" value="${lstRegistDto.location}" readonly>
    </div>
</div>

<footer>
    <jsp:include page="../footer.jsp"/>
</footer>

<script>
    $(document).ready(function() {

        $("#registeBtn").on("click", function() {
            const loginId = $("#id").val();
            const registCode = $("#registCode").val();
            console.log("loginId = " + loginId);
            console.log("registCode = " + registCode);

            // 로그인 상태가 아니라면
            if(loginId == "")
                if(confirm('로그인이 필요한 서비스입니다.\n로그인 하시겠습니까?'))
                    location.href='http://localhost:8080/member/login';

            // 로그인 상태라면
            if(loginId != ""){
                // 중복 강의 신청인지 확인
                $.ajax({
                    type:'get',
                    url: '/btTraining/duplicationChk?loginId=' + loginId + '&registCode=' + registCode,
                    success: function(cnt){
                        console.log(cnt);
                        if(cnt != 0){
                            alert('이미 신청한 강의입니다.')
                        }else {
                            location.href="<c:url value='/btTraining/btApplication?registCode=${lstRegistDto.registCode}&title=${lstRegistDto.title}&lastPrice=${lstRegistDto.lastPrice}'/>";
                        }
                    },
                    error : ()=>{
                        alert("서버 요청 실패\n관리자에게 문의해주세요.")
                    }
                }); // end ajax
            }; // end if
        }); // end registeBtn

        $("#backBtn").on("click", function() {
            location.href="<c:url value='/btTraining/list'/>";
        });
    });
</script>
</body>
</html>
