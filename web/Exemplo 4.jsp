<%-- 
    Document   : Exemplo 4
    Created on : 17/09/2020, 20:44:27
    Author     : Gerson
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="carro.Carro"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Exemplo 4</title>
    </head>
    <body>
         <%
           ArrayList<Carro> carros=new ArrayList<Carro>();
           Carro c1=new Carro("Fiat","Abóbora",2020);           
           Carro c2=new Carro("Ford","Azul",2011);           
           
           carros.add(c1);
           carros.add(c2);
           pageContext.setAttribute("carros", carros);
         %>
         
         <c:forEach var="carro" items="${carros}">
            ${carro.marca}<br/>
            ${carro.cor}<br/>
            ${carro.ano}<br/>
         </c:forEach>
         
    </body>
</html>
