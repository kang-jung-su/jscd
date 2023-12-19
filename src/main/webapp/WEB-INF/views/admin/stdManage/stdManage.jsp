<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<html>
<head>
    <title>학생 상세보기</title>
    <link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans+KR&family=Noto+Serif+KR:wght@900&display=swap"
          rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="<c:url value="/css/reset.css"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="/css/home.css"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="/css/adminInfo.css"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="/css/jscdReset.css"/>">
    <script src="https://code.jquery.com/jquery-1.11.3.js"></script>
</head>
<body>
<script>
    let msg = "${param.msg}";
    if (msg == "READ_ERR") alert("정보를 가져오는데 실패했습니다. 다시 시도해 주세요.");
    if (msg == "DEL_ERR") alert("삭제에 실패했습니다. 다시 시도해 주세요.");
    if (msg == "MOD_OK") alert("성공적으로 수정되었습니다.");
    if (msg == "MOD_ERR") alert("수정에 실패했습니다.다시 시도해 주세요.");

</script>

<header>
    <jsp:include page="../adminHeader.jsp"/>
</header>

<div id="infoDetailBox">

    <h2 id="infoTitle">학생 상세보기</h2>

    <label style="margin-right: 3px;">회원 번호</label>
    <input type="text" class="infoInputBox" readonly name="mebrNo" id="mebrNo" value="${stdDto.mebrNo}"><br>
    <label style="margin-right: 15px;">아이디</label>
    <input type="text" class="infoInputBox" readonly value="${stdDto.id}"><br>
    <label style="margin-right: 25px;">이름</label>
    <input type="text" class="infoInputBox" readonly value="${stdDto.name}"><br>
    <label>생년월일</label>
    <input type="text" class="infoInputBox" readonly
           value="<fmt:formatDate value="${stdDto.birth}" pattern="yyyy-MM-dd" type="date"/>"><br>
    <label>휴대전화</label>
    <input type="text" class="infoInputBox" readonly value="${stdDto.phone}"><br>
    <label style="margin-right: 25px;">기수</label>
    <input type="text" class="infoInputBox" name="gisu" id="gisu" readonly value="${stdDto.gisu}"><br>
    <label style="margin-right: 25px;">상태</label>
    <select name="status" id="status" class="modifySelect">
        <c:if test="${stdDto.status eq '수강예정'}">
            <option value="1">수강예정</option>
        </c:if>
        <c:if test="${stdDto.status eq '수강중'}">
            <option value="2">수강중</option>
        </c:if>
        <c:if test="${stdDto.status eq '수료'}">
            <option value="3">수료</option>
        </c:if>
    </select><br>
    </select><br>
    <label style="margin-right: 25px;">계좌</label>
    <input type="text" class="infoInputBox" readonly value="${stdDto.acct}"><br>
    <label style="margin-right: 15px;">가입일</label>
    <input type="text" class="infoInputBox" readonly
           value="<fmt:formatDate value="${stdDto.regDate}" pattern="yyyy-MM-dd" type="date"/>"><br>
    <label style="margin-right: 25px;">비고</label>
    <input type="text" class="infoInputBox" name="etc" id="etc" readonly value="${stdDto.etc}"><br>

    <div style="margin: 40px 0px 50px 100px;">
        <input type="submit" value="수정" class="modifyBtn">
        <input type="button" value="삭제" class="deleteBtn">
        <input type="button" value="목록" class="backBtn"
               onclick="location.href='/adminManage/stdManage/list?page=${page}'">
    </div>

</div>


<script>

    const statusArr = {
        1: '수강예정',
        2: '수강중',
        3: '수료'
    }

    let statusInfo = "${stdDto.status}"; //string


    $(document).ready(function () {


        $(".deleteBtn").on("click", function () {
            if (!confirm("정말로 삭제하시겠습니까?")) return;

            const form = document.createElement('form');
            form.setAttribute('method', 'post');
            form.setAttribute('action', '/adminManage/stdManage/delete?mebrNo=${stdDto.mebrNo}&page=${page}');
            document.body.appendChild(form);
            form.submit();

        });

        $(".modifyBtn").on("click", function () {

            let isReadonly = $("input[name=gisu]").attr('readonly');

            if (isReadonly == 'readonly') {
                $("#infoTitle").html("학생 정보 수정");
                $("input[name=gisu]").attr('readonly', false);
                $("input[name=gisu]").focus();
                $("input[name=etc]").attr('readonly', false);
                $("input[name=gisu]").css("border-bottom", "1px solid red");
                $("input[name=etc]").css("border-bottom", "1px solid red");

                $.each(statusArr, function (key, value) {
                    //상태와 value가 같지 않다면 옵션 추가
                    if(statusInfo !== value){
                        $('#status').append($("<option></option>").attr("value", key).text(value))
                    }
                });

            } else {
                const form = document.createElement('form');
                form.setAttribute('method', 'post');
                form.setAttribute('action', '/adminManage/stdManage/modify?page=${page}&mebrNo=${stdDto.mebrNo}');

                var gisu = document.getElementById('gisu');
                var status = document.getElementById('status');
                var etc = document.getElementById('etc');
                var mebrNo = document.getElementById('mebrNo');

                form.appendChild(gisu);
                form.appendChild(status);
                form.appendChild(etc);
                form.appendChild(mebrNo);
                console.log(form)
                document.body.appendChild(form);
                form.submit();
            }


        })//수정


    })

</script>
</body>
</html>
