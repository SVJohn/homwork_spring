<%--
  Created by IntelliJ IDEA.
  User: John
  Date: 01.04.16
  Time: 17:59
  To change this template use File | Settings | File Templates.
--%>

<%@ page language="java" contentType="text/html; charset=utf8"
         pageEncoding="utf8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf8">
    <title><spring:message code="site.title"/></title>
    <link href="<c:url value="/css/page_login.css" />" rel="stylesheet">
</head>
<body>

<div id="b-error-message" class="b-error-message box">
    <c:if test="${not empty param.error}">
        <font color="red"> <h>Login errors </h>
            : ${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message} </font>
    </c:if>
</div>

    <div id = "b-login-page" class = "b-login-page box">
        <%--<div id="b-logo" class = "b-logo">--%>
            <%--<a href="<c:url value="/" />">--%>
                <%--Data:--%>
            <%--</a>--%>
        <%--</div>--%>

    <%--в spring security version 3: value="/j_spring_security_check", j_ перед username и password в полях--%>

        <form method="post" action="<c:url value="/login" />">
            <spring:message code="login" var="login"/>
            <spring:message code="password" var="password"/>
            <spring:message code="button.reset" var="button_reset"/>
            <spring:message code="button.sing_in" var="button_sing_in"/>

        <div class="b-input b-login">
            <div align="right">${login}: </div>
            <div><input type="text" id = "username" name="username" placeholder="${login}"></div>
        </div>
        <div class="b-input b-pass">

            <div align="right">${password}:</div>
            <div><input type="password" id="password" name="password" placeholder="${password}"></div>
        </div>
        <div class = "b-input b-radio" >
            <div >remember me </div>
            <div><input type="checkbox" id ="_spring_security_remember_me" name="_spring_security_remember_me" ></div>
        </div>
        <div class = "b-input b-button">
            <input type="reset" value="${button_reset}" class = "button">
            <input type="submit" value="${button_sing_in}" class = "button">
        </div>
        </form>
    </div>

</body>
</html>
