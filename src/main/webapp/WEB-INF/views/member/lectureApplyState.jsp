<%--
  Created by IntelliJ IDEA.
  User: soheepark
  Date: 2023/12/20
  Time: 12:32 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.jscd.app.order.dto.StodDTO" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- 탭 아이콘 & 글자 지정 -->
    <link rel="icon" href="/img/mainlogo.png"/>
    <link rel="apple-touch-icon" href="/img/mainlogo.png"/>
    <title>정석코딩 | 강의 신청 현황</title>

    <!-- css 파일 불러오기 -->
    <link rel="stylesheet" href="/css/reset.css" type="text/css"/>
    <link rel="stylesheet" href="/css/lectureApplyState.css" type="text/css"/>

    <!--java script 파일 불러오기-->
    <script type="text/javascript" src="/js/orderList.js"></script>
    <script type="text/javascript" src="/js/lectureApplyState.js"></script>


    <%--폰트어썸 라이브러리 불러오기--%>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
          integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>

</head>
<body>
<header>
    <jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>
</header>
<div id="root">
    <main id="main_orderlist">
        <section id="section_orderlist">
            <section id="section_orderlist_title">
                <div>
                    <h2>내 강의 신청 현황</h2>
                </div>
            </section>
            <c:forEach var="lectureApply" items="${list}">
                <c:if test="${lectureApply.status eq 'paid' or lectureApply.status eq 'notPaid'}">
                    <section id="section_orderlist_contents">
                        <div id="orderlist_content">
                            <div id="orderlist_content-title"
                                 class="<c:choose>
                    <c:when test="${lectureApply.status eq 'paid'}">paid</c:when>
                    <c:when test="${lectureApply.status eq 'notPaid'}">notPaid</c:when>
                    <c:when test="${lectureApply.status eq 'cancel'}">cancel</c:when>
                </c:choose>">
                                <div>
                                    <c:choose>
                                        <%--                          1. ${order.status} == 'paid' : 결제 완료--%>
                                        <c:when test="${lectureApply.status eq 'paid'}">결제 완료</c:when>
                                        <%--                          2.  ${order.status} == 'notPaid' : 결제 대기중--%>
                                        <c:when test="${lectureApply.status eq 'notPaid'}">결제 대기중</c:when>
                                        <%--                          3.  ${order.status} == 'cancel' : 결제 취소--%>
                                        <c:when test="${lectureApply.status eq 'cancel'}">결제 취소</c:when>
                                        <%--                          3.  나머지 값 : 해당 값 그대로 표시--%>
                                        <c:otherwise>${lectureApply.status}</c:otherwise>
                                    </c:choose>
                                </div>
                            </div>
                            <div id="orderlist_content-info">
                                <div class="display-none">
                                    <table id="order_date">
                                        <tr>
                                            <td class="order_date_title">주문일시</td>
                                            <td>${lectureApply.regDate}</td>
                                        </tr>
                                        <tr>
                                            <td class="order_date_title">주문번호</td>
                                            <td>${lectureApply.odNo}</td>
                                        </tr>
                                    </table>
                                </div>
                                <div id="order_content">
                                    <div id="order_state_photo">
                                        <div>
                                            <c:choose>
                                                <%--                          1. ${order.status} == 'paid' : 결제 완료--%>
                                                <c:when test="${lectureApply.status eq 'paid'}">
                                                    <div id="img_paid_hover">
                                                        <img class="pay_img" id="img_paid" alt="payment status is paid"
                                                             src="<c:url value="/img/paid.png"/>">
                                                    </div>
                                                </c:when>
                                                <%--                          2.  ${order.status} == 'notPaid' : 결제 대기중--%>
                                                <c:when test="${lectureApply.status eq 'notPaid'}">
                                                    <img class="pay_img" id="img_not-paid"
                                                         alt="payment status is not paid"
                                                         src="<c:url value="/img/notPaid.png"/>">
                                                </c:when>
                                                <%--                          3.  ${order.status} == 'cancel' : 결제 취소--%>
                                                <c:when test="${lectureApply.status eq 'cancel'}">
                                                    <img class="pay_img" id="img_pay-cancel"
                                                         alt="payment status is cancel"
                                                         src="<c:url value="/img/pay_cancel.png"/>">
                                                </c:when>
                                                <%--                          3.  나머지 값 : 해당 값 그대로 표시--%>
                                                <c:otherwise>${lectureApply.status}</c:otherwise>
                                            </c:choose>
                                        </div>
                                    </div>
                                    <div id="orderlist_info">
                                        <div>
                                            <div id="orderlist_lecture-title">
                                                <h2>${lectureApply.title}</h2>
                                            </div>
                                            <div id="orderlist_lecture-date">
                                                <table>
                                                    <tr>
                                                        <td>시작일</td>
                                                        <td>${lectureApply.startDate}</td>
                                                    </tr>
                                                    <tr>
                                                        <td>종료일</td>
                                                        <td>${lectureApply.endDate}</td>
                                                    </tr>
                                                </table>
                                            </div>
                                            <div id="orderlist_lecture-price">
                                                <div id="orderlist_lecture-price_num">
                                                    <fmt:formatNumber type="number" value="${lectureApply.lastPrice}"
                                                                      pattern="#,##0"/>
                                                </div>
                                                <div id="orderlist_lecture-price_unit">원</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div id="orderlist_content-btns">
                                <div>
                                    <c:choose>
                                        <c:when test="${lectureApply.courseCode eq 2}">
                                            <input class="orderlist_cancel_btn approval" type="button" value="승인">
                                        </c:when>
                                        <c:otherwise>
                                            <c:choose>
                                                <c:when test="${lectureApply.approvalYN eq '승인'}">
                                                    <input class="orderlist_cancel_btn approval" type="button"
                                                           value="${lectureApply.approvalYN}">
                                                </c:when>
                                                <c:when test="${lectureApply.approvalYN eq '미승인'}">
                                                    <input class="orderlist_cancel_btn disapproval" type="button"
                                                           value="${lectureApply.approvalYN}">
                                                </c:when>
                                                <c:otherwise>
                                                    <input class="orderlist_cancel_btn others" type="button"
                                                           value="${lectureApply.approvalYN}">
                                                </c:otherwise>
                                            </c:choose>
                                        </c:otherwise>
                                    </c:choose>
                                </div>
                                <div>
                                    <input class="goDetail" id="orderlist_goDetail_${lectureApply.registCode}"
                                           type="button" value="결제하기" data-registCode="${lectureApply.registCode}"
                                           data-status="${lectureApply.status}"
                                           data-approval="${lectureApply.approvalYN}">
                                </div>
                            </div>
                        </div>
                    </section>
                </c:if>
            </c:forEach>
            <section id="orderlist_paging">
                <div id="section_paging">
                    <div id="paging_per">
                        <div id="paging_per_left_arrow">
                            <input class="order_btns" type="button" value="">
                        </div>
                        <div id="pagination_parent">
                            <div class="pagination">
                                <c:forEach begin="1" end="${totalPages}" var="i">
                                    <%--                                    <a href="<c:url value='/order/orderList?page=${i}'/>">${i}</a>--%>
                                    <a href="<c:url value='/member/lectureApplyState?page=${i}'/>"
                                       <c:if test="${i eq currentPage}">class="active"</c:if>>${i}</a>
                                </c:forEach>
                            </div>
                        </div>
                        <div id="paging_per_right_arrow">
                            <input class="order_btns" type="button" value="">
                        </div>
                    </div>
                    <div id="paging_group">
                        <div id="paging_group_fst">
                            <input class="order_btns" type="button" value="   처음">
                        </div>
                        <div id="paging_group_end">
                            <input class="order_btns" type="button" value="마지막   ">
                        </div>
                    </div>
                </div>
            </section>
        </section>

        <aside id="aside_orderlist_info">
            <section id="orderlist_member_info">
                <h2 class="display-none">회원 정보</h2>
                <div id="orderlist_member_contents">
                    <div id="member_img">
                        <img id="user_profile_img" alt="user profile photo"
                             src="<c:url value="/img/orderlist_user.png"/>">
                    </div>
                    <div id="member_content">
                        <div id="member_name">
                            <span id="member_name_var">${memberDto.name}</span>
                            <span>님</span>
                        </div>
                        <div id="member_id">${memberDto.id}</div>
                    </div>
                </div>
            </section>
            <section id="orderlist_slr-account-info">
                <h2 class="display-none">판매자 계좌 정보</h2>
                <div class="orderlist_aside" id="slr-account-info">
                    <div id="slr-account-header">
                        <div id="slr-account-title">
                            <span>판매자 계좌 정보</span>
                        </div>
                    </div>
                    <div id="slr-account-content">
                        <table id="account-content_text">
                            <tr class="account-elements" id="slrname">
                                <td>예금주</td>
                                <td>${companyInfoDto.slrName}</td>
                            </tr>
                            <tr class="account-elements" id="actname">
                                <td>입금 은행</td>
                                <td>${companyInfoDto.actName}</td>
                            </tr>
                            <tr class="account-elements" id="actnum">
                                <td>계좌번호</td>
                                <td id="copy_slrActNum">${companyInfoDto.actNum}</td>
                            </tr>
                        </table>
                        <div class="AcnCopyBtn">
                            <input type="button" class="order_btns" id="orderlist_copyBtn" value="계좌번호 복사">
                        </div>

                    </div>
                    <div id="slr-account-notice">
                        <div>
                            <p>* <span>강의 시작 하루 전 23:30</span>까지 미입금 시<br>&nbsp;&nbsp;주문이 취소됩니다</p>
                        </div>
                    </div>
                </div>
            </section>
            <section id="orderlist_contact">
                <h2 class="display-none">문의하기</h2>
                <div class="orderlist_aside" id="contact">
                    <div id="contact-header">
                        <div id="contact-header-title">
                            <span>문의하기</span>
                        </div>
                    </div>
                </div>
                <div id="contact-btn">
                    <div>
                        <input class="order_btns" id="orderlist_goQna" type="button"
                               value="&nbsp;&nbsp;&nbsp;질문&답변  바로가기">
                    </div>
                    <div>
                        <input class="order_btns" id="goFaq" type="button" value="&nbsp;&nbsp;&nbsp;FAQ  바로가기">
                    </div>
                    <div>
                        <h2 class="display-none" id="slrMail_copy">${companyInfoDto.slrMail}</h2>
                        <input class="order_btns" id="copyMail" type="button" value="&nbsp;&nbsp;&nbsp;1 : 1  메일 문의">
                    </div>
                </div>
            </section>
        </aside>
    </main>
</div>
<footer>
    <jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>
</footer>
</body>


</html>

