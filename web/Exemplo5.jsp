<%-- 
    Document   : Exemplo5
    Created on : 17/09/2020, 21:12:00
    Author     : Gerson
--%>
<%@taglib  uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Exemplo 5</title>
    </head>
    <body>
        <c:set var="nome1" value="Gerson Risso"/>
        ${nome1}<br/>
        <c:set var="nome2" value="${fn:split(nome1,' ')}"/>
        <c:set var="nome3" value="${fn:join(nome2,'<br>')}"/>
        ${nome3}
    </body>
</html>
