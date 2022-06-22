<%@page import="java.util.Arrays"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
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
<h3>jstl2_foreach</h3>
<%
List<String> nameList=new ArrayList<String>(Arrays.asList("이름4","이름5","이름6"));
request.setAttribute("name3", nameList);
List<String> nameList2=new ArrayList<String>(Arrays.asList("이름7","이름8","이름9"));
request.setAttribute("name4", nameList);
%>

<%-- <c:forEach var="name" items="이름1,이름2,이름3" >
${name } <br />

</c:forEach> --%>
<%-- <c:forEach var="name" items="${name3 }" >
${name } <br />

</c:forEach> --%>
<%-- <c:forEach var="name" items="${name3 }" varStatus="st">
 <br /> ${st.count }: <c:out value="${name }"/>

</c:forEach> --%>
<%-- <c:forEach var="list3" items="${name3 }" varStatus="st">
 <br /> ${list3} : ${name4[st.index] }

</c:forEach> --%>
<%-- <c:forEach begin="1" end="10" var="i" varStatus="st">
${i } <br />
</c:forEach> --%>

<hr /> if <br />

<%-- <c:forEach begin="1" end="10" var="i" varStatus="st">
${i }
<c:if test="${not st.last }">,</c:if> 마지막이 아닐때만 , 를 사용하게 하는 문장
</c:forEach> --%>

<c:set value="0" var="n"/>
<c:forEach begin="1" end="10" var="i" varStatus="st">
${i }
	<c:set value="${n+i }" var="n" />
<c:if test="${not st.last }">,</c:if> 
</c:forEach>
sum=${n }  <!-- sum을 구하는 forEach 문 -->
<br />
<hr />

<c:set value="0" var="n" scope="application"/>
<c:forEach begin="1" end="10" var="i" varStatus="st">
${i }
	<c:set value="${n+i }" var="n" />
<c:if test="${not st.last }">,</c:if> 
</c:forEach>
sum=${n } <!-- scope="application" 위의 문장이 살아 있는 상태로 추가로 이어서 합을 구함 -->


</body>
</html>