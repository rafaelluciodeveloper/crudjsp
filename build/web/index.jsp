<%-- 
    Document   : index
    Created on : 16/10/2014, 15:35:37
    Author     : rafaellucio
--%>

<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CRUD JSP</title>
    </head>
    <body>
        <h1>Lista Clientes</h1>
        <p>
            <a href="adicionar.jsp">Adicionar</a>
        </p>
        <c:catch var="ex">
            <sql:setDataSource var="conexao"
                               driver="com.mysql.jdbc.Driver"
                               url="jdbc:mysql://127.0.0.1:3306/test_jstl"
                               user="root"
                               password="r142512" />
            <sql:query var="resultado" dataSource="${conexao}">
                select * from cliente
            </sql:query>
        </c:catch>
        <c:choose>
            <c:when test="${ex != null}">
                <h3>Ocorreu um Erro ${ex.message}</h
            </c:when>
            <c:otherwise>
                <c:choose>
                    <c:when test="${resultado.rowCount>0}">
                        <table border='1' >
                            <tr>
                                <td>Id</td>
                                <td>Nome</td>
                                <td>Telefone</td>
                                <td>Editar</td>
                                <td>Excluir</td>
                            </tr>
                            <c:forEach var="cliente" items="${resultado.rowsByIndex}">
                                <tr>
                                    <td>${cliente[0]}</td>
                                    <td>${cliente[1]}</td>
                                    <td>${cliente[2]}</td>
                                    <td><a href="editar.jsp?id=${cliente[0]}">Editar</a></td>
                                    <td><a href="excluir.jsp?id=${cliente[0]}">Excluir</a></td>
                                </tr>
                            </c:forEach>
                        </table>
                    </c:when>
                </c:choose>
            </c:otherwise>    
        </c:choose>
    </body>
</html>
