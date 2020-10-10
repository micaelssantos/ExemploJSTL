<%-- 
    Document   : Exemplo2
    Created on : 17/09/2020, 19:57:46
    Author     : Gerson
--%>
<%@page import="java.util.ArrayList"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Exemplo 2</title>
    </head>
    <body>
        <%
            ArrayList<String> nomes = new ArrayList<String>();
            nomes.add("Gerson");
            nomes.add("Anna");
            nomes.add("Gerson");
            nomes.add("Sandra");
            nomes.add("José");
            nomes.add("Gerson");
            pageContext.setAttribute("nomes", nomes);
        %>
        <c:set var="cont" value="0"/>
        <c:set var="cont2" value="0"/>
        <c:forEach var="nome" items="${nomes}">
            <c:choose>
                <c:when test="${nome=='Gerson'}">
                    <c:set var="cont" value="${cont=cont+1}"/>
                </c:when>
                <c:otherwise>
                    <c:set var="cont2" value="${cont2=cont2+1}"/>
                </c:otherwise>
            </c:choose>
        </c:forEach>
        <p> Quantidade de Gerson ${cont}</p>
        <p> Quantidade de Outros ${cont2}</p>
    </body>
</html>
