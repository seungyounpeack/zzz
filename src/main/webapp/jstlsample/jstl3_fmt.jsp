<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

number :  <fmt :formatNumber value="12345678" type="number" > <br />
currency : <fmt:formatNumber value="12345678" type="currency"  currencySymbol="￦">
percent : <fmt:formatNumber value="12345678" type="percent" > <br />
pettern = ".0" : <fmt:formatNumber value="12345678" pettern="0" > <br />

<c:
</body>
</html>