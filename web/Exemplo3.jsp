<%-- 
    Document   : Exemplo3
    Created on : 17/09/2020, 20:28:24
    Author     : Gerson
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Exemplo 3</title>
    </head>
    <body>
        <c:catch var="ex">
            <c:set var="x" value="12"/> 
            <c:set var="y" value=""/> 
            <c:out value="${x/y}"/> 
        </c:catch>
        <c:if test="${ex!=null}">
            <p>Erro ao dividir<br/> ${ex}</p>
        </c:if>
    </body>
</html>
