<%-- 
    Document   : atualizar
    Created on : 16/10/2014, 16:08:34
    Author     : rafaellucio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <c:catch var="ex">
        <sql:setDataSource var="conexao"
                           driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost:3306/test_jstl"
                           user="root"
                           password="r142512" />
        <sql:update dataSource="${conexao}">
            update cliente set nome='${param.nome}',telefone='${param.telefone}' where id='${param.id}'
        </sql:update>
    </c:catch>
    <c:choose>
        <c:when test="${ex != null}">
            <h3>Ocorreu um Erro</h3>
        </c:when>
        <c:otherwise>
            <h1>Dados Atualizados com Sucesso</h1>
        </c:otherwise>
    </c:choose>
    <p>
        <a href="index.jsp">Voltar</a>
    </p>
</body>
</html>
