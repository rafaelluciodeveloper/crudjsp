<%-- 
    Document   : Atualizar
    Created on : 16/10/2014, 15:58:06
    Author     : rafaellucio
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
            <sql:query var="resultado" dataSource="${conexao}">
                select * from cliente where id=${param.id}
            </sql:query>
        </c:catch>
        <form action="atualizar.jsp" method="post">
            <table>
                <c:choose>
                    <c:when test="${ex != null}">
                        <h3>Ocoreu Um Erro</h3>
                    </c:when>
                    <c:otherwise>
                        <c:forEach var="cliente" items="${resultado.rowsByIndex}">
                            <tr>
                                <td>
                                    <label>Codigo:</label>
                                </td>
                                <td>
                                    <input type="text" name="id" value="${cliente[0]}" readonly />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <label>Nome:</label>
                                </td>
                                <td>
                                    <input type="text" name="nome" value="${cliente[1]}"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <label>Telefone:</label>
                                </td>
                                <td>
                                    <input type="text" name="telefone" value="${cliente[2]}"/>

                                </td>
                                <td>
                                    <input type="submit" value="Atualizar" />
                                </td>
                            </tr>

                        </c:forEach>
                    </c:otherwise>
                </c:choose>
            </table>
        </form>
        <p>
            <a href="index.jsp">Voltar</a>
        </p>
    </body>
</html>
