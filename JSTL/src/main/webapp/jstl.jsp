<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	 
<c:out value="${'welcome'}"  />

<c:set var="Income" value="10">

</c:set>
<c:out value="${Income}" />  
<c:set var="Income1" scope="session" value="${4000*4}" />  
<c:out value="${Income1}" />  

<c:set var="total" scope="session" value="${54124 }" />
<c:out value="${total }" />
<c:remove var="total" />
<p>after remove</p>
<c:out value="${total }" />
<c:set var="age" scope="session" value="${35 }" />

<c:if test="${age>18 }">
<p>eligible for vote<c:out value="${age}" />
			</p>
</c:if>
<c:set var="money" scope="session" value="${4000*8 }" />
<c:out value="${money }" />
<c:choose>
<c:when test="${money>35000}">
money greater than 35000
</c:when>
<c:when test="${money<30000}">
money less than 30000
</c:when>

<c:otherwise>
money is modarate
</c:otherwise>

</c:choose>
<c:set value="11" var="num" />
<c:choose>
<c:when test="${num%2==0}">
<c:out value="${num} is even numbeR"></c:out>
</c:when>
<c:otherwise>
<c:out value="${num} is odd number"></c:out>
</c:otherwise>

</c:choose>
<c:forEach var="j" begin="1" end="3">

  item<c:out value="${j}"/>
</c:forEach>
<c:forTokens items="sriman-jvava-iq-welcome" delims="-" var="name">
<c:out value="${name}"/>
</c:forTokens>
<c:url value="/index1.jsp" var="completeURL">  
 <c:param name="trackingId" value="786"/>  
 <c:param name="user" value="Nakul"/>  
</c:url>  
${completeURL}  
<c:set var="Link" value="1"/>
<c:if test="${Link>0 }">
<c:redirect url="Edit.jsp"/>
</c:if>



</pre>
</body>
</html>