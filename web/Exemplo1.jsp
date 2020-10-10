<%-- 
    Document   : Exemplo1
    Created on : 17/09/2020, 19:48:40
    Author     : Gerson
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Exemplo 1</title>
    </head>
    <body>
        <c:forEach var="a" begin="1" end="20" step="1">
            ${21-a}<br/>
        </c:forEach>
    </body>
</html>
