<%-- 
    Document   : adicionar
    Created on : 16/10/2014, 15:48:22
    Author     : rafaellucio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Adicionar</title>
    </head>
    <body>
        <h1>Adicionar Novo</h1>
        <form action="salvar.jsp" method="post">
            <table>
                <tr>
                    <td>
                        <label>Nome:</label>
                    </td>
                    <td>
                        <input type="text" name="nome"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>Telefone:</label>
                    </td>
                    <td>
                        <input type="text" name="telefone"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <input type="submit" value="Enviar" />
                    </td>
                </tr>
            </table>
        </form>
        <p>
            <a href="index.jsp">Voltar</a>
        </p>
    </body>
</html>
