<%--
  Created by IntelliJ IDEA.
  User: jskang
  Date: 12/18/23
  Time: 14:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="<c:url value="/css/reset.css"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="/css/jscdReset.css"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="/css/admin/header.css"/>">
    <title>Title</title>
</head>
<body>
<div id="adminHeader">
    <div id="adminLogoBox">
        <a href="<c:url value='/admin/home'/>"><img src="<c:url value="/img/adminLogo.png"/>"></a>
        <p>관리자 시스템</p>
    </div>
    <div id="adminLoginBox">
        <ul>
            <input type="button" value="로그아웃" class="deleteBtn" onClick="location.href='<c:url value='/admin/logout'/>'">
            <input type="button" value="마이페이지" class="registeBtn" onClick="location.href='<c:url value='/admin/read'/>'">
        </ul>
    </div>
</div>
</body>
</html>
